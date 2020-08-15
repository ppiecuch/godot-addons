tool
extends EditorPlugin

var plugin_icon = Editor.import("res://addons/arrow_shape/icon_arrow.png")
var plugin_class = load("res://addons/arrow_shape/arrow.gd")

func _enter_tree():
    add_custom_type("Arrow", "Node2D", plugin_class, plugin_icon)

func _exit_tree():
    remove_custom_type("Arrow")
