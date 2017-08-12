module godot.scripteditor;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.object;
import godot.panelcontainer;
@GodotBaseClass struct ScriptEditor
{
	static immutable string _GODOT_internal_name = "ScriptEditor";
public:
	union { godot_object _godot_object; PanelContainer base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	package(godot) void* opCast(T : void*)() const { return cast(void*)_godot_object.ptr; }
	godot_object opCast(T : godot_object)() const { return cast(godot_object)_godot_object; }
	bool opEquals(in ScriptEditor other) const { return _godot_object.ptr is other._godot_object.ptr; }
	ScriptEditor opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	bool opCast(T : bool)() const { return _godot_object.ptr !is null; }
	inout(T) opCast(T)() inout if(isGodotBaseClass!T)
	{
		static assert(staticIndexOf!(ScriptEditor, T.BaseClasses) != -1, "Godot class "~T.stringof~" does not inherit ScriptEditor");
		if(_godot_object.ptr is null) return T.init;
		String c = String(T._GODOT_internal_name);
		if(is_class(c)) return inout(T)(_godot_object);
		return T.init;
	}
	inout(T) opCast(T)() inout if(extendsGodotBaseClass!T)
	{
		static assert(is(typeof(T.owner) : ScriptEditor) || staticIndexOf!(ScriptEditor, typeof(T.owner).BaseClasses) != -1, "D class "~T.stringof~" does not extend ScriptEditor");
		if(_godot_object.ptr is null) return null;
		if(has_method(String(`_GDNATIVE_D_typeid`)))
		{
			Object o = cast(Object)godot_nativescript_get_userdata(opCast!godot_object);
			return cast(inout(T))o;
		}
		return null;
	}
	static ScriptEditor _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("ScriptEditor");
		if(constructor is null) return typeof(this).init;
		return cast(ScriptEditor)(constructor());
	}
	void _file_dialog_action(in String arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_file_dialog_action");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	void _tab_changed(in int arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_tab_changed");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	void _menu_option(in int arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_menu_option");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	void _close_current_tab()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_close_current_tab");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	void _close_discard_current_tab(in String arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_close_discard_current_tab");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	void _close_docs_tab()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_close_docs_tab");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	void _close_all_tabs()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_close_all_tabs");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	void _open_recent_script(in int arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_open_recent_script");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	void _editor_play()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_editor_play");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	void _editor_pause()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_editor_pause");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	void _editor_stop()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_editor_stop");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	void _add_callback(in GodotObject arg0, in String arg1, in PoolStringArray arg2)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		_GODOT_args.append(arg1);
		_GODOT_args.append(arg2);
		String _GODOT_method_name = String("_add_callback");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	void _reload_scripts()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_reload_scripts");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	void _resave_scripts(in String arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_resave_scripts");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	void _res_saved_callback(in GodotObject arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_res_saved_callback");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	void _goto_script_line(in GodotObject arg0, in int arg1)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		_GODOT_args.append(arg1);
		String _GODOT_method_name = String("_goto_script_line");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	void _goto_script_line2(in int arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_goto_script_line2");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	void _help_search(in String arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_help_search");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	void _help_index(in String arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_help_index");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	void _save_history()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_save_history");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	void _breaked(in bool arg0, in bool arg1)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		_GODOT_args.append(arg1);
		String _GODOT_method_name = String("_breaked");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	void _show_debugger(in bool arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_show_debugger");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	String _get_debug_tooltip(in String arg0, in GodotObject arg1)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		_GODOT_args.append(arg1);
		String _GODOT_method_name = String("_get_debug_tooltip");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(String);
	}
	void _autosave_scripts()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_autosave_scripts");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	void _editor_settings_changed()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_editor_settings_changed");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	void _update_script_names()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_update_script_names");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	void _tree_changed()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_tree_changed");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	void _members_overview_selected(in int arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_members_overview_selected");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	void _script_selected(in int arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_script_selected");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	void _script_created(in GodotObject arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_script_created");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	void _script_split_dragged(in float arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_script_split_dragged");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	void _help_class_open(in String arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_help_class_open");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	void _help_class_goto(in String arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_help_class_goto");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	void _request_help(in String arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_request_help");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	void _history_forward()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_history_forward");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	void _history_back()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_history_back");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	void _live_auto_reload_running_scripts()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_live_auto_reload_running_scripts");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	void _unhandled_input(in GodotObject arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_unhandled_input");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	GodotObject get_current_script()
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("ScriptEditor", "get_current_script");
		GodotObject _GODOT_ret = GodotObject.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	Array get_open_scripts() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("ScriptEditor", "get_open_scripts");
		Array _GODOT_ret = Array.empty_array;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
}
