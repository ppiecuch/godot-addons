#==============================================================================#
# Copyright (c) 2015 Franklin Sobrinho.                                        #
#                                                                              #
# Permission is hereby granted, free of charge, to any person obtaining        #
# a copy of this software and associated documentation files (the "Software"), #
# to deal in the Software without restriction, including without               #
# limitation the rights to use, copy, modify, merge, publish,                  #
# distribute, sublicense, and/or sell copies of the Software, and to           #
# permit persons to whom the Software is furnished to do so, subject to        #
# the following conditions:                                                    #
#                                                                              #
# The above copyright notice and this permission notice shall be               #
# included in all copies or substantial portions of the Software.              #
#                                                                              #
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,              #
# EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF           #
# MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.       #
# IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY         #
# CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,         #
# TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE            #
# SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.                       #
#==============================================================================#

extends HBoxContainer

const EDITOR_ICON:String = "res://addons/add_primitives/src/icon_mesh_instance_add.svg"

class DirectoryUtilities extends Directory:
    
    # Get plugin folder path
    func get_data_dir(extra_file = ''):
        return "res://addons/add_primitives/src".plus_file(extra_file)
        
    func get_file_list(path, extension = ''):
        var list = []
        
        if dir_exists(path):
            open(path)
            
            list_dir_begin()
            
            var next = get_next()
            
            while next:
                if not current_is_dir():
                    if extension != '' and next.get_extension() == extension:
                        list.push_back(next)
                        
                    else:
                        list.push_back(next)
                        
                next = get_next()
                
            list_dir_end()
            
        return list
        
# End DirectoryUtilities

var current_module = ""

var plugin

var popup_menu
var mesh_dialog

var builder
var mesh_instance

var primitives = {}
var modules = {}

# Utilites
var Dir = DirectoryUtilities.new()

static func safe_call(object, method, args = []):
    if object and object.has_method(method):
        return object.callv(method, args)
        
    return null
    
func set_state(state):
    mesh_dialog.set_state(state)
    
func get_state(state):
    mesh_dialog.get_state(state)
    
func clear_state():
    mesh_dialog.clear_state()
    
func modify_mesh():
    var new_mesh = builder.get_mesh().duplicate()
    mesh_instance.set_mesh(new_mesh)
    
    var modifiers = mesh_dialog.get_editor("modifiers").get_modifiers()
    
    for mod in modifiers:
        if not mod.is_enabled():
            continue
            
        mod.set_mesh(new_mesh)
        mod.set_aabb(mesh_instance.get_aabb())
        
        mod.modify()
        
        mod.clear()
        
func _update_mesh():
    var start = OS.get_ticks_msec()
    
    builder.update()
    modify_mesh()
    
    _display_info(start)
    
func _modify_mesh():
    var start = OS.get_ticks_msec()
    
    modify_mesh()
    
    _display_info(start)
    
func _display_info(start = 0):
    var exec_time = OS.get_ticks_msec() - start
    
    var mesh = mesh_instance.get_mesh()
    
    var verts = 0
    var tris = 0
    
    for i in range(mesh.get_surface_count()):
        var surf_v = mesh.surface_get_array_len(i)
        
        verts += surf_v
        
        var surf_idx = mesh.surface_get_array_index_len(i)
        
        if surf_idx == ArrayMesh.NO_INDEX_ARRAY:
            surf_idx = surf_v
            
        tris += surf_idx/3
        
    mesh_dialog.display_text("Verts: %d | Triangles: %d\nGeneration time: %d ms" % [verts, tris, exec_time])
    
func _popup_signal(index, menu):
    var command = menu.get_item_text(index)
    
    if command == 'Edit Primitive':
        _edit_primitive()
        
    else:
        _create_primitive(command)
        
func _load_modules():
    modules.clear()
    
    var path = Dir.get_data_dir('modules')
    var mods = Dir.get_file_list(path, 'gd')
    
    for m in mods:
        var module = load(path.plus_file(m))
        
        modules[module.get_name()] = module.new(plugin)
        
func _update_menu():
    builder = null
    
    popup_menu.clear()
    primitives.clear()
    
    for c in popup_menu.get_children():
        if c.is_class("PopupMenu"):
            c.free()
            
    var submenus = {}
    
    var path = Dir.get_data_dir('primitives')
    
    var scripts = Dir.get_file_list(path, 'gd')
    scripts.sort()
    
    for f_name in scripts:
        var script = load(path.plus_file(f_name))
        var name = script.get_name()
        
        if name == '':
            continue
            
        var container = script.get_container()
        
        if container:
            container = container.replace(' ', '_').to_lower()
            
            if not submenus.has(container):
                submenus[container] = []
                
            submenus[container].push_back(name)
            
        else:
            popup_menu.add_item(name)
            
        primitives[name] = script
        
    if not submenus.empty():
        popup_menu.add_separator()
        
        for sub in submenus:
            var submenu = PopupMenu.new()
            submenu.set_name(sub)
            popup_menu.add_child(submenu)
            submenu.connect("id_pressed", self, "_popup_signal", [submenu])
            
            popup_menu.add_submenu_item(sub.capitalize(), sub)
            
            for name in submenus[sub]:
                submenu.add_item(name)
                
    if not modules.empty():
        popup_menu.add_separator()
        
        for m in modules:
            popup_menu.add_item(m)
            
    popup_menu.add_separator()
    popup_menu.add_icon_item(get_icon('Edit', 'EditorIcons'), 'Edit Primitive', -1, KEY_MASK_SHIFT + KEY_E)
    
    _set_edit_disabled(true)
    
func _create_primitive(name):
    var node = plugin.get_selected()
    var edited_scene = get_tree().get_edited_scene_root()
    
    # There's no node selected, and the scene is not empty
    if not node and edited_scene:
        return
        
    mesh_instance = MeshInstance.new()
    
    var ur = plugin.get_undo_redo()
    
    ur.create_action("Create " + name)
    
    if edited_scene:
        ur.add_do_method(node, "add_child", mesh_instance)
        ur.add_do_method(mesh_instance, "set_owner", edited_scene)
        ur.add_do_reference(mesh_instance)
        
        ur.add_undo_method(node, "remove_child", mesh_instance)
        
    else:
        var editor = plugin.get_parent()
        
        ur.add_do_method(editor, "set_edited_scene", mesh_instance)
        ur.add_do_reference(mesh_instance)
        
        ur.add_undo_method(editor, "set_edited_scene", Object(null))
        
    ur.commit_action()
    
    if current_module:
        safe_call(modules[current_module], "clear")
        
        current_module = ''
        
    if modules.has(name):
        current_module = name
        
        safe_call(modules[name], "create", [mesh_instance])
        
        _set_edit_disabled(mesh_instance == null)
        
        return
        
    mesh_instance.set_name(name)
    
    var start = OS.get_ticks_msec()
    
    builder = primitives[name].new()
    builder.update()
    
    mesh_instance.set_mesh(builder.get_mesh())
    
    _display_info(start)
    
    if builder.has_method('mesh_parameters'):
        mesh_dialog.edit(mesh_instance, builder)
        mesh_dialog.show_dialog()
        
        _set_edit_disabled(false)
        
func _set_edit_disabled(disable):
    set_process_unhandled_key_input(not disable)
    
    var count = popup_menu.get_item_count()
    
    if not count:
        return
        
    popup_menu.set_item_disabled(count - 1, disable)
    
func _edit_primitive():
    if not mesh_instance:
        return
        
    if current_module:
        safe_call(modules[current_module], "edit_primitive")
        
    elif mesh_dialog.is_hidden():
        mesh_dialog.show_dialog()
        
func _unhandled_key_input(key_event):
    if key_event.pressed and not key_event.echo:
        if (key_event.scancode == KEY_ESCAPE and
            mesh_dialog.is_visible() and
            not get_viewport().gui_has_modal_stack()):
            
            mesh_dialog.hide()
            
            accept_event()
            
        if key_event.scancode == KEY_E and key_event.shift:
            _edit_primitive()
            
            accept_event()
            
func _node_removed(node):
    if node == mesh_instance:
        _set_edit_disabled(true)
        
        if current_module:
            safe_call(modules[current_module], "clear")
            safe_call(modules[current_module], "hide_dialog")
            
            current_module = ""
            
        elif mesh_dialog.is_visible():
            mesh_dialog.hide()
            
        mesh_instance = null
        
func _visibility_changed():
    if is_visible():
        _set_edit_disabled(mesh_instance == null)
        
    else:
        _set_edit_disabled(true)
        
        if current_module:
            safe_call(modules[current_module], "hide_dialog")
            
        elif mesh_dialog.is_visible():
            mesh_dialog.hide()
            
func _enter_tree():
    _load_modules()
    _update_menu()
    
    mesh_dialog = preload("MeshDialog.gd").new(plugin)
    plugin.get_editor_interface().get_base_control().add_child(mesh_dialog)
    
    mesh_dialog.connect_editor("parameters", self, "_update_mesh")
    mesh_dialog.connect_editor("modifiers", self, "_modify_mesh")
    
    get_tree().connect("node_removed", self, "_node_removed")
    
func _exit_tree():
    builder = null
    
    popup_menu.clear()
    mesh_dialog.clear()
    
    primitives.clear()
    modules.clear()
    
    get_tree().disconnect("node_removed", self, "_node_removed")
    
func _init(plugin):
    self.plugin = plugin
    
    add_child( VSeparator.new() )
    
    var spatial_menu = MenuButton.new()
    spatial_menu.set_button_icon(Editor.import(EDITOR_ICON))
    spatial_menu.set_tooltip("Add New Primitive")
    add_child(spatial_menu)
    
    popup_menu = spatial_menu.get_popup()
    popup_menu.connect("id_pressed", self, "_popup_signal", [popup_menu])
    
    connect("visibility_changed", self, "_visibility_changed")
    
