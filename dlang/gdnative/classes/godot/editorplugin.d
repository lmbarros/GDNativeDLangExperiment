module godot.editorplugin;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.object;
import godot.classdb;
import godot.node;
import godot.inputevent;
import godot.control;
import godot.camera;
import godot.editorspatialgizmo;
import godot.spatial;
import godot.configfile;
import godot.toolbutton;
import godot.popupmenu;
import godot.script;
import godot.texture;
import godot.editorresourcepreview;
import godot.editorfilesystem;
import godot.undoredo;
import godot.editorselection;
import godot.editorsettings;
import godot.scripteditor;
import godot.resource;
import godot.editorimportplugin;
@GodotBaseClass struct EditorPlugin
{
	static immutable string _GODOT_internal_name = "EditorPlugin";
public:
	union { godot_object _godot_object; Node base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	package(godot) void* opCast(T : void*)() const { return cast(void*)_godot_object.ptr; }
	godot_object opCast(T : godot_object)() const { return cast(godot_object)_godot_object; }
	bool opEquals(in EditorPlugin other) const { return _godot_object.ptr is other._godot_object.ptr; }
	EditorPlugin opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	bool opCast(T : bool)() const { return _godot_object.ptr !is null; }
	inout(T) opCast(T)() inout if(isGodotBaseClass!T)
	{
		static assert(staticIndexOf!(EditorPlugin, T.BaseClasses) != -1, "Godot class "~T.stringof~" does not inherit EditorPlugin");
		if(_godot_object.ptr is null) return T.init;
		String c = String(T._GODOT_internal_name);
		if(is_class(c)) return inout(T)(_godot_object);
		return T.init;
	}
	inout(T) opCast(T)() inout if(extendsGodotBaseClass!T)
	{
		static assert(is(typeof(T.owner) : EditorPlugin) || staticIndexOf!(EditorPlugin, typeof(T.owner).BaseClasses) != -1, "D class "~T.stringof~" does not extend EditorPlugin");
		if(_godot_object.ptr is null) return null;
		if(has_method(String(`_GDNATIVE_D_typeid`)))
		{
			Object o = cast(Object)godot_nativescript_get_userdata(opCast!godot_object);
			return cast(inout(T))o;
		}
		return null;
	}
	static EditorPlugin _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("EditorPlugin");
		if(constructor is null) return typeof(this).init;
		return cast(EditorPlugin)(constructor());
	}
	enum int DOCK_SLOT_RIGHT_BL = 5;
	enum int DOCK_SLOT_RIGHT_UL = 4;
	enum int DOCK_SLOT_LEFT_UR = 2;
	enum int DOCK_SLOT_MAX = 8;
	enum int DOCK_SLOT_RIGHT_BR = 7;
	enum int CONTAINER_PROPERTY_EDITOR_BOTTOM = 7;
	enum int CONTAINER_SPATIAL_EDITOR_SIDE = 2;
	enum int CONTAINER_SPATIAL_EDITOR_BOTTOM = 3;
	enum int CONTAINER_CANVAS_EDITOR_SIDE = 5;
	enum int DOCK_SLOT_LEFT_UL = 0;
	enum int CONTAINER_SPATIAL_EDITOR_MENU = 1;
	enum int DOCK_SLOT_LEFT_BR = 3;
	enum int CONTAINER_CANVAS_EDITOR_MENU = 4;
	enum int DOCK_SLOT_LEFT_BL = 1;
	enum int DOCK_SLOT_RIGHT_UR = 6;
	enum int CONTAINER_TOOLBAR = 0;
	bool forward_canvas_gui_input(in Transform2D canvas_xform, in InputEvent event)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(canvas_xform);
		_GODOT_args.append(event);
		String _GODOT_method_name = String("forward_canvas_gui_input");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(bool);
	}
	void forward_draw_over_canvas(in Transform2D canvas_xform, in Control canvas)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(canvas_xform);
		_GODOT_args.append(canvas);
		String _GODOT_method_name = String("forward_draw_over_canvas");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	bool forward_spatial_gui_input(in Camera camera, in InputEvent event)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(camera);
		_GODOT_args.append(event);
		String _GODOT_method_name = String("forward_spatial_gui_input");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(bool);
	}
	EditorSpatialGizmo create_spatial_gizmo(in Spatial for_spatial)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(for_spatial);
		String _GODOT_method_name = String("create_spatial_gizmo");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(EditorSpatialGizmo);
	}
	String get_name()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("get_name");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(String);
	}
	bool has_main_screen()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("has_main_screen");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(bool);
	}
	void make_visible(in bool visible)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(visible);
		String _GODOT_method_name = String("make_visible");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	void edit(in GodotObject object)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(object);
		String _GODOT_method_name = String("edit");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	bool handles(in GodotObject object)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(object);
		String _GODOT_method_name = String("handles");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(bool);
	}
	Dictionary get_state()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("get_state");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(Dictionary);
	}
	void set_state(in Dictionary state)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(state);
		String _GODOT_method_name = String("set_state");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	void clear()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("clear");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	void save_external_data()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("save_external_data");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	void apply_changes()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("apply_changes");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	PoolStringArray get_breakpoints()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("get_breakpoints");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(PoolStringArray);
	}
	void set_window_layout(in ConfigFile layout)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(layout);
		String _GODOT_method_name = String("set_window_layout");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	void get_window_layout(in ConfigFile layout)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(layout);
		String _GODOT_method_name = String("get_window_layout");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	void add_control_to_container(in int container, in Control control)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("EditorPlugin", "add_control_to_container");
		const(void*)[2] _GODOT_args = [cast(void*)(&container), cast(void*)(control), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	ToolButton add_control_to_bottom_panel(in Control control, in String title)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("EditorPlugin", "add_control_to_bottom_panel");
		ToolButton _GODOT_ret = ToolButton.init;
		const(void*)[2] _GODOT_args = [cast(void*)(control), cast(void*)(&title), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void add_control_to_dock(in int slot, in Control control)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("EditorPlugin", "add_control_to_dock");
		const(void*)[2] _GODOT_args = [cast(void*)(&slot), cast(void*)(control), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void remove_control_from_docks(in Control control)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("EditorPlugin", "remove_control_from_docks");
		const(void*)[1] _GODOT_args = [cast(void*)(control), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void remove_control_from_bottom_panel(in Control control)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("EditorPlugin", "remove_control_from_bottom_panel");
		const(void*)[1] _GODOT_args = [cast(void*)(control), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void add_tool_submenu_item(in String name, in PopupMenu submenu)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("EditorPlugin", "add_tool_submenu_item");
		const(void*)[2] _GODOT_args = [cast(void*)(&name), cast(void*)(submenu), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void add_custom_type(in String type, in String base, in Script script, in Texture icon)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("EditorPlugin", "add_custom_type");
		const(void*)[4] _GODOT_args = [cast(void*)(&type), cast(void*)(&base), cast(void*)(script), cast(void*)(icon), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void remove_custom_type(in String type)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("EditorPlugin", "remove_custom_type");
		const(void*)[1] _GODOT_args = [cast(void*)(&type), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	Control get_editor_viewport()
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("EditorPlugin", "get_editor_viewport");
		Control _GODOT_ret = Control.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	EditorResourcePreview get_resource_previewer()
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("EditorPlugin", "get_resource_previewer");
		EditorResourcePreview _GODOT_ret = EditorResourcePreview.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	EditorFileSystem get_resource_filesystem()
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("EditorPlugin", "get_resource_filesystem");
		EditorFileSystem _GODOT_ret = EditorFileSystem.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void inspect_object(in GodotObject object, in String for_property = String.init)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("EditorPlugin", "inspect_object");
		const(void*)[2] _GODOT_args = [cast(void*)(object), cast(void*)(&for_property), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void update_canvas()
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("EditorPlugin", "update_canvas");
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null);
	}
	void make_bottom_panel_item_visible(in Control item)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("EditorPlugin", "make_bottom_panel_item_visible");
		const(void*)[1] _GODOT_args = [cast(void*)(item), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void hide_bottom_panel()
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("EditorPlugin", "hide_bottom_panel");
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null);
	}
	Control get_base_control()
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("EditorPlugin", "get_base_control");
		Control _GODOT_ret = Control.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	UndoRedo get_undo_redo()
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("EditorPlugin", "get_undo_redo");
		UndoRedo _GODOT_ret = UndoRedo.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	EditorSelection get_selection()
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("EditorPlugin", "get_selection");
		EditorSelection _GODOT_ret = EditorSelection.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	EditorSettings get_editor_settings()
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("EditorPlugin", "get_editor_settings");
		EditorSettings _GODOT_ret = EditorSettings.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	ScriptEditor get_script_editor()
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("EditorPlugin", "get_script_editor");
		ScriptEditor _GODOT_ret = ScriptEditor.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void queue_save_layout() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("EditorPlugin", "queue_save_layout");
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null);
	}
	void edit_resource(in Resource resource)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("EditorPlugin", "edit_resource");
		const(void*)[1] _GODOT_args = [cast(void*)(resource), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void open_scene_from_path(in String scene_filepath)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("EditorPlugin", "open_scene_from_path");
		const(void*)[1] _GODOT_args = [cast(void*)(&scene_filepath), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void reload_scene_from_path(in String scene_filepath)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("EditorPlugin", "reload_scene_from_path");
		const(void*)[1] _GODOT_args = [cast(void*)(&scene_filepath), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void add_import_plugin(in EditorImportPlugin importer)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("EditorPlugin", "add_import_plugin");
		const(void*)[1] _GODOT_args = [cast(void*)(importer), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void remove_import_plugin(in EditorImportPlugin importer)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("EditorPlugin", "remove_import_plugin");
		const(void*)[1] _GODOT_args = [cast(void*)(importer), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void set_input_event_forwarding_always_enabled()
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("EditorPlugin", "set_input_event_forwarding_always_enabled");
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null);
	}
	Array get_open_scenes() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("EditorPlugin", "get_open_scenes");
		Array _GODOT_ret = Array.empty_array;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	Node get_edited_scene_root()
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("EditorPlugin", "get_edited_scene_root");
		Node _GODOT_ret = Node.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
}
