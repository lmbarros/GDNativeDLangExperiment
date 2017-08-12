module godot.visibilityenabler;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.object;
import godot.classdb;
import godot.visibilitynotifier;
@GodotBaseClass struct VisibilityEnabler
{
	static immutable string _GODOT_internal_name = "VisibilityEnabler";
public:
	union { godot_object _godot_object; VisibilityNotifier base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	package(godot) void* opCast(T : void*)() const { return cast(void*)_godot_object.ptr; }
	godot_object opCast(T : godot_object)() const { return cast(godot_object)_godot_object; }
	bool opEquals(in VisibilityEnabler other) const { return _godot_object.ptr is other._godot_object.ptr; }
	VisibilityEnabler opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	bool opCast(T : bool)() const { return _godot_object.ptr !is null; }
	inout(T) opCast(T)() inout if(isGodotBaseClass!T)
	{
		static assert(staticIndexOf!(VisibilityEnabler, T.BaseClasses) != -1, "Godot class "~T.stringof~" does not inherit VisibilityEnabler");
		if(_godot_object.ptr is null) return T.init;
		String c = String(T._GODOT_internal_name);
		if(is_class(c)) return inout(T)(_godot_object);
		return T.init;
	}
	inout(T) opCast(T)() inout if(extendsGodotBaseClass!T)
	{
		static assert(is(typeof(T.owner) : VisibilityEnabler) || staticIndexOf!(VisibilityEnabler, typeof(T.owner).BaseClasses) != -1, "D class "~T.stringof~" does not extend VisibilityEnabler");
		if(_godot_object.ptr is null) return null;
		if(has_method(String(`_GDNATIVE_D_typeid`)))
		{
			Object o = cast(Object)godot_nativescript_get_userdata(opCast!godot_object);
			return cast(inout(T))o;
		}
		return null;
	}
	static VisibilityEnabler _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("VisibilityEnabler");
		if(constructor is null) return typeof(this).init;
		return cast(VisibilityEnabler)(constructor());
	}
	enum int ENABLER_FREEZE_BODIES = 1;
	enum int ENABLER_PAUSE_ANIMATIONS = 0;
	enum int ENABLER_MAX = 2;
	void set_enabler(in int enabler, in bool enabled)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("VisibilityEnabler", "set_enabler");
		const(void*)[2] _GODOT_args = [cast(void*)(&enabler), cast(void*)(&enabled), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	bool is_enabler_enabled(in int enabler) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("VisibilityEnabler", "is_enabler_enabled");
		bool _GODOT_ret = bool.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&enabler), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void _node_removed(in GodotObject arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_node_removed");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
}
