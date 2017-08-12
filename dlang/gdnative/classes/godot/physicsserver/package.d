module godot.physicsserver;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.object;
import godot.physicsdirectspacestate;
@GodotBaseClass struct PhysicsServerSingleton
{
	static immutable string _GODOT_internal_name = "PhysicsServer";
public:
	static typeof(this) _GODOT_singleton()
	{
		static immutable char* _GODOT_singleton_name = "PhysicsServer";
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
	bool opEquals(in PhysicsServerSingleton other) const { return _godot_object.ptr is other._godot_object.ptr; }
	PhysicsServerSingleton opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	bool opCast(T : bool)() const { return _godot_object.ptr !is null; }
	inout(T) opCast(T)() inout if(isGodotBaseClass!T)
	{
		static assert(staticIndexOf!(PhysicsServerSingleton, T.BaseClasses) != -1, "Godot class "~T.stringof~" does not inherit PhysicsServerSingleton");
		if(_godot_object.ptr is null) return T.init;
		String c = String(T._GODOT_internal_name);
		if(is_class(c)) return inout(T)(_godot_object);
		return T.init;
	}
	inout(T) opCast(T)() inout if(extendsGodotBaseClass!T)
	{
		static assert(is(typeof(T.owner) : PhysicsServerSingleton) || staticIndexOf!(PhysicsServerSingleton, typeof(T.owner).BaseClasses) != -1, "D class "~T.stringof~" does not extend PhysicsServerSingleton");
		if(_godot_object.ptr is null) return null;
		if(has_method(String(`_GDNATIVE_D_typeid`)))
		{
			Object o = cast(Object)godot_nativescript_get_userdata(opCast!godot_object);
			return cast(inout(T))o;
		}
		return null;
	}
	static PhysicsServerSingleton _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("PhysicsServer");
		if(constructor is null) return typeof(this).init;
		return cast(PhysicsServerSingleton)(constructor());
	}
	enum int G6DOF_JOINT_LINEAR_LIMIT_SOFTNESS = 2;
	enum int SLIDER_JOINT_ANGULAR_MOTION_SOFTNESS = 16;
	enum int BODY_MODE_RIGID = 2;
	enum int G6DOF_JOINT_ANGULAR_FORCE_LIMIT = 10;
	enum int SLIDER_JOINT_ANGULAR_ORTHOGONAL_RESTITUTION = 20;
	enum int SLIDER_JOINT_LINEAR_LIMIT_DAMPING = 4;
	enum int SLIDER_JOINT_LINEAR_MOTION_RESTITUTION = 6;
	enum int CONE_TWIST_JOINT_BIAS = 2;
	enum int G6DOF_JOINT_LINEAR_RESTITUTION = 3;
	enum int SHAPE_SPHERE = 2;
	enum int HINGE_JOINT_FLAG_ENABLE_MOTOR = 1;
	enum int SLIDER_JOINT_LINEAR_ORTHOGONAL_SOFTNESS = 8;
	enum int JOINT_CONE_TWIST = 3;
	enum int JOINT_6DOF = 4;
	enum int PIN_JOINT_DAMPING = 1;
	enum int HINGE_JOINT_BIAS = 0;
	enum int BODY_PARAM_LINEAR_DAMP = 4;
	enum int BODY_STATE_CAN_SLEEP = 4;
	enum int SLIDER_JOINT_ANGULAR_LIMIT_UPPER = 11;
	enum int HINGE_JOINT_MOTOR_MAX_IMPULSE = 7;
	enum int SLIDER_JOINT_ANGULAR_ORTHOGONAL_SOFTNESS = 19;
	enum int G6DOF_JOINT_ANGULAR_UPPER_LIMIT = 6;
	enum int HINGE_JOINT_LIMIT_BIAS = 3;
	enum int SLIDER_JOINT_ANGULAR_LIMIT_DAMPING = 15;
	enum int SHAPE_CONCAVE_POLYGON = 6;
	enum int HINGE_JOINT_LIMIT_RELAXATION = 5;
	enum int SLIDER_JOINT_ANGULAR_LIMIT_RESTITUTION = 14;
	enum int BODY_STATE_ANGULAR_VELOCITY = 2;
	enum int AREA_SPACE_OVERRIDE_REPLACE = 3;
	enum int G6DOF_JOINT_ANGULAR_RESTITUTION = 9;
	enum int SLIDER_JOINT_LINEAR_LIMIT_LOWER = 1;
	enum int JOINT_PIN = 0;
	enum int SLIDER_JOINT_ANGULAR_LIMIT_SOFTNESS = 13;
	enum int HINGE_JOINT_FLAG_USE_LIMIT = 0;
	enum int AREA_PARAM_LINEAR_DAMP = 5;
	enum int SLIDER_JOINT_ANGULAR_MOTION_RESTITUTION = 17;
	enum int HINGE_JOINT_MOTOR_TARGET_VELOCITY = 6;
	enum int G6DOF_JOINT_ANGULAR_LOWER_LIMIT = 5;
	enum int SLIDER_JOINT_ANGULAR_MOTION_DAMPING = 18;
	enum int JOINT_HINGE = 1;
	enum int SHAPE_BOX = 3;
	enum int SHAPE_CAPSULE = 4;
	enum int SHAPE_CONVEX_POLYGON = 5;
	enum int BODY_PARAM_MAX = 6;
	enum int JOINT_SLIDER = 2;
	enum int G6DOF_JOINT_ANGULAR_MOTOR_FORCE_LIMIT = 13;
	enum int PIN_JOINT_BIAS = 0;
	enum int CONE_TWIST_JOINT_SOFTNESS = 3;
	enum int CONE_TWIST_JOINT_RELAXATION = 4;
	enum int SHAPE_HEIGHTMAP = 7;
	enum int SLIDER_JOINT_LINEAR_ORTHOGONAL_DAMPING = 10;
	enum int BODY_MODE_CHARACTER = 3;
	enum int BODY_PARAM_MASS = 2;
	enum int INFO_ISLAND_COUNT = 2;
	enum int BODY_PARAM_BOUNCE = 0;
	enum int SLIDER_JOINT_LINEAR_LIMIT_SOFTNESS = 2;
	enum int BODY_STATE_LINEAR_VELOCITY = 1;
	enum int SLIDER_JOINT_LINEAR_LIMIT_RESTITUTION = 3;
	enum int AREA_BODY_REMOVED = 1;
	enum int BODY_PARAM_GRAVITY_SCALE = 3;
	enum int AREA_PARAM_GRAVITY_DISTANCE_SCALE = 3;
	enum int G6DOF_JOINT_ANGULAR_DAMPING = 8;
	enum int G6DOF_JOINT_LINEAR_LOWER_LIMIT = 0;
	enum int PIN_JOINT_IMPULSE_CLAMP = 2;
	enum int SLIDER_JOINT_MAX = 22;
	enum int AREA_PARAM_GRAVITY = 0;
	enum int SHAPE_RAY = 1;
	enum int AREA_SPACE_OVERRIDE_DISABLED = 0;
	enum int BODY_PARAM_FRICTION = 1;
	enum int SLIDER_JOINT_LINEAR_MOTION_DAMPING = 7;
	enum int INFO_ACTIVE_OBJECTS = 0;
	enum int AREA_SPACE_OVERRIDE_COMBINE_REPLACE = 2;
	enum int SLIDER_JOINT_LINEAR_LIMIT_UPPER = 0;
	enum int G6DOF_JOINT_ANGULAR_LIMIT_SOFTNESS = 7;
	enum int AREA_PARAM_GRAVITY_VECTOR = 1;
	enum int AREA_PARAM_PRIORITY = 7;
	enum int HINGE_JOINT_LIMIT_LOWER = 2;
	enum int G6DOF_JOINT_LINEAR_UPPER_LIMIT = 1;
	enum int HINGE_JOINT_LIMIT_SOFTNESS = 4;
	enum int G6DOF_JOINT_ANGULAR_ERP = 11;
	enum int BODY_STATE_SLEEPING = 3;
	enum int AREA_PARAM_GRAVITY_IS_POINT = 2;
	enum int AREA_PARAM_GRAVITY_POINT_ATTENUATION = 4;
	enum int AREA_BODY_ADDED = 0;
	enum int HINGE_JOINT_LIMIT_UPPER = 1;
	enum int SLIDER_JOINT_ANGULAR_LIMIT_LOWER = 12;
	enum int SLIDER_JOINT_LINEAR_ORTHOGONAL_RESTITUTION = 9;
	enum int AREA_SPACE_OVERRIDE_COMBINE = 1;
	enum int INFO_COLLISION_PAIRS = 1;
	enum int AREA_PARAM_ANGULAR_DAMP = 6;
	enum int SLIDER_JOINT_ANGULAR_ORTHOGONAL_DAMPING = 21;
	enum int G6DOF_JOINT_FLAG_ENABLE_MOTOR = 2;
	enum int BODY_PARAM_ANGULAR_DAMP = 5;
	enum int G6DOF_JOINT_LINEAR_DAMPING = 4;
	enum int CONE_TWIST_JOINT_SWING_SPAN = 0;
	enum int BODY_MODE_KINEMATIC = 1;
	enum int SLIDER_JOINT_LINEAR_MOTION_SOFTNESS = 5;
	enum int G6DOF_JOINT_FLAG_ENABLE_ANGULAR_LIMIT = 1;
	enum int G6DOF_JOINT_ANGULAR_MOTOR_TARGET_VELOCITY = 12;
	enum int SHAPE_CUSTOM = 8;
	enum int CONE_TWIST_JOINT_TWIST_SPAN = 1;
	enum int BODY_STATE_TRANSFORM = 0;
	enum int AREA_SPACE_OVERRIDE_REPLACE_COMBINE = 4;
	enum int SHAPE_PLANE = 0;
	enum int BODY_MODE_STATIC = 0;
	enum int G6DOF_JOINT_FLAG_ENABLE_LINEAR_LIMIT = 0;
	RID shape_create(in int type)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("PhysicsServer", "shape_create");
		RID _GODOT_ret = RID.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&type), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void shape_set_data(in RID shape, in Variant data)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("PhysicsServer", "shape_set_data");
		const(void*)[2] _GODOT_args = [cast(void*)(&shape), cast(void*)(&data), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	int shape_get_type(in RID shape) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("PhysicsServer", "shape_get_type");
		int _GODOT_ret = int.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&shape), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void shape_get_data(in RID shape) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("PhysicsServer", "shape_get_data");
		const(void*)[1] _GODOT_args = [cast(void*)(&shape), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	RID space_create()
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("PhysicsServer", "space_create");
		RID _GODOT_ret = RID.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void space_set_active(in RID space, in bool active)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("PhysicsServer", "space_set_active");
		const(void*)[2] _GODOT_args = [cast(void*)(&space), cast(void*)(&active), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	bool space_is_active(in RID space) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("PhysicsServer", "space_is_active");
		bool _GODOT_ret = bool.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&space), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void space_set_param(in RID space, in int param, in float value)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("PhysicsServer", "space_set_param");
		const(void*)[3] _GODOT_args = [cast(void*)(&space), cast(void*)(&param), cast(void*)(&value), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	float space_get_param(in RID space, in int param) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("PhysicsServer", "space_get_param");
		float _GODOT_ret = float.init;
		const(void*)[2] _GODOT_args = [cast(void*)(&space), cast(void*)(&param), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	PhysicsDirectSpaceState space_get_direct_state(in RID space)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("PhysicsServer", "space_get_direct_state");
		PhysicsDirectSpaceState _GODOT_ret = PhysicsDirectSpaceState.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&space), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	RID area_create()
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("PhysicsServer", "area_create");
		RID _GODOT_ret = RID.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void area_set_space(in RID area, in RID space)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("PhysicsServer", "area_set_space");
		const(void*)[2] _GODOT_args = [cast(void*)(&area), cast(void*)(&space), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	RID area_get_space(in RID area) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("PhysicsServer", "area_get_space");
		RID _GODOT_ret = RID.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&area), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void area_set_space_override_mode(in RID area, in int mode)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("PhysicsServer", "area_set_space_override_mode");
		const(void*)[2] _GODOT_args = [cast(void*)(&area), cast(void*)(&mode), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	int area_get_space_override_mode(in RID area) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("PhysicsServer", "area_get_space_override_mode");
		int _GODOT_ret = int.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&area), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void area_add_shape(in RID area, in RID shape, in Transform transform = Transform.init)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("PhysicsServer", "area_add_shape");
		const(void*)[3] _GODOT_args = [cast(void*)(&area), cast(void*)(&shape), cast(void*)(&transform), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void area_set_shape(in RID area, in int shape_idx, in RID shape)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("PhysicsServer", "area_set_shape");
		const(void*)[3] _GODOT_args = [cast(void*)(&area), cast(void*)(&shape_idx), cast(void*)(&shape), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void area_set_shape_transform(in RID area, in int shape_idx, in Transform transform)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("PhysicsServer", "area_set_shape_transform");
		const(void*)[3] _GODOT_args = [cast(void*)(&area), cast(void*)(&shape_idx), cast(void*)(&transform), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	int area_get_shape_count(in RID area) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("PhysicsServer", "area_get_shape_count");
		int _GODOT_ret = int.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&area), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	RID area_get_shape(in RID area, in int shape_idx) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("PhysicsServer", "area_get_shape");
		RID _GODOT_ret = RID.init;
		const(void*)[2] _GODOT_args = [cast(void*)(&area), cast(void*)(&shape_idx), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	Transform area_get_shape_transform(in RID area, in int shape_idx) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("PhysicsServer", "area_get_shape_transform");
		Transform _GODOT_ret = Transform.init;
		const(void*)[2] _GODOT_args = [cast(void*)(&area), cast(void*)(&shape_idx), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void area_remove_shape(in RID area, in int shape_idx)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("PhysicsServer", "area_remove_shape");
		const(void*)[2] _GODOT_args = [cast(void*)(&area), cast(void*)(&shape_idx), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void area_clear_shapes(in RID area)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("PhysicsServer", "area_clear_shapes");
		const(void*)[1] _GODOT_args = [cast(void*)(&area), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void area_set_collision_layer(in RID area, in int layer)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("PhysicsServer", "area_set_collision_layer");
		const(void*)[2] _GODOT_args = [cast(void*)(&area), cast(void*)(&layer), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void area_set_collision_mask(in RID area, in int mask)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("PhysicsServer", "area_set_collision_mask");
		const(void*)[2] _GODOT_args = [cast(void*)(&area), cast(void*)(&mask), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void area_set_param(in RID area, in int param, in Variant value)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("PhysicsServer", "area_set_param");
		const(void*)[3] _GODOT_args = [cast(void*)(&area), cast(void*)(&param), cast(void*)(&value), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void area_set_transform(in RID area, in Transform transform)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("PhysicsServer", "area_set_transform");
		const(void*)[2] _GODOT_args = [cast(void*)(&area), cast(void*)(&transform), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void area_get_param(in RID area, in int param) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("PhysicsServer", "area_get_param");
		const(void*)[2] _GODOT_args = [cast(void*)(&area), cast(void*)(&param), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	Transform area_get_transform(in RID area) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("PhysicsServer", "area_get_transform");
		Transform _GODOT_ret = Transform.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&area), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void area_attach_object_instance_ID(in RID area, in int id)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("PhysicsServer", "area_attach_object_instance_ID");
		const(void*)[2] _GODOT_args = [cast(void*)(&area), cast(void*)(&id), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	int area_get_object_instance_ID(in RID area) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("PhysicsServer", "area_get_object_instance_ID");
		int _GODOT_ret = int.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&area), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void area_set_monitor_callback(in RID area, in GodotObject receiver, in String method)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("PhysicsServer", "area_set_monitor_callback");
		const(void*)[3] _GODOT_args = [cast(void*)(&area), cast(void*)(receiver), cast(void*)(&method), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void area_set_ray_pickable(in RID area, in bool enable)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("PhysicsServer", "area_set_ray_pickable");
		const(void*)[2] _GODOT_args = [cast(void*)(&area), cast(void*)(&enable), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	bool area_is_ray_pickable(in RID area) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("PhysicsServer", "area_is_ray_pickable");
		bool _GODOT_ret = bool.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&area), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	RID body_create(in int mode = 2, in bool init_sleeping = false)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("PhysicsServer", "body_create");
		RID _GODOT_ret = RID.init;
		const(void*)[2] _GODOT_args = [cast(void*)(&mode), cast(void*)(&init_sleeping), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void body_set_space(in RID _body, in RID space)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("PhysicsServer", "body_set_space");
		const(void*)[2] _GODOT_args = [cast(void*)(&_body), cast(void*)(&space), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	RID body_get_space(in RID _body) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("PhysicsServer", "body_get_space");
		RID _GODOT_ret = RID.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&_body), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void body_set_mode(in RID _body, in int mode)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("PhysicsServer", "body_set_mode");
		const(void*)[2] _GODOT_args = [cast(void*)(&_body), cast(void*)(&mode), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	int body_get_mode(in RID _body) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("PhysicsServer", "body_get_mode");
		int _GODOT_ret = int.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&_body), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void body_set_collision_layer(in RID _body, in int layer)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("PhysicsServer", "body_set_collision_layer");
		const(void*)[2] _GODOT_args = [cast(void*)(&_body), cast(void*)(&layer), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	int body_get_collision_layer(in RID _body) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("PhysicsServer", "body_get_collision_layer");
		int _GODOT_ret = int.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&_body), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void body_set_collision_mask(in RID _body, in int mask)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("PhysicsServer", "body_set_collision_mask");
		const(void*)[2] _GODOT_args = [cast(void*)(&_body), cast(void*)(&mask), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	int body_get_collision_mask(in RID _body) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("PhysicsServer", "body_get_collision_mask");
		int _GODOT_ret = int.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&_body), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void body_add_shape(in RID _body, in RID shape, in Transform transform = Transform.init)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("PhysicsServer", "body_add_shape");
		const(void*)[3] _GODOT_args = [cast(void*)(&_body), cast(void*)(&shape), cast(void*)(&transform), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void body_set_shape(in RID _body, in int shape_idx, in RID shape)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("PhysicsServer", "body_set_shape");
		const(void*)[3] _GODOT_args = [cast(void*)(&_body), cast(void*)(&shape_idx), cast(void*)(&shape), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void body_set_shape_transform(in RID _body, in int shape_idx, in Transform transform)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("PhysicsServer", "body_set_shape_transform");
		const(void*)[3] _GODOT_args = [cast(void*)(&_body), cast(void*)(&shape_idx), cast(void*)(&transform), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	int body_get_shape_count(in RID _body) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("PhysicsServer", "body_get_shape_count");
		int _GODOT_ret = int.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&_body), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	RID body_get_shape(in RID _body, in int shape_idx) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("PhysicsServer", "body_get_shape");
		RID _GODOT_ret = RID.init;
		const(void*)[2] _GODOT_args = [cast(void*)(&_body), cast(void*)(&shape_idx), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	Transform body_get_shape_transform(in RID _body, in int shape_idx) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("PhysicsServer", "body_get_shape_transform");
		Transform _GODOT_ret = Transform.init;
		const(void*)[2] _GODOT_args = [cast(void*)(&_body), cast(void*)(&shape_idx), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void body_remove_shape(in RID _body, in int shape_idx)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("PhysicsServer", "body_remove_shape");
		const(void*)[2] _GODOT_args = [cast(void*)(&_body), cast(void*)(&shape_idx), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void body_clear_shapes(in RID _body)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("PhysicsServer", "body_clear_shapes");
		const(void*)[1] _GODOT_args = [cast(void*)(&_body), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void body_attach_object_instance_ID(in RID _body, in int id)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("PhysicsServer", "body_attach_object_instance_ID");
		const(void*)[2] _GODOT_args = [cast(void*)(&_body), cast(void*)(&id), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	int body_get_object_instance_ID(in RID _body) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("PhysicsServer", "body_get_object_instance_ID");
		int _GODOT_ret = int.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&_body), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void body_set_enable_continuous_collision_detection(in RID _body, in bool enable)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("PhysicsServer", "body_set_enable_continuous_collision_detection");
		const(void*)[2] _GODOT_args = [cast(void*)(&_body), cast(void*)(&enable), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	bool body_is_continuous_collision_detection_enabled(in RID _body) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("PhysicsServer", "body_is_continuous_collision_detection_enabled");
		bool _GODOT_ret = bool.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&_body), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void body_set_param(in RID _body, in int param, in float value)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("PhysicsServer", "body_set_param");
		const(void*)[3] _GODOT_args = [cast(void*)(&_body), cast(void*)(&param), cast(void*)(&value), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	float body_get_param(in RID _body, in int param) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("PhysicsServer", "body_get_param");
		float _GODOT_ret = float.init;
		const(void*)[2] _GODOT_args = [cast(void*)(&_body), cast(void*)(&param), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void body_set_state(in RID _body, in int state, in Variant value)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("PhysicsServer", "body_set_state");
		const(void*)[3] _GODOT_args = [cast(void*)(&_body), cast(void*)(&state), cast(void*)(&value), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void body_get_state(in RID _body, in int state) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("PhysicsServer", "body_get_state");
		const(void*)[2] _GODOT_args = [cast(void*)(&_body), cast(void*)(&state), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void body_apply_impulse(in RID _body, in Vector3 pos, in Vector3 impulse)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("PhysicsServer", "body_apply_impulse");
		const(void*)[3] _GODOT_args = [cast(void*)(&_body), cast(void*)(&pos), cast(void*)(&impulse), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void body_apply_torque_impulse(in RID _body, in Vector3 impulse)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("PhysicsServer", "body_apply_torque_impulse");
		const(void*)[2] _GODOT_args = [cast(void*)(&_body), cast(void*)(&impulse), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void body_set_axis_velocity(in RID _body, in Vector3 axis_velocity)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("PhysicsServer", "body_set_axis_velocity");
		const(void*)[2] _GODOT_args = [cast(void*)(&_body), cast(void*)(&axis_velocity), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void body_set_axis_lock(in RID _body, in int axis)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("PhysicsServer", "body_set_axis_lock");
		const(void*)[2] _GODOT_args = [cast(void*)(&_body), cast(void*)(&axis), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	int body_get_axis_lock(in RID _body) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("PhysicsServer", "body_get_axis_lock");
		int _GODOT_ret = int.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&_body), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void body_add_collision_exception(in RID _body, in RID excepted_body)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("PhysicsServer", "body_add_collision_exception");
		const(void*)[2] _GODOT_args = [cast(void*)(&_body), cast(void*)(&excepted_body), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void body_remove_collision_exception(in RID _body, in RID excepted_body)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("PhysicsServer", "body_remove_collision_exception");
		const(void*)[2] _GODOT_args = [cast(void*)(&_body), cast(void*)(&excepted_body), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void body_set_max_contacts_reported(in RID _body, in int amount)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("PhysicsServer", "body_set_max_contacts_reported");
		const(void*)[2] _GODOT_args = [cast(void*)(&_body), cast(void*)(&amount), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	int body_get_max_contacts_reported(in RID _body) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("PhysicsServer", "body_get_max_contacts_reported");
		int _GODOT_ret = int.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&_body), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void body_set_omit_force_integration(in RID _body, in bool enable)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("PhysicsServer", "body_set_omit_force_integration");
		const(void*)[2] _GODOT_args = [cast(void*)(&_body), cast(void*)(&enable), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	bool body_is_omitting_force_integration(in RID _body) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("PhysicsServer", "body_is_omitting_force_integration");
		bool _GODOT_ret = bool.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&_body), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void body_set_force_integration_callback(in RID _body, in GodotObject receiver, in String method, in Variant userdata = Variant.nil)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("PhysicsServer", "body_set_force_integration_callback");
		const(void*)[4] _GODOT_args = [cast(void*)(&_body), cast(void*)(receiver), cast(void*)(&method), cast(void*)(&userdata), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void body_set_ray_pickable(in RID _body, in bool enable)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("PhysicsServer", "body_set_ray_pickable");
		const(void*)[2] _GODOT_args = [cast(void*)(&_body), cast(void*)(&enable), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	bool body_is_ray_pickable(in RID _body) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("PhysicsServer", "body_is_ray_pickable");
		bool _GODOT_ret = bool.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&_body), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	RID joint_create_pin(in RID body_A, in Vector3 local_A, in RID body_B, in Vector3 local_B)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("PhysicsServer", "joint_create_pin");
		RID _GODOT_ret = RID.init;
		const(void*)[4] _GODOT_args = [cast(void*)(&body_A), cast(void*)(&local_A), cast(void*)(&body_B), cast(void*)(&local_B), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void pin_joint_set_param(in RID joint, in int param, in float value)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("PhysicsServer", "pin_joint_set_param");
		const(void*)[3] _GODOT_args = [cast(void*)(&joint), cast(void*)(&param), cast(void*)(&value), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	float pin_joint_get_param(in RID joint, in int param) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("PhysicsServer", "pin_joint_get_param");
		float _GODOT_ret = float.init;
		const(void*)[2] _GODOT_args = [cast(void*)(&joint), cast(void*)(&param), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void pin_joint_set_local_A(in RID joint, in Vector3 local_A)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("PhysicsServer", "pin_joint_set_local_A");
		const(void*)[2] _GODOT_args = [cast(void*)(&joint), cast(void*)(&local_A), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	Vector3 pin_joint_get_local_A(in RID joint) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("PhysicsServer", "pin_joint_get_local_A");
		Vector3 _GODOT_ret = Vector3.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&joint), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void pin_joint_set_local_B(in RID joint, in Vector3 local_B)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("PhysicsServer", "pin_joint_set_local_B");
		const(void*)[2] _GODOT_args = [cast(void*)(&joint), cast(void*)(&local_B), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	Vector3 pin_joint_get_local_B(in RID joint) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("PhysicsServer", "pin_joint_get_local_B");
		Vector3 _GODOT_ret = Vector3.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&joint), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	RID joint_create_hinge(in RID body_A, in Transform hinge_A, in RID body_B, in Transform hinge_B)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("PhysicsServer", "joint_create_hinge");
		RID _GODOT_ret = RID.init;
		const(void*)[4] _GODOT_args = [cast(void*)(&body_A), cast(void*)(&hinge_A), cast(void*)(&body_B), cast(void*)(&hinge_B), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void hinge_joint_set_param(in RID joint, in int param, in float value)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("PhysicsServer", "hinge_joint_set_param");
		const(void*)[3] _GODOT_args = [cast(void*)(&joint), cast(void*)(&param), cast(void*)(&value), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	float hinge_joint_get_param(in RID joint, in int param) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("PhysicsServer", "hinge_joint_get_param");
		float _GODOT_ret = float.init;
		const(void*)[2] _GODOT_args = [cast(void*)(&joint), cast(void*)(&param), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void hinge_joint_set_flag(in RID joint, in int flag, in bool enabled)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("PhysicsServer", "hinge_joint_set_flag");
		const(void*)[3] _GODOT_args = [cast(void*)(&joint), cast(void*)(&flag), cast(void*)(&enabled), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	bool hinge_joint_get_flag(in RID joint, in int flag) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("PhysicsServer", "hinge_joint_get_flag");
		bool _GODOT_ret = bool.init;
		const(void*)[2] _GODOT_args = [cast(void*)(&joint), cast(void*)(&flag), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	RID joint_create_slider(in RID body_A, in Transform local_ref_A, in RID body_B, in Transform local_ref_B)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("PhysicsServer", "joint_create_slider");
		RID _GODOT_ret = RID.init;
		const(void*)[4] _GODOT_args = [cast(void*)(&body_A), cast(void*)(&local_ref_A), cast(void*)(&body_B), cast(void*)(&local_ref_B), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void slider_joint_set_param(in RID joint, in int param, in float value)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("PhysicsServer", "slider_joint_set_param");
		const(void*)[3] _GODOT_args = [cast(void*)(&joint), cast(void*)(&param), cast(void*)(&value), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	float slider_joint_get_param(in RID joint, in int param) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("PhysicsServer", "slider_joint_get_param");
		float _GODOT_ret = float.init;
		const(void*)[2] _GODOT_args = [cast(void*)(&joint), cast(void*)(&param), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	RID joint_create_cone_twist(in RID body_A, in Transform local_ref_A, in RID body_B, in Transform local_ref_B)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("PhysicsServer", "joint_create_cone_twist");
		RID _GODOT_ret = RID.init;
		const(void*)[4] _GODOT_args = [cast(void*)(&body_A), cast(void*)(&local_ref_A), cast(void*)(&body_B), cast(void*)(&local_ref_B), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void cone_twist_joint_set_param(in RID joint, in int param, in float value)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("PhysicsServer", "cone_twist_joint_set_param");
		const(void*)[3] _GODOT_args = [cast(void*)(&joint), cast(void*)(&param), cast(void*)(&value), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	float cone_twist_joint_get_param(in RID joint, in int param) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("PhysicsServer", "cone_twist_joint_get_param");
		float _GODOT_ret = float.init;
		const(void*)[2] _GODOT_args = [cast(void*)(&joint), cast(void*)(&param), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	int joint_get_type(in RID joint) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("PhysicsServer", "joint_get_type");
		int _GODOT_ret = int.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&joint), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void joint_set_solver_priority(in RID joint, in int priority)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("PhysicsServer", "joint_set_solver_priority");
		const(void*)[2] _GODOT_args = [cast(void*)(&joint), cast(void*)(&priority), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	int joint_get_solver_priority(in RID joint) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("PhysicsServer", "joint_get_solver_priority");
		int _GODOT_ret = int.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&joint), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	RID joint_create_generic_6dof(in RID body_A, in Transform local_ref_A, in RID body_B, in Transform local_ref_B)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("PhysicsServer", "joint_create_generic_6dof");
		RID _GODOT_ret = RID.init;
		const(void*)[4] _GODOT_args = [cast(void*)(&body_A), cast(void*)(&local_ref_A), cast(void*)(&body_B), cast(void*)(&local_ref_B), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void generic_6dof_joint_set_param(in RID joint, in int axis, in int param, in float value)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("PhysicsServer", "generic_6dof_joint_set_param");
		const(void*)[4] _GODOT_args = [cast(void*)(&joint), cast(void*)(&axis), cast(void*)(&param), cast(void*)(&value), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	float generic_6dof_joint_get_param(in RID joint, in int axis, in int param)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("PhysicsServer", "generic_6dof_joint_get_param");
		float _GODOT_ret = float.init;
		const(void*)[3] _GODOT_args = [cast(void*)(&joint), cast(void*)(&axis), cast(void*)(&param), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void generic_6dof_joint_set_flag(in RID joint, in int axis, in int flag, in bool enable)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("PhysicsServer", "generic_6dof_joint_set_flag");
		const(void*)[4] _GODOT_args = [cast(void*)(&joint), cast(void*)(&axis), cast(void*)(&flag), cast(void*)(&enable), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	bool generic_6dof_joint_get_flag(in RID joint, in int axis, in int flag)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("PhysicsServer", "generic_6dof_joint_get_flag");
		bool _GODOT_ret = bool.init;
		const(void*)[3] _GODOT_args = [cast(void*)(&joint), cast(void*)(&axis), cast(void*)(&flag), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void free_rid(in RID rid)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("PhysicsServer", "free_rid");
		const(void*)[1] _GODOT_args = [cast(void*)(&rid), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void set_active(in bool active)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("PhysicsServer", "set_active");
		const(void*)[1] _GODOT_args = [cast(void*)(&active), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	int get_process_info(in int process_info)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("PhysicsServer", "get_process_info");
		int _GODOT_ret = int.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&process_info), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
}
@property pragma(inline, true)
PhysicsServerSingleton PhysicsServer()
{
	return PhysicsServerSingleton._GODOT_singleton();
}
