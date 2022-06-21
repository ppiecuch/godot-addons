tool
extends EditorPlugin
class_name Addons

# Attempts to call EditorInspectorPlugin 'parse' methods on every
# object that appears in an EditorInspector anywhere. Enables
# objects to define their own EditorInspector GUI logic without
# the need for additional plugins.
class DelegationInspectorPlugin extends EditorInspectorPlugin:

    var obj_stack: Array

    #warning-ignore:unused_argument
    func can_handle(p_object: Object) -> bool:
        return true

    func parse_begin(p_object: Object) -> void:
        if p_object:
            obj_stack.push_back(p_object)
            if p_object.has_method("_parse_begin"):
                p_object._parse_begin(self)

    func parse_category(p_object: Object, p_category: String) -> void:
        if p_object:
            if p_object.has_method("_parse_category"):
                p_object._parse_category(self, p_category)

    func parse_property(p_object: Object, p_type: int, p_path: String, p_hint: int, p_hint_text: String, p_usage: int) -> bool:
        if p_object:
            if p_object.has_method("_parse_property"):
                var pinfo = PropertyInfo.new(p_path, p_type, p_hint, p_hint_text, p_usage)
                return p_object._parse_property(self, pinfo)
        return false

    func parse_end() -> void:
        var obj = obj_stack.pop_back()
        if obj.has_method("_parse_end"):
            obj._parse_end(self)


# A collection of classes and factory methods for generating
# Controls oriented towards editing data. Useful for modifying
# the EditorInspector or generating your own in-game data-editing
# tools.
class DropdownAppender extends HBoxContainer:

    func get_button() -> ToolButton:
        return get_node("ToolButton") as ToolButton

    func get_dropdown() -> OptionButton:
        return get_node("Dropdown") as OptionButton

    func get_selected_label() -> String:
        var dropdown := get_dropdown()
        var index := dropdown.get_selected_id()
        return dropdown.get_item_text(index)

    func get_selected_meta():
        return get_dropdown().get_selected_metadata()


class InspectorControls:

    const ADD_ICON = preload("res://addons/_autoload/data/icon_add.svg")

    # Instantiates a Label. If align is not set the dafault ALIGN_LEFT will be used
    static func new_label(p_label: String, p_align: int = Label.ALIGN_LEFT) -> Label:
        var label = Label.new()
        label.text = p_label
        label.align = p_align
        return label

    # Instantiates an empty control used to insert space between properties.
    static func new_space(p_size: Vector2, p_horizontal_flag: int = Control.SIZE_EXPAND_FILL, p_vertical_flag: int = Control.SIZE_EXPAND_FILL) -> Control:
        var control = Control.new()
        control.size_flags_horizontal = p_horizontal_flag
        control.size_flags_vertical = p_vertical_flag
        control.rect_min_size = p_size
        return control

    # Instantiates a Button. If toggle mode is set, p_object/p_callback will connect to its "toggled" signal. Else, "pressed".
    static func new_button(p_label: String, p_toggle_mode: bool = false, p_object: Object = null, p_callback: String = "") -> Button:
        var button = Button.new()
        button.text = p_label
        button.name = "Button"
        button.toggle_mode = p_toggle_mode

        if p_object and p_callback:
            if p_toggle_mode:
                button.connect("toggled", p_object, p_callback)
            else:
                button.connect("pressed", p_object, p_callback)

        return button

    # Instantiates a ToolButton. If toggle mode is set, p_object/p_callback will connect to its "toggled" signal. Else, "pressed".
    static func new_tool_button(p_icon: Texture, p_toggle_mode: bool = false, p_object: Object = null, p_callback: String = "") -> ToolButton:
        var button = ToolButton.new()
        button.icon = p_icon
        button.name = "ToolButton"
        button.toggle_mode = p_toggle_mode

        if p_object and p_callback:
            if p_toggle_mode:
                button.connect("toggled", p_object, p_callback)
            else:
                button.connect("pressed", p_object, p_callback)

        return button

    static func new_dropdown(p_elements: Dictionary, p_object: Object = null, p_callback: String = "") -> OptionButton:
        var dropdown := OptionButton.new()
        var index = 0
        for a_label in p_elements:
            dropdown.add_item(a_label, index)
            dropdown.set_item_metadata(index, p_elements[a_label])
            index += 1
        dropdown.name = "Dropdown"
        dropdown.size_flags_horizontal = HBoxContainer.SIZE_EXPAND_FILL

        if p_object and p_callback:
            dropdown.connect("item_selected", p_object, p_callback, [dropdown])

        return dropdown

    static func new_dropdown_appender(p_elements: Dictionary, p_object: Object = null, p_callback: String = "") -> DropdownAppender:
        var dropdown_appender := DropdownAppender.new()

        var dropdown := new_dropdown(p_elements)

        var tool_button = ToolButton.new()
        tool_button.name = "ToolButton"
        tool_button.icon = ADD_ICON

        dropdown_appender.add_child(dropdown)
        dropdown_appender.add_child(tool_button)

        if p_object and p_callback:
            tool_button.connect("pressed", p_object, p_callback, [dropdown_appender])

        return dropdown_appender


# Initialization

var delegation_inspector_plugin

func _enter_tree() -> void:
    Singletons._register_editor_singletons(self)

    delegation_inspector_plugin = DelegationInspectorPlugin.new()
    add_inspector_plugin(delegation_inspector_plugin)

func _exit_tree() -> void:
    remove_inspector_plugin(delegation_inspector_plugin)
