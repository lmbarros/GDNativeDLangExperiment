module godot.inputmap;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.object;
import godot.inputevent;
@GodotBaseClass struct InputMapSingleton
{
	static immutable string _GODOT_internal_name = "InputMap";
public:
	static typeof(this) _GODOT_singleton()
	{
		static immutable char* _GODOT_singleton_name = "InputMap";
		static typeof(this) _GODOT_singleton_ptr;
		if(_GODOT_singleton_ptr == null)
			_GODOT_singleton_ptr = cast(typeof(this))godot_global_get_singleton(cast(char*)_GODOT_singleton_name);
		return _GODOT_singleton_ptr;
	}
	union { godot_object _godot_object; GodotObject base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	package(godot) void* opCast(T : void*)() const { return cast(void*)_godot_object.ptr; }
	godot_object opCast(T : godot_object)() const { return cast(godot_object)_godot_object; }
	bool opEquals(in InputMapSingleton other) const { return _godot_object.ptr is other._godot_object.ptr; }
	InputMapSingleton opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	bool opCast(T : bool)() const { return _godot_object.ptr !is null; }
	inout(T) opCast(T)() inout if(isGodotBaseClass!T)
	{
		static assert(staticIndexOf!(InputMapSingleton, T.BaseClasses) != -1, "Godot class "~T.stringof~" does not inherit InputMapSingleton");
		if(_godot_object.ptr is null) return T.init;
		String c = String(T._GODOT_internal_name);
		if(is_class(c)) return inout(T)(_godot_object);
		return T.init;
	}
	inout(T) opCast(T)() inout if(extendsGodotBaseClass!T)
	{
		static assert(is(typeof(T.owner) : InputMapSingleton) || staticIndexOf!(InputMapSingleton, typeof(T.owner).BaseClasses) != -1, "D class "~T.stringof~" does not extend InputMapSingleton");
		if(_godot_object.ptr is null) return null;
		if(has_method(String(`_GDNATIVE_D_typeid`)))
		{
			Object o = cast(Object)godot_nativescript_get_userdata(opCast!godot_object);
			return cast(inout(T))o;
		}
		return null;
	}
	static InputMapSingleton _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("InputMap");
		if(constructor is null) return typeof(this).init;
		return cast(InputMapSingleton)(constructor());
	}
	bool has_action(in String action) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("InputMap", "has_action");
		bool _GODOT_ret = bool.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&action), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	Array get_actions()
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("InputMap", "get_actions");
		Array _GODOT_ret = Array.empty_array;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void add_action(in String action)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("InputMap", "add_action");
		const(void*)[1] _GODOT_args = [cast(void*)(&action), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void erase_action(in String action)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("InputMap", "erase_action");
		const(void*)[1] _GODOT_args = [cast(void*)(&action), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void action_add_event(in String action, in InputEvent event)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("InputMap", "action_add_event");
		const(void*)[2] _GODOT_args = [cast(void*)(&action), cast(void*)(event), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	bool action_has_event(in String action, in InputEvent event)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("InputMap", "action_has_event");
		bool _GODOT_ret = bool.init;
		const(void*)[2] _GODOT_args = [cast(void*)(&action), cast(void*)(event), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void action_erase_event(in String action, in InputEvent event)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("InputMap", "action_erase_event");
		const(void*)[2] _GODOT_args = [cast(void*)(&action), cast(void*)(event), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	Array get_action_list(in String action)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("InputMap", "get_action_list");
		Array _GODOT_ret = Array.empty_array;
		const(void*)[1] _GODOT_args = [cast(void*)(&action), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	bool event_is_action(in InputEvent event, in String action) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("InputMap", "event_is_action");
		bool _GODOT_ret = bool.init;
		const(void*)[2] _GODOT_args = [cast(void*)(event), cast(void*)(&action), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void load_from_globals()
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("InputMap", "load_from_globals");
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null);
	}
}
@property pragma(inline, true)
InputMapSingleton InputMap()
{
	return InputMapSingleton._GODOT_singleton();
}
