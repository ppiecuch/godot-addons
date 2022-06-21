tool
extends EditorPlugin

func _enter_tree():
	add_custom_type("Monitor", "CanvasLayer", preload("PerfMonitor.gd"), Editor.import("icon.png"))

func _exit_tree():
	remove_custom_type("Monitor")
