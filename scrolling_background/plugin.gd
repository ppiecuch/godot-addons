tool
extends EditorPlugin

# Add our custom node type

var plugin_icon = Editor.import("res://addons/scrolling_background/icon.png")
var plugin_class = load("res://addons/scrolling_background/scrolling_background.gd")

func _enter_tree():
    add_custom_type("ScrollingBackground", "Node", plugin_class, plugin_icon)

func _exit_tree():
    remove_custom_type("ScrollingBackground")
