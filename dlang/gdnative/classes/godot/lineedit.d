module godot.lineedit;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.object;
import godot.classdb;
import godot.control;
import godot.popupmenu;
@GodotBaseClass struct LineEdit
{
	static immutable string _GODOT_internal_name = "LineEdit";
public:
	union { godot_object _godot_object; Control base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	package(godot) void* opCast(T : void*)() const { return cast(void*)_godot_object.ptr; }
	godot_object opCast(T : godot_object)() const { return cast(godot_object)_godot_object; }
	bool opEquals(in LineEdit other) const { return _godot_object.ptr is other._godot_object.ptr; }
	LineEdit opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	bool opCast(T : bool)() const { return _godot_object.ptr !is null; }
	inout(T) opCast(T)() inout if(isGodotBaseClass!T)
	{
		static assert(staticIndexOf!(LineEdit, T.BaseClasses) != -1, "Godot class "~T.stringof~" does not inherit LineEdit");
		if(_godot_object.ptr is null) return T.init;
		String c = String(T._GODOT_internal_name);
		if(is_class(c)) return inout(T)(_godot_object);
		return T.init;
	}
	inout(T) opCast(T)() inout if(extendsGodotBaseClass!T)
	{
		static assert(is(typeof(T.owner) : LineEdit) || staticIndexOf!(LineEdit, typeof(T.owner).BaseClasses) != -1, "D class "~T.stringof~" does not extend LineEdit");
		if(_godot_object.ptr is null) return null;
		if(has_method(String(`_GDNATIVE_D_typeid`)))
		{
			Object o = cast(Object)godot_nativescript_get_userdata(opCast!godot_object);
			return cast(inout(T))o;
		}
		return null;
	}
	static LineEdit _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("LineEdit");
		if(constructor is null) return typeof(this).init;
		return cast(LineEdit)(constructor());
	}
	enum int ALIGN_FILL = 3;
	enum int MENU_UNDO = 5;
	enum int MENU_MAX = 6;
	enum int MENU_CUT = 0;
	enum int MENU_COPY = 1;
	enum int ALIGN_LEFT = 0;
	enum int ALIGN_RIGHT = 2;
	enum int ALIGN_CENTER = 1;
	enum int MENU_PASTE = 2;
	enum int MENU_CLEAR = 3;
	enum int MENU_SELECT_ALL = 4;
	void _toggle_draw_caret()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_toggle_draw_caret");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	void _editor_settings_changed()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_editor_settings_changed");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	void set_align(in int _align)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("LineEdit", "set_align");
		const(void*)[1] _GODOT_args = [cast(void*)(&_align), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	int get_align() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("LineEdit", "get_align");
		int _GODOT_ret = int.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void _gui_input(in GodotObject arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_gui_input");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	void clear()
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("LineEdit", "clear");
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null);
	}
	void select_all()
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("LineEdit", "select_all");
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null);
	}
	void set_text(in String text)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("LineEdit", "set_text");
		const(void*)[1] _GODOT_args = [cast(void*)(&text), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	String get_text() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("LineEdit", "get_text");
		String _GODOT_ret = String.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_placeholder(in String text)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("LineEdit", "set_placeholder");
		const(void*)[1] _GODOT_args = [cast(void*)(&text), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	String get_placeholder() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("LineEdit", "get_placeholder");
		String _GODOT_ret = String.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_placeholder_alpha(in float alpha)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("LineEdit", "set_placeholder_alpha");
		const(void*)[1] _GODOT_args = [cast(void*)(&alpha), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	float get_placeholder_alpha() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("LineEdit", "get_placeholder_alpha");
		float _GODOT_ret = float.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_cursor_pos(in int pos)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("LineEdit", "set_cursor_pos");
		const(void*)[1] _GODOT_args = [cast(void*)(&pos), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	int get_cursor_pos() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("LineEdit", "get_cursor_pos");
		int _GODOT_ret = int.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_expand_to_text_length(in bool enabled)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("LineEdit", "set_expand_to_text_length");
		const(void*)[1] _GODOT_args = [cast(void*)(&enabled), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	bool get_expand_to_text_length() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("LineEdit", "get_expand_to_text_length");
		bool _GODOT_ret = bool.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void cursor_set_blink_enabled(in bool enabled)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("LineEdit", "cursor_set_blink_enabled");
		const(void*)[1] _GODOT_args = [cast(void*)(&enabled), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	bool cursor_get_blink_enabled() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("LineEdit", "cursor_get_blink_enabled");
		bool _GODOT_ret = bool.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void cursor_set_blink_speed(in float blink_speed)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("LineEdit", "cursor_set_blink_speed");
		const(void*)[1] _GODOT_args = [cast(void*)(&blink_speed), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	float cursor_get_blink_speed() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("LineEdit", "cursor_get_blink_speed");
		float _GODOT_ret = float.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_max_length(in int chars)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("LineEdit", "set_max_length");
		const(void*)[1] _GODOT_args = [cast(void*)(&chars), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	int get_max_length() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("LineEdit", "get_max_length");
		int _GODOT_ret = int.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void append_at_cursor(in String text)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("LineEdit", "append_at_cursor");
		const(void*)[1] _GODOT_args = [cast(void*)(&text), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void set_editable(in bool enabled)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("LineEdit", "set_editable");
		const(void*)[1] _GODOT_args = [cast(void*)(&enabled), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	bool is_editable() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("LineEdit", "is_editable");
		bool _GODOT_ret = bool.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_secret(in bool enabled)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("LineEdit", "set_secret");
		const(void*)[1] _GODOT_args = [cast(void*)(&enabled), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	bool is_secret() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("LineEdit", "is_secret");
		bool _GODOT_ret = bool.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void select(in int from = 0, in int to = -1)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("LineEdit", "select");
		const(void*)[2] _GODOT_args = [cast(void*)(&from), cast(void*)(&to), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void menu_option(in int option)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("LineEdit", "menu_option");
		const(void*)[1] _GODOT_args = [cast(void*)(&option), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	PopupMenu get_menu() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("LineEdit", "get_menu");
		PopupMenu _GODOT_ret = PopupMenu.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
}
