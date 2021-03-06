module godot.physicsdirectspacestate;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.object;
import godot.physicsshapequeryparameters;
@GodotBaseClass struct PhysicsDirectSpaceState
{
	static immutable string _GODOT_internal_name = "PhysicsDirectSpaceState";
public:
	union { godot_object _godot_object; GodotObject base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	package(godot) void* opCast(T : void*)() const { return cast(void*)_godot_object.ptr; }
	godot_object opCast(T : godot_object)() const { return cast(godot_object)_godot_object; }
	bool opEquals(in PhysicsDirectSpaceState other) const { return _godot_object.ptr is other._godot_object.ptr; }
	PhysicsDirectSpaceState opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	bool opCast(T : bool)() const { return _godot_object.ptr !is null; }
	inout(T) opCast(T)() inout if(isGodotBaseClass!T)
	{
		static assert(staticIndexOf!(PhysicsDirectSpaceState, T.BaseClasses) != -1, "Godot class "~T.stringof~" does not inherit PhysicsDirectSpaceState");
		if(_godot_object.ptr is null) return T.init;
		String c = String(T._GODOT_internal_name);
		if(is_class(c)) return inout(T)(_godot_object);
		return T.init;
	}
	inout(T) opCast(T)() inout if(extendsGodotBaseClass!T)
	{
		static assert(is(typeof(T.owner) : PhysicsDirectSpaceState) || staticIndexOf!(PhysicsDirectSpaceState, typeof(T.owner).BaseClasses) != -1, "D class "~T.stringof~" does not extend PhysicsDirectSpaceState");
		if(_godot_object.ptr is null) return null;
		if(has_method(String(`_GDNATIVE_D_typeid`)))
		{
			Object o = cast(Object)godot_nativescript_get_userdata(opCast!godot_object);
			return cast(inout(T))o;
		}
		return null;
	}
	static PhysicsDirectSpaceState _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("PhysicsDirectSpaceState");
		if(constructor is null) return typeof(this).init;
		return cast(PhysicsDirectSpaceState)(constructor());
	}
	enum int TYPE_MASK_KINEMATIC_BODY = 2;
	enum int TYPE_MASK_CHARACTER_BODY = 8;
	enum int TYPE_MASK_AREA = 16;
	enum int TYPE_MASK_COLLISION = 15;
	enum int TYPE_MASK_RIGID_BODY = 4;
	enum int TYPE_MASK_STATIC_BODY = 1;
	Dictionary intersect_ray(in Vector3 from, in Vector3 to, in Array exclude = Array.empty_array, in int collision_layer = 2147483647, in int type_mask = 15)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("PhysicsDirectSpaceState", "intersect_ray");
		Dictionary _GODOT_ret = Dictionary.empty_dictionary;
		const(void*)[5] _GODOT_args = [cast(void*)(&from), cast(void*)(&to), cast(void*)(&exclude), cast(void*)(&collision_layer), cast(void*)(&type_mask), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	Array intersect_shape(in PhysicsShapeQueryParameters shape, in int max_results = 32)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("PhysicsDirectSpaceState", "intersect_shape");
		Array _GODOT_ret = Array.empty_array;
		const(void*)[2] _GODOT_args = [cast(void*)(shape), cast(void*)(&max_results), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	Array cast_motion(in PhysicsShapeQueryParameters shape, in Vector3 motion)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("PhysicsDirectSpaceState", "cast_motion");
		Array _GODOT_ret = Array.empty_array;
		const(void*)[2] _GODOT_args = [cast(void*)(shape), cast(void*)(&motion), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	Array collide_shape(in PhysicsShapeQueryParameters shape, in int max_results = 32)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("PhysicsDirectSpaceState", "collide_shape");
		Array _GODOT_ret = Array.empty_array;
		const(void*)[2] _GODOT_args = [cast(void*)(shape), cast(void*)(&max_results), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	Dictionary get_rest_info(in PhysicsShapeQueryParameters shape)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("PhysicsDirectSpaceState", "get_rest_info");
		Dictionary _GODOT_ret = Dictionary.empty_dictionary;
		const(void*)[1] _GODOT_args = [cast(void*)(shape), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
}
