extends EditorInspectorPlugin


func _can_handle(object: Object) -> bool:
	return object is DockableContainer


func _parse_property(
	_object: Object, _type: Variant.Type, path: String, _hint: PropertyHint, _hint_text: String, _usage: PropertyUsageFlags, wide: bool
) -> bool:
	if path == "layout":
		var editor_property := DockableLayoutEditorProperty.new()
		add_property_editor("layout", editor_property)
	return false
