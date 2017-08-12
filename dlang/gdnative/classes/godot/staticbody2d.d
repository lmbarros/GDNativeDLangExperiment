module godot.staticbody2d;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.object;
import godot.classdb;
import godot.physicsbody2d;
@GodotBaseClass struct StaticBody2D
{
	static immutable string _GODOT_internal_name = "StaticBody2D";
public:
	union { godot_object _godot_object; PhysicsBody2D base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	package(godot) void* opCast(T : void*)() const { return cast(void*)_godot_object.ptr; }
	godot_object opCast(T : godot_object)() const { return cast(godot_object)_godot_object; }
	bool opEquals(in StaticBody2D other) const { return _godot_object.ptr is other._godot_object.ptr; }
	StaticBody2D opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	bool opCast(T : bool)() const { return _godot_object.ptr !is null; }
	inout(T) opCast(T)() inout if(isGodotBaseClass!T)
	{
		static assert(staticIndexOf!(StaticBody2D, T.BaseClasses) != -1, "Godot class "~T.stringof~" does not inherit StaticBody2D");
		if(_godot_object.ptr is null) return T.init;
		String c = String(T._GODOT_internal_name);
		if(is_class(c)) return inout(T)(_godot_object);
		return T.init;
	}
	inout(T) opCast(T)() inout if(extendsGodotBaseClass!T)
	{
		static assert(is(typeof(T.owner) : StaticBody2D) || staticIndexOf!(StaticBody2D, typeof(T.owner).BaseClasses) != -1, "D class "~T.stringof~" does not extend StaticBody2D");
		if(_godot_object.ptr is null) return null;
		if(has_method(String(`_GDNATIVE_D_typeid`)))
		{
			Object o = cast(Object)godot_nativescript_get_userdata(opCast!godot_object);
			return cast(inout(T))o;
		}
		return null;
	}
	static StaticBody2D _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("StaticBody2D");
		if(constructor is null) return typeof(this).init;
		return cast(StaticBody2D)(constructor());
	}
	void set_constant_linear_velocity(in Vector2 vel)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("StaticBody2D", "set_constant_linear_velocity");
		const(void*)[1] _GODOT_args = [cast(void*)(&vel), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void set_constant_angular_velocity(in float vel)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("StaticBody2D", "set_constant_angular_velocity");
		const(void*)[1] _GODOT_args = [cast(void*)(&vel), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	Vector2 get_constant_linear_velocity() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("StaticBody2D", "get_constant_linear_velocity");
		Vector2 _GODOT_ret = Vector2.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	float get_constant_angular_velocity() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("StaticBody2D", "get_constant_angular_velocity");
		float _GODOT_ret = float.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_friction(in float friction)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("StaticBody2D", "set_friction");
		const(void*)[1] _GODOT_args = [cast(void*)(&friction), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	float get_friction() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("StaticBody2D", "get_friction");
		float _GODOT_ret = float.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_bounce(in float bounce)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("StaticBody2D", "set_bounce");
		const(void*)[1] _GODOT_args = [cast(void*)(&bounce), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	float get_bounce() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("StaticBody2D", "get_bounce");
		float _GODOT_ret = float.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
}
