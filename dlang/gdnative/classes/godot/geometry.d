module godot.geometry;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.object;
@GodotBaseClass struct GeometrySingleton
{
	static immutable string _GODOT_internal_name = "_Geometry";
public:
	static typeof(this) _GODOT_singleton()
	{
		static immutable char* _GODOT_singleton_name = "_Geometry";
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
	bool opEquals(in GeometrySingleton other) const { return _godot_object.ptr is other._godot_object.ptr; }
	GeometrySingleton opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	bool opCast(T : bool)() const { return _godot_object.ptr !is null; }
	inout(T) opCast(T)() inout if(isGodotBaseClass!T)
	{
		static assert(staticIndexOf!(GeometrySingleton, T.BaseClasses) != -1, "Godot class "~T.stringof~" does not inherit GeometrySingleton");
		if(_godot_object.ptr is null) return T.init;
		String c = String(T._GODOT_internal_name);
		if(is_class(c)) return inout(T)(_godot_object);
		return T.init;
	}
	inout(T) opCast(T)() inout if(extendsGodotBaseClass!T)
	{
		static assert(is(typeof(T.owner) : GeometrySingleton) || staticIndexOf!(GeometrySingleton, typeof(T.owner).BaseClasses) != -1, "D class "~T.stringof~" does not extend GeometrySingleton");
		if(_godot_object.ptr is null) return null;
		if(has_method(String(`_GDNATIVE_D_typeid`)))
		{
			Object o = cast(Object)godot_nativescript_get_userdata(opCast!godot_object);
			return cast(inout(T))o;
		}
		return null;
	}
	static GeometrySingleton _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("_Geometry");
		if(constructor is null) return typeof(this).init;
		return cast(GeometrySingleton)(constructor());
	}
	Array build_box_planes(in Vector3 extents)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("_Geometry", "build_box_planes");
		Array _GODOT_ret = Array.empty_array;
		const(void*)[1] _GODOT_args = [cast(void*)(&extents), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	Array build_cylinder_planes(in float radius, in float height, in int sides, in int axis = 2)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("_Geometry", "build_cylinder_planes");
		Array _GODOT_ret = Array.empty_array;
		const(void*)[4] _GODOT_args = [cast(void*)(&radius), cast(void*)(&height), cast(void*)(&sides), cast(void*)(&axis), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	Array build_capsule_planes(in float radius, in float height, in int sides, in int lats, in int axis = 2)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("_Geometry", "build_capsule_planes");
		Array _GODOT_ret = Array.empty_array;
		const(void*)[5] _GODOT_args = [cast(void*)(&radius), cast(void*)(&height), cast(void*)(&sides), cast(void*)(&lats), cast(void*)(&axis), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	float segment_intersects_circle(in Vector2 segment_from, in Vector2 segment_to, in Vector2 circle_pos, in float circle_radius)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("_Geometry", "segment_intersects_circle");
		float _GODOT_ret = float.init;
		const(void*)[4] _GODOT_args = [cast(void*)(&segment_from), cast(void*)(&segment_to), cast(void*)(&circle_pos), cast(void*)(&circle_radius), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void segment_intersects_segment_2d(in Vector2 from_a, in Vector2 to_a, in Vector2 from_b, in Vector2 to_b)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("_Geometry", "segment_intersects_segment_2d");
		const(void*)[4] _GODOT_args = [cast(void*)(&from_a), cast(void*)(&to_a), cast(void*)(&from_b), cast(void*)(&to_b), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	PoolVector2Array get_closest_points_between_segments_2d(in Vector2 p1, in Vector2 q1, in Vector2 p2, in Vector2 q2)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("_Geometry", "get_closest_points_between_segments_2d");
		PoolVector2Array _GODOT_ret = PoolVector2Array.empty;
		const(void*)[4] _GODOT_args = [cast(void*)(&p1), cast(void*)(&q1), cast(void*)(&p2), cast(void*)(&q2), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	PoolVector3Array get_closest_points_between_segments(in Vector3 p1, in Vector3 p2, in Vector3 q1, in Vector3 q2)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("_Geometry", "get_closest_points_between_segments");
		PoolVector3Array _GODOT_ret = PoolVector3Array.empty;
		const(void*)[4] _GODOT_args = [cast(void*)(&p1), cast(void*)(&p2), cast(void*)(&q1), cast(void*)(&q2), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	Vector2 get_closest_point_to_segment_2d(in Vector2 point, in Vector2 s1, in Vector2 s2)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("_Geometry", "get_closest_point_to_segment_2d");
		Vector2 _GODOT_ret = Vector2.init;
		const(void*)[3] _GODOT_args = [cast(void*)(&point), cast(void*)(&s1), cast(void*)(&s2), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	Vector3 get_closest_point_to_segment(in Vector3 point, in Vector3 s1, in Vector3 s2)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("_Geometry", "get_closest_point_to_segment");
		Vector3 _GODOT_ret = Vector3.init;
		const(void*)[3] _GODOT_args = [cast(void*)(&point), cast(void*)(&s1), cast(void*)(&s2), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	Vector2 get_closest_point_to_segment_uncapped_2d(in Vector2 point, in Vector2 s1, in Vector2 s2)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("_Geometry", "get_closest_point_to_segment_uncapped_2d");
		Vector2 _GODOT_ret = Vector2.init;
		const(void*)[3] _GODOT_args = [cast(void*)(&point), cast(void*)(&s1), cast(void*)(&s2), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	Vector3 get_closest_point_to_segment_uncapped(in Vector3 point, in Vector3 s1, in Vector3 s2)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("_Geometry", "get_closest_point_to_segment_uncapped");
		Vector3 _GODOT_ret = Vector3.init;
		const(void*)[3] _GODOT_args = [cast(void*)(&point), cast(void*)(&s1), cast(void*)(&s2), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	int get_uv84_normal_bit(in Vector3 normal)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("_Geometry", "get_uv84_normal_bit");
		int _GODOT_ret = int.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&normal), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void ray_intersects_triangle(in Vector3 from, in Vector3 dir, in Vector3 a, in Vector3 b, in Vector3 c)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("_Geometry", "ray_intersects_triangle");
		const(void*)[5] _GODOT_args = [cast(void*)(&from), cast(void*)(&dir), cast(void*)(&a), cast(void*)(&b), cast(void*)(&c), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void segment_intersects_triangle(in Vector3 from, in Vector3 to, in Vector3 a, in Vector3 b, in Vector3 c)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("_Geometry", "segment_intersects_triangle");
		const(void*)[5] _GODOT_args = [cast(void*)(&from), cast(void*)(&to), cast(void*)(&a), cast(void*)(&b), cast(void*)(&c), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	PoolVector3Array segment_intersects_sphere(in Vector3 from, in Vector3 to, in Vector3 spos, in float sradius)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("_Geometry", "segment_intersects_sphere");
		PoolVector3Array _GODOT_ret = PoolVector3Array.empty;
		const(void*)[4] _GODOT_args = [cast(void*)(&from), cast(void*)(&to), cast(void*)(&spos), cast(void*)(&sradius), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	PoolVector3Array segment_intersects_cylinder(in Vector3 from, in Vector3 to, in float height, in float radius)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("_Geometry", "segment_intersects_cylinder");
		PoolVector3Array _GODOT_ret = PoolVector3Array.empty;
		const(void*)[4] _GODOT_args = [cast(void*)(&from), cast(void*)(&to), cast(void*)(&height), cast(void*)(&radius), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	PoolVector3Array segment_intersects_convex(in Vector3 from, in Vector3 to, in Array planes)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("_Geometry", "segment_intersects_convex");
		PoolVector3Array _GODOT_ret = PoolVector3Array.empty;
		const(void*)[3] _GODOT_args = [cast(void*)(&from), cast(void*)(&to), cast(void*)(&planes), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	bool point_is_inside_triangle(in Vector2 point, in Vector2 a, in Vector2 b, in Vector2 c) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("_Geometry", "point_is_inside_triangle");
		bool _GODOT_ret = bool.init;
		const(void*)[4] _GODOT_args = [cast(void*)(&point), cast(void*)(&a), cast(void*)(&b), cast(void*)(&c), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	PoolIntArray triangulate_polygon(in PoolVector2Array polygon)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("_Geometry", "triangulate_polygon");
		PoolIntArray _GODOT_ret = PoolIntArray.empty;
		const(void*)[1] _GODOT_args = [cast(void*)(&polygon), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	Dictionary make_atlas(in PoolVector2Array sizes)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("_Geometry", "make_atlas");
		Dictionary _GODOT_ret = Dictionary.empty_dictionary;
		const(void*)[1] _GODOT_args = [cast(void*)(&sizes), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
}
@property pragma(inline, true)
GeometrySingleton Geometry()
{
	return GeometrySingleton._GODOT_singleton();
}
