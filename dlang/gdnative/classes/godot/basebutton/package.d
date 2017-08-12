module godot.basebutton;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.object;
import godot.control;
import godot.shortcut;
import godot.buttongroup;
@GodotBaseClass struct BaseButton
{
	static immutable string _GODOT_internal_name = "BaseButton";
public:
	union { godot_object _godot_object; Control base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	package(godot) void* opCast(T : void*)() const { return cast(void*)_godot_object.ptr; }
	godot_object opCast(T : godot_object)() const { return cast(godot_object)_godot_object; }
	bool opEquals(in BaseButton other) const { return _godot_object.ptr is other._godot_object.ptr; }
	BaseButton opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	bool opCast(T : bool)() const { return _godot_object.ptr !is null; }
	inout(T) opCast(T)() inout if(isGodotBaseClass!T)
	{
		static assert(staticIndexOf!(BaseButton, T.BaseClasses) != -1, "Godot class "~T.stringof~" does not inherit BaseButton");
		if(_godot_object.ptr is null) return T.init;
		String c = String(T._GODOT_internal_name);
		if(is_class(c)) return inout(T)(_godot_object);
		return T.init;
	}
	inout(T) opCast(T)() inout if(extendsGodotBaseClass!T)
	{
		static assert(is(typeof(T.owner) : BaseButton) || staticIndexOf!(BaseButton, typeof(T.owner).BaseClasses) != -1, "D class "~T.stringof~" does not extend BaseButton");
		if(_godot_object.ptr is null) return null;
		if(has_method(String(`_GDNATIVE_D_typeid`)))
		{
			Object o = cast(Object)godot_nativescript_get_userdata(opCast!godot_object);
			return cast(inout(T))o;
		}
		return null;
	}
	static BaseButton _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("BaseButton");
		if(constructor is null) return typeof(this).init;
		return cast(BaseButton)(constructor());
	}
	enum int DRAW_HOVER = 2;
	enum int ACTION_MODE_BUTTON_RELEASE = 1;
	enum int DRAW_PRESSED = 1;
	enum int ACTION_MODE_BUTTON_PRESS = 0;
	enum int DRAW_DISABLED = 3;
	enum int DRAW_NORMAL = 0;
	void _pressed()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_pressed");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	void _toggled(in bool pressed)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(pressed);
		String _GODOT_method_name = String("_toggled");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	void _gui_input(in GodotObject arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_gui_input");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	void _unhandled_input(in GodotObject arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_unhandled_input");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	void set_pressed(in bool pressed)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("BaseButton", "set_pressed");
		const(void*)[1] _GODOT_args = [cast(void*)(&pressed), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	bool is_pressed() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("BaseButton", "is_pressed");
		bool _GODOT_ret = bool.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	bool is_hovered() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("BaseButton", "is_hovered");
		bool _GODOT_ret = bool.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_toggle_mode(in bool enabled)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("BaseButton", "set_toggle_mode");
		const(void*)[1] _GODOT_args = [cast(void*)(&enabled), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	bool is_toggle_mode() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("BaseButton", "is_toggle_mode");
		bool _GODOT_ret = bool.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_disabled(in bool disabled)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("BaseButton", "set_disabled");
		const(void*)[1] _GODOT_args = [cast(void*)(&disabled), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	bool is_disabled() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("BaseButton", "is_disabled");
		bool _GODOT_ret = bool.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_action_mode(in int mode)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("BaseButton", "set_action_mode");
		const(void*)[1] _GODOT_args = [cast(void*)(&mode), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	int get_action_mode() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("BaseButton", "get_action_mode");
		int _GODOT_ret = int.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	int get_draw_mode() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("BaseButton", "get_draw_mode");
		int _GODOT_ret = int.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_enabled_focus_mode(in int mode)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("BaseButton", "set_enabled_focus_mode");
		const(void*)[1] _GODOT_args = [cast(void*)(&mode), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	int get_enabled_focus_mode() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("BaseButton", "get_enabled_focus_mode");
		int _GODOT_ret = int.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_shortcut(in ShortCut shortcut)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("BaseButton", "set_shortcut");
		const(void*)[1] _GODOT_args = [cast(void*)(shortcut), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	ShortCut get_shortcut() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("BaseButton", "get_shortcut");
		ShortCut _GODOT_ret = ShortCut.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_button_group(in ButtonGroup button_group)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("BaseButton", "set_button_group");
		const(void*)[1] _GODOT_args = [cast(void*)(button_group), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	ButtonGroup get_button_group() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("BaseButton", "get_button_group");
		ButtonGroup _GODOT_ret = ButtonGroup.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
}
