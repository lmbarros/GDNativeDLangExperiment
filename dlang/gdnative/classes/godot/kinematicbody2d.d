module godot.kinematicbody2d;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.object;
import godot.classdb;
import godot.physicsbody2d;
@GodotBaseClass struct KinematicBody2D
{
	static immutable string _GODOT_internal_name = "KinematicBody2D";
public:
	union { godot_object _godot_object; PhysicsBody2D base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	package(godot) void* opCast(T : void*)() const { return cast(void*)_godot_object.ptr; }
	godot_object opCast(T : godot_object)() const { return cast(godot_object)_godot_object; }
	bool opEquals(in KinematicBody2D other) const { return _godot_object.ptr is other._godot_object.ptr; }
	KinematicBody2D opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	bool opCast(T : bool)() const { return _godot_object.ptr !is null; }
	inout(T) opCast(T)() inout if(isGodotBaseClass!T)
	{
		static assert(staticIndexOf!(KinematicBody2D, T.BaseClasses) != -1, "Godot class "~T.stringof~" does not inherit KinematicBody2D");
		if(_godot_object.ptr is null) return T.init;
		String c = String(T._GODOT_internal_name);
		if(is_class(c)) return inout(T)(_godot_object);
		return T.init;
	}
	inout(T) opCast(T)() inout if(extendsGodotBaseClass!T)
	{
		static assert(is(typeof(T.owner) : KinematicBody2D) || staticIndexOf!(KinematicBody2D, typeof(T.owner).BaseClasses) != -1, "D class "~T.stringof~" does not extend KinematicBody2D");
		if(_godot_object.ptr is null) return null;
		if(has_method(String(`_GDNATIVE_D_typeid`)))
		{
			Object o = cast(Object)godot_nativescript_get_userdata(opCast!godot_object);
			return cast(inout(T))o;
		}
		return null;
	}
	static KinematicBody2D _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("KinematicBody2D");
		if(constructor is null) return typeof(this).init;
		return cast(KinematicBody2D)(constructor());
	}
	Dictionary move(in Vector2 rel_vec)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("KinematicBody2D", "move");
		Dictionary _GODOT_ret = Dictionary.empty_dictionary;
		const(void*)[1] _GODOT_args = [cast(void*)(&rel_vec), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	Vector2 move_and_slide(in Vector2 linear_velocity, in Vector2 floor_normal = Vector2(0, 0), in float slope_stop_min_velocity = 5, in int max_bounces = 4, in float floor_max_angle = 0.785398)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("KinematicBody2D", "move_and_slide");
		Vector2 _GODOT_ret = Vector2.init;
		const(void*)[5] _GODOT_args = [cast(void*)(&linear_velocity), cast(void*)(&floor_normal), cast(void*)(&slope_stop_min_velocity), cast(void*)(&max_bounces), cast(void*)(&floor_max_angle), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	bool test_move(in Transform2D from, in Vector2 rel_vec)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("KinematicBody2D", "test_move");
		bool _GODOT_ret = bool.init;
		const(void*)[2] _GODOT_args = [cast(void*)(&from), cast(void*)(&rel_vec), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	bool is_on_floor() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("KinematicBody2D", "is_on_floor");
		bool _GODOT_ret = bool.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	bool is_on_ceiling() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("KinematicBody2D", "is_on_ceiling");
		bool _GODOT_ret = bool.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	bool is_on_wall() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("KinematicBody2D", "is_on_wall");
		bool _GODOT_ret = bool.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	Vector2 get_floor_velocity() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("KinematicBody2D", "get_floor_velocity");
		Vector2 _GODOT_ret = Vector2.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_safe_margin(in float pixels)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("KinematicBody2D", "set_safe_margin");
		const(void*)[1] _GODOT_args = [cast(void*)(&pixels), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	float get_safe_margin() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("KinematicBody2D", "get_safe_margin");
		float _GODOT_ret = float.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	int get_collision_count() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("KinematicBody2D", "get_collision_count");
		int _GODOT_ret = int.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	Vector2 get_collision_position(in int collision) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("KinematicBody2D", "get_collision_position");
		Vector2 _GODOT_ret = Vector2.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&collision), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	Vector2 get_collision_normal(in int collision) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("KinematicBody2D", "get_collision_normal");
		Vector2 _GODOT_ret = Vector2.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&collision), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	Vector2 get_collision_travel(in int collision) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("KinematicBody2D", "get_collision_travel");
		Vector2 _GODOT_ret = Vector2.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&collision), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	Vector2 get_collision_remainder(in int collision) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("KinematicBody2D", "get_collision_remainder");
		Vector2 _GODOT_ret = Vector2.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&collision), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	GodotObject get_collision_local_shape(in int collision) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("KinematicBody2D", "get_collision_local_shape");
		GodotObject _GODOT_ret = GodotObject.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&collision), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	GodotObject get_collision_collider(in int collision) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("KinematicBody2D", "get_collision_collider");
		GodotObject _GODOT_ret = GodotObject.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&collision), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	int get_collision_collider_id(in int collision) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("KinematicBody2D", "get_collision_collider_id");
		int _GODOT_ret = int.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&collision), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	GodotObject get_collision_collider_shape(in int collision) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("KinematicBody2D", "get_collision_collider_shape");
		GodotObject _GODOT_ret = GodotObject.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&collision), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	int get_collision_collider_shape_index(in int collision) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("KinematicBody2D", "get_collision_collider_shape_index");
		int _GODOT_ret = int.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&collision), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	Vector2 get_collision_collider_velocity(in int collision) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("KinematicBody2D", "get_collision_collider_velocity");
		Vector2 _GODOT_ret = Vector2.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&collision), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void get_collision_collider_metadata(in int collision) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("KinematicBody2D", "get_collision_collider_metadata");
		const(void*)[1] _GODOT_args = [cast(void*)(&collision), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
}
