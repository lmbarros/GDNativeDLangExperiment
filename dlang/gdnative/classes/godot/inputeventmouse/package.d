module godot.inputeventmouse;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.object;
import godot.inputeventwithmodifiers;
@GodotBaseClass struct InputEventMouse
{
	static immutable string _GODOT_internal_name = "InputEventMouse";
public:
	union { godot_object _godot_object; InputEventWithModifiers base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	package(godot) void* opCast(T : void*)() const { return cast(void*)_godot_object.ptr; }
	godot_object opCast(T : godot_object)() const { return cast(godot_object)_godot_object; }
	bool opEquals(in InputEventMouse other) const { return _godot_object.ptr is other._godot_object.ptr; }
	InputEventMouse opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	bool opCast(T : bool)() const { return _godot_object.ptr !is null; }
	inout(T) opCast(T)() inout if(isGodotBaseClass!T)
	{
		static assert(staticIndexOf!(InputEventMouse, T.BaseClasses) != -1, "Godot class "~T.stringof~" does not inherit InputEventMouse");
		if(_godot_object.ptr is null) return T.init;
		String c = String(T._GODOT_internal_name);
		if(is_class(c)) return inout(T)(_godot_object);
		return T.init;
	}
	inout(T) opCast(T)() inout if(extendsGodotBaseClass!T)
	{
		static assert(is(typeof(T.owner) : InputEventMouse) || staticIndexOf!(InputEventMouse, typeof(T.owner).BaseClasses) != -1, "D class "~T.stringof~" does not extend InputEventMouse");
		if(_godot_object.ptr is null) return null;
		if(has_method(String(`_GDNATIVE_D_typeid`)))
		{
			Object o = cast(Object)godot_nativescript_get_userdata(opCast!godot_object);
			return cast(inout(T))o;
		}
		return null;
	}
	static InputEventMouse _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("InputEventMouse");
		if(constructor is null) return typeof(this).init;
		return cast(InputEventMouse)(constructor());
	}
	void set_button_mask(in int button_mask)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("InputEventMouse", "set_button_mask");
		const(void*)[1] _GODOT_args = [cast(void*)(&button_mask), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	int get_button_mask() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("InputEventMouse", "get_button_mask");
		int _GODOT_ret = int.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_position(in Vector2 position)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("InputEventMouse", "set_position");
		const(void*)[1] _GODOT_args = [cast(void*)(&position), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	Vector2 get_position() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("InputEventMouse", "get_position");
		Vector2 _GODOT_ret = Vector2.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_global_position(in Vector2 global_position)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("InputEventMouse", "set_global_position");
		const(void*)[1] _GODOT_args = [cast(void*)(&global_position), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	Vector2 get_global_position() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("InputEventMouse", "get_global_position");
		Vector2 _GODOT_ret = Vector2.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
}
