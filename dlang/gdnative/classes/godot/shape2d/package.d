module godot.shape2d;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.object;
import godot.resource;
@GodotBaseClass struct Shape2D
{
	static immutable string _GODOT_internal_name = "Shape2D";
public:
	union { godot_object _godot_object; Resource base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	package(godot) void* opCast(T : void*)() const { return cast(void*)_godot_object.ptr; }
	godot_object opCast(T : godot_object)() const { return cast(godot_object)_godot_object; }
	bool opEquals(in Shape2D other) const { return _godot_object.ptr is other._godot_object.ptr; }
	Shape2D opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	bool opCast(T : bool)() const { return _godot_object.ptr !is null; }
	inout(T) opCast(T)() inout if(isGodotBaseClass!T)
	{
		static assert(staticIndexOf!(Shape2D, T.BaseClasses) != -1, "Godot class "~T.stringof~" does not inherit Shape2D");
		if(_godot_object.ptr is null) return T.init;
		String c = String(T._GODOT_internal_name);
		if(is_class(c)) return inout(T)(_godot_object);
		return T.init;
	}
	inout(T) opCast(T)() inout if(extendsGodotBaseClass!T)
	{
		static assert(is(typeof(T.owner) : Shape2D) || staticIndexOf!(Shape2D, typeof(T.owner).BaseClasses) != -1, "D class "~T.stringof~" does not extend Shape2D");
		if(_godot_object.ptr is null) return null;
		if(has_method(String(`_GDNATIVE_D_typeid`)))
		{
			Object o = cast(Object)godot_nativescript_get_userdata(opCast!godot_object);
			return cast(inout(T))o;
		}
		return null;
	}
	static Shape2D _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("Shape2D");
		if(constructor is null) return typeof(this).init;
		return cast(Shape2D)(constructor());
	}
	void set_custom_solver_bias(in float bias)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Shape2D", "set_custom_solver_bias");
		const(void*)[1] _GODOT_args = [cast(void*)(&bias), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	float get_custom_solver_bias() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Shape2D", "get_custom_solver_bias");
		float _GODOT_ret = float.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	bool collide(in Transform2D local_xform, in Shape2D with_shape, in Transform2D shape_xform)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Shape2D", "collide");
		bool _GODOT_ret = bool.init;
		const(void*)[3] _GODOT_args = [cast(void*)(&local_xform), cast(void*)(with_shape), cast(void*)(&shape_xform), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	bool collide_with_motion(in Transform2D local_xform, in Vector2 local_motion, in Shape2D with_shape, in Transform2D shape_xform, in Vector2 shape_motion)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Shape2D", "collide_with_motion");
		bool _GODOT_ret = bool.init;
		const(void*)[5] _GODOT_args = [cast(void*)(&local_xform), cast(void*)(&local_motion), cast(void*)(with_shape), cast(void*)(&shape_xform), cast(void*)(&shape_motion), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	Variant collide_and_get_contacts(in Transform2D local_xform, in Shape2D with_shape, in Transform2D shape_xform)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Shape2D", "collide_and_get_contacts");
		Variant _GODOT_ret = Variant.nil;
		const(void*)[3] _GODOT_args = [cast(void*)(&local_xform), cast(void*)(with_shape), cast(void*)(&shape_xform), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	Variant collide_with_motion_and_get_contacts(in Transform2D local_xform, in Vector2 local_motion, in Shape2D with_shape, in Transform2D shape_xform, in Vector2 shape_motion)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Shape2D", "collide_with_motion_and_get_contacts");
		Variant _GODOT_ret = Variant.nil;
		const(void*)[5] _GODOT_args = [cast(void*)(&local_xform), cast(void*)(&local_motion), cast(void*)(with_shape), cast(void*)(&shape_xform), cast(void*)(&shape_motion), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
}
