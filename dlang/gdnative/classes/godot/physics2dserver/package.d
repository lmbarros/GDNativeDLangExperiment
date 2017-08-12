module godot.physics2dserver;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.object;
import godot.physics2ddirectspacestate;
import godot.physics2dtestmotionresult;
@GodotBaseClass struct Physics2DServerSingleton
{
	static immutable string _GODOT_internal_name = "Physics2DServer";
public:
	static typeof(this) _GODOT_singleton()
	{
		static immutable char* _GODOT_singleton_name = "Physics2DServer";
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
	bool opEquals(in Physics2DServerSingleton other) const { return _godot_object.ptr is other._godot_object.ptr; }
	Physics2DServerSingleton opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	bool opCast(T : bool)() const { return _godot_object.ptr !is null; }
	inout(T) opCast(T)() inout if(isGodotBaseClass!T)
	{
		static assert(staticIndexOf!(Physics2DServerSingleton, T.BaseClasses) != -1, "Godot class "~T.stringof~" does not inherit Physics2DServerSingleton");
		if(_godot_object.ptr is null) return T.init;
		String c = String(T._GODOT_internal_name);
		if(is_class(c)) return inout(T)(_godot_object);
		return T.init;
	}
	inout(T) opCast(T)() inout if(extendsGodotBaseClass!T)
	{
		static assert(is(typeof(T.owner) : Physics2DServerSingleton) || staticIndexOf!(Physics2DServerSingleton, typeof(T.owner).BaseClasses) != -1, "D class "~T.stringof~" does not extend Physics2DServerSingleton");
		if(_godot_object.ptr is null) return null;
		if(has_method(String(`_GDNATIVE_D_typeid`)))
		{
			Object o = cast(Object)godot_nativescript_get_userdata(opCast!godot_object);
			return cast(inout(T))o;
		}
		return null;
	}
	static Physics2DServerSingleton _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("Physics2DServer");
		if(constructor is null) return typeof(this).init;
		return cast(Physics2DServerSingleton)(constructor());
	}
	enum int AREA_SPACE_OVERRIDE_REPLACE = 3;
	enum int BODY_PARAM_BOUNCE = 0;
	enum int BODY_STATE_SLEEPING = 3;
	enum int AREA_PARAM_GRAVITY_IS_POINT = 2;
	enum int CCD_MODE_CAST_SHAPE = 2;
	enum int BODY_MODE_RIGID = 2;
	enum int DAMPED_STRING_DAMPING = 2;
	enum int AREA_PARAM_GRAVITY_POINT_ATTENUATION = 4;
	enum int AREA_BODY_ADDED = 0;
	enum int BODY_STATE_LINEAR_VELOCITY = 1;
	enum int AREA_BODY_REMOVED = 1;
	enum int JOINT_PIN = 0;
	enum int BODY_PARAM_GRAVITY_SCALE = 4;
	enum int AREA_SPACE_OVERRIDE_COMBINE = 1;
	enum int SHAPE_LINE = 0;
	enum int AREA_PARAM_LINEAR_DAMP = 5;
	enum int AREA_PARAM_GRAVITY_DISTANCE_SCALE = 3;
	enum int SHAPE_SEGMENT = 2;
	enum int CCD_MODE_DISABLED = 0;
	enum int AREA_PARAM_ANGULAR_DAMP = 6;
	enum int INFO_COLLISION_PAIRS = 1;
	enum int SHAPE_CAPSULE = 5;
	enum int JOINT_DAMPED_SPRING = 2;
	enum int BODY_PARAM_MAX = 7;
	enum int BODY_PARAM_ANGULAR_DAMP = 6;
	enum int SHAPE_CONVEX_POLYGON = 6;
	enum int SPACE_PARAM_BODY_ANGULAR_VELOCITY_SLEEP_THRESHOLD = 4;
	enum int BODY_MODE_KINEMATIC = 1;
	enum int AREA_PARAM_GRAVITY = 0;
	enum int AREA_SPACE_OVERRIDE_DISABLED = 0;
	enum int JOINT_GROOVE = 1;
	enum int DAMPED_STRING_STIFFNESS = 1;
	enum int SHAPE_RECTANGLE = 4;
	enum int BODY_PARAM_INERTIA = 3;
	enum int SHAPE_CUSTOM = 8;
	enum int BODY_PARAM_LINEAR_DAMP = 5;
	enum int CCD_MODE_CAST_RAY = 1;
	enum int BODY_STATE_CAN_SLEEP = 4;
	enum int BODY_STATE_TRANSFORM = 0;
	enum int BODY_PARAM_FRICTION = 1;
	enum int AREA_SPACE_OVERRIDE_REPLACE_COMBINE = 4;
	enum int INFO_ACTIVE_OBJECTS = 0;
	enum int AREA_SPACE_OVERRIDE_COMBINE_REPLACE = 2;
	enum int BODY_MODE_STATIC = 0;
	enum int BODY_MODE_CHARACTER = 3;
	enum int SPACE_PARAM_BODY_MAX_ALLOWED_PENETRATION = 2;
	enum int SPACE_PARAM_BODY_LINEAR_VELOCITY_SLEEP_THRESHOLD = 3;
	enum int BODY_PARAM_MASS = 2;
	enum int SPACE_PARAM_BODY_TIME_TO_SLEEP = 5;
	enum int SHAPE_CIRCLE = 3;
	enum int DAMPED_STRING_REST_LENGTH = 0;
	enum int SPACE_PARAM_CONTACT_MAX_SEPARATION = 1;
	enum int SHAPE_CONCAVE_POLYGON = 7;
	enum int AREA_PARAM_GRAVITY_VECTOR = 1;
	enum int AREA_PARAM_PRIORITY = 7;
	enum int SPACE_PARAM_CONSTRAINT_DEFAULT_BIAS = 6;
	enum int SPACE_PARAM_CONTACT_RECYCLE_RADIUS = 0;
	enum int BODY_STATE_ANGULAR_VELOCITY = 2;
	enum int INFO_ISLAND_COUNT = 2;
	RID shape_create(in int type)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Physics2DServer", "shape_create");
		RID _GODOT_ret = RID.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&type), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void shape_set_data(in RID shape, in Variant data)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Physics2DServer", "shape_set_data");
		const(void*)[2] _GODOT_args = [cast(void*)(&shape), cast(void*)(&data), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	int shape_get_type(in RID shape) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Physics2DServer", "shape_get_type");
		int _GODOT_ret = int.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&shape), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void shape_get_data(in RID shape) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Physics2DServer", "shape_get_data");
		const(void*)[1] _GODOT_args = [cast(void*)(&shape), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	RID space_create()
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Physics2DServer", "space_create");
		RID _GODOT_ret = RID.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void space_set_active(in RID space, in bool active)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Physics2DServer", "space_set_active");
		const(void*)[2] _GODOT_args = [cast(void*)(&space), cast(void*)(&active), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	bool space_is_active(in RID space) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Physics2DServer", "space_is_active");
		bool _GODOT_ret = bool.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&space), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void space_set_param(in RID space, in int param, in float value)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Physics2DServer", "space_set_param");
		const(void*)[3] _GODOT_args = [cast(void*)(&space), cast(void*)(&param), cast(void*)(&value), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	float space_get_param(in RID space, in int param) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Physics2DServer", "space_get_param");
		float _GODOT_ret = float.init;
		const(void*)[2] _GODOT_args = [cast(void*)(&space), cast(void*)(&param), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	Physics2DDirectSpaceState space_get_direct_state(in RID space)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Physics2DServer", "space_get_direct_state");
		Physics2DDirectSpaceState _GODOT_ret = Physics2DDirectSpaceState.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&space), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	RID area_create()
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Physics2DServer", "area_create");
		RID _GODOT_ret = RID.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void area_set_space(in RID area, in RID space)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Physics2DServer", "area_set_space");
		const(void*)[2] _GODOT_args = [cast(void*)(&area), cast(void*)(&space), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	RID area_get_space(in RID area) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Physics2DServer", "area_get_space");
		RID _GODOT_ret = RID.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&area), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void area_set_space_override_mode(in RID area, in int mode)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Physics2DServer", "area_set_space_override_mode");
		const(void*)[2] _GODOT_args = [cast(void*)(&area), cast(void*)(&mode), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	int area_get_space_override_mode(in RID area) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Physics2DServer", "area_get_space_override_mode");
		int _GODOT_ret = int.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&area), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void area_add_shape(in RID area, in RID shape, in Transform2D transform = Transform2D.init)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Physics2DServer", "area_add_shape");
		const(void*)[3] _GODOT_args = [cast(void*)(&area), cast(void*)(&shape), cast(void*)(&transform), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void area_set_shape(in RID area, in int shape_idx, in RID shape)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Physics2DServer", "area_set_shape");
		const(void*)[3] _GODOT_args = [cast(void*)(&area), cast(void*)(&shape_idx), cast(void*)(&shape), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void area_set_shape_transform(in RID area, in int shape_idx, in Transform2D transform)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Physics2DServer", "area_set_shape_transform");
		const(void*)[3] _GODOT_args = [cast(void*)(&area), cast(void*)(&shape_idx), cast(void*)(&transform), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void area_set_shape_disabled(in RID area, in int shape_idx, in bool disable)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Physics2DServer", "area_set_shape_disabled");
		const(void*)[3] _GODOT_args = [cast(void*)(&area), cast(void*)(&shape_idx), cast(void*)(&disable), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	int area_get_shape_count(in RID area) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Physics2DServer", "area_get_shape_count");
		int _GODOT_ret = int.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&area), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	RID area_get_shape(in RID area, in int shape_idx) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Physics2DServer", "area_get_shape");
		RID _GODOT_ret = RID.init;
		const(void*)[2] _GODOT_args = [cast(void*)(&area), cast(void*)(&shape_idx), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	Transform2D area_get_shape_transform(in RID area, in int shape_idx) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Physics2DServer", "area_get_shape_transform");
		Transform2D _GODOT_ret = Transform2D.init;
		const(void*)[2] _GODOT_args = [cast(void*)(&area), cast(void*)(&shape_idx), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void area_remove_shape(in RID area, in int shape_idx)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Physics2DServer", "area_remove_shape");
		const(void*)[2] _GODOT_args = [cast(void*)(&area), cast(void*)(&shape_idx), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void area_clear_shapes(in RID area)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Physics2DServer", "area_clear_shapes");
		const(void*)[1] _GODOT_args = [cast(void*)(&area), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void area_set_collision_layer(in RID area, in int layer)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Physics2DServer", "area_set_collision_layer");
		const(void*)[2] _GODOT_args = [cast(void*)(&area), cast(void*)(&layer), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void area_set_collision_mask(in RID area, in int mask)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Physics2DServer", "area_set_collision_mask");
		const(void*)[2] _GODOT_args = [cast(void*)(&area), cast(void*)(&mask), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void area_set_param(in RID area, in int param, in Variant value)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Physics2DServer", "area_set_param");
		const(void*)[3] _GODOT_args = [cast(void*)(&area), cast(void*)(&param), cast(void*)(&value), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void area_set_transform(in RID area, in Transform2D transform)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Physics2DServer", "area_set_transform");
		const(void*)[2] _GODOT_args = [cast(void*)(&area), cast(void*)(&transform), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void area_get_param(in RID area, in int param) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Physics2DServer", "area_get_param");
		const(void*)[2] _GODOT_args = [cast(void*)(&area), cast(void*)(&param), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	Transform2D area_get_transform(in RID area) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Physics2DServer", "area_get_transform");
		Transform2D _GODOT_ret = Transform2D.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&area), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void area_attach_object_instance_ID(in RID area, in int id)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Physics2DServer", "area_attach_object_instance_ID");
		const(void*)[2] _GODOT_args = [cast(void*)(&area), cast(void*)(&id), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	int area_get_object_instance_ID(in RID area) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Physics2DServer", "area_get_object_instance_ID");
		int _GODOT_ret = int.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&area), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void area_set_monitor_callback(in RID area, in GodotObject receiver, in String method)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Physics2DServer", "area_set_monitor_callback");
		const(void*)[3] _GODOT_args = [cast(void*)(&area), cast(void*)(receiver), cast(void*)(&method), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	RID body_create(in int mode = 2, in bool init_sleeping = false)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Physics2DServer", "body_create");
		RID _GODOT_ret = RID.init;
		const(void*)[2] _GODOT_args = [cast(void*)(&mode), cast(void*)(&init_sleeping), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void body_set_space(in RID _body, in RID space)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Physics2DServer", "body_set_space");
		const(void*)[2] _GODOT_args = [cast(void*)(&_body), cast(void*)(&space), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	RID body_get_space(in RID _body) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Physics2DServer", "body_get_space");
		RID _GODOT_ret = RID.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&_body), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void body_set_mode(in RID _body, in int mode)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Physics2DServer", "body_set_mode");
		const(void*)[2] _GODOT_args = [cast(void*)(&_body), cast(void*)(&mode), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	int body_get_mode(in RID _body) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Physics2DServer", "body_get_mode");
		int _GODOT_ret = int.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&_body), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void body_add_shape(in RID _body, in RID shape, in Transform2D transform = Transform2D.init)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Physics2DServer", "body_add_shape");
		const(void*)[3] _GODOT_args = [cast(void*)(&_body), cast(void*)(&shape), cast(void*)(&transform), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void body_set_shape(in RID _body, in int shape_idx, in RID shape)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Physics2DServer", "body_set_shape");
		const(void*)[3] _GODOT_args = [cast(void*)(&_body), cast(void*)(&shape_idx), cast(void*)(&shape), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void body_set_shape_transform(in RID _body, in int shape_idx, in Transform2D transform)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Physics2DServer", "body_set_shape_transform");
		const(void*)[3] _GODOT_args = [cast(void*)(&_body), cast(void*)(&shape_idx), cast(void*)(&transform), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void body_set_shape_metadata(in RID _body, in int shape_idx, in Variant metadata)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Physics2DServer", "body_set_shape_metadata");
		const(void*)[3] _GODOT_args = [cast(void*)(&_body), cast(void*)(&shape_idx), cast(void*)(&metadata), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	int body_get_shape_count(in RID _body) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Physics2DServer", "body_get_shape_count");
		int _GODOT_ret = int.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&_body), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	RID body_get_shape(in RID _body, in int shape_idx) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Physics2DServer", "body_get_shape");
		RID _GODOT_ret = RID.init;
		const(void*)[2] _GODOT_args = [cast(void*)(&_body), cast(void*)(&shape_idx), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	Transform2D body_get_shape_transform(in RID _body, in int shape_idx) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Physics2DServer", "body_get_shape_transform");
		Transform2D _GODOT_ret = Transform2D.init;
		const(void*)[2] _GODOT_args = [cast(void*)(&_body), cast(void*)(&shape_idx), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void body_get_shape_metadata(in RID _body, in int shape_idx) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Physics2DServer", "body_get_shape_metadata");
		const(void*)[2] _GODOT_args = [cast(void*)(&_body), cast(void*)(&shape_idx), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void body_remove_shape(in RID _body, in int shape_idx)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Physics2DServer", "body_remove_shape");
		const(void*)[2] _GODOT_args = [cast(void*)(&_body), cast(void*)(&shape_idx), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void body_clear_shapes(in RID _body)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Physics2DServer", "body_clear_shapes");
		const(void*)[1] _GODOT_args = [cast(void*)(&_body), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void body_set_shape_disabled(in RID _body, in int shape_idx, in bool disable)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Physics2DServer", "body_set_shape_disabled");
		const(void*)[3] _GODOT_args = [cast(void*)(&_body), cast(void*)(&shape_idx), cast(void*)(&disable), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void body_set_shape_as_one_way_collision(in RID _body, in int shape_idx, in bool enable)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Physics2DServer", "body_set_shape_as_one_way_collision");
		const(void*)[3] _GODOT_args = [cast(void*)(&_body), cast(void*)(&shape_idx), cast(void*)(&enable), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void body_attach_object_instance_ID(in RID _body, in int id)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Physics2DServer", "body_attach_object_instance_ID");
		const(void*)[2] _GODOT_args = [cast(void*)(&_body), cast(void*)(&id), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	int body_get_object_instance_ID(in RID _body) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Physics2DServer", "body_get_object_instance_ID");
		int _GODOT_ret = int.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&_body), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void body_set_continuous_collision_detection_mode(in RID _body, in int mode)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Physics2DServer", "body_set_continuous_collision_detection_mode");
		const(void*)[2] _GODOT_args = [cast(void*)(&_body), cast(void*)(&mode), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	int body_get_continuous_collision_detection_mode(in RID _body) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Physics2DServer", "body_get_continuous_collision_detection_mode");
		int _GODOT_ret = int.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&_body), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void body_set_collision_layer(in RID _body, in int layer)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Physics2DServer", "body_set_collision_layer");
		const(void*)[2] _GODOT_args = [cast(void*)(&_body), cast(void*)(&layer), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	int body_get_collision_layer(in RID _body) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Physics2DServer", "body_get_collision_layer");
		int _GODOT_ret = int.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&_body), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void body_set_collision_mask(in RID _body, in int mask)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Physics2DServer", "body_set_collision_mask");
		const(void*)[2] _GODOT_args = [cast(void*)(&_body), cast(void*)(&mask), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	int body_get_collision_mask(in RID _body) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Physics2DServer", "body_get_collision_mask");
		int _GODOT_ret = int.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&_body), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void body_set_param(in RID _body, in int param, in float value)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Physics2DServer", "body_set_param");
		const(void*)[3] _GODOT_args = [cast(void*)(&_body), cast(void*)(&param), cast(void*)(&value), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	float body_get_param(in RID _body, in int param) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Physics2DServer", "body_get_param");
		float _GODOT_ret = float.init;
		const(void*)[2] _GODOT_args = [cast(void*)(&_body), cast(void*)(&param), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void body_set_state(in RID _body, in int state, in Variant value)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Physics2DServer", "body_set_state");
		const(void*)[3] _GODOT_args = [cast(void*)(&_body), cast(void*)(&state), cast(void*)(&value), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void body_get_state(in RID _body, in int state) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Physics2DServer", "body_get_state");
		const(void*)[2] _GODOT_args = [cast(void*)(&_body), cast(void*)(&state), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void body_apply_impulse(in RID _body, in Vector2 pos, in Vector2 impulse)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Physics2DServer", "body_apply_impulse");
		const(void*)[3] _GODOT_args = [cast(void*)(&_body), cast(void*)(&pos), cast(void*)(&impulse), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void body_add_force(in RID _body, in Vector2 offset, in Vector2 force)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Physics2DServer", "body_add_force");
		const(void*)[3] _GODOT_args = [cast(void*)(&_body), cast(void*)(&offset), cast(void*)(&force), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void body_set_axis_velocity(in RID _body, in Vector2 axis_velocity)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Physics2DServer", "body_set_axis_velocity");
		const(void*)[2] _GODOT_args = [cast(void*)(&_body), cast(void*)(&axis_velocity), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void body_add_collision_exception(in RID _body, in RID excepted_body)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Physics2DServer", "body_add_collision_exception");
		const(void*)[2] _GODOT_args = [cast(void*)(&_body), cast(void*)(&excepted_body), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void body_remove_collision_exception(in RID _body, in RID excepted_body)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Physics2DServer", "body_remove_collision_exception");
		const(void*)[2] _GODOT_args = [cast(void*)(&_body), cast(void*)(&excepted_body), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void body_set_max_contacts_reported(in RID _body, in int amount)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Physics2DServer", "body_set_max_contacts_reported");
		const(void*)[2] _GODOT_args = [cast(void*)(&_body), cast(void*)(&amount), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	int body_get_max_contacts_reported(in RID _body) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Physics2DServer", "body_get_max_contacts_reported");
		int _GODOT_ret = int.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&_body), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void body_set_omit_force_integration(in RID _body, in bool enable)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Physics2DServer", "body_set_omit_force_integration");
		const(void*)[2] _GODOT_args = [cast(void*)(&_body), cast(void*)(&enable), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	bool body_is_omitting_force_integration(in RID _body) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Physics2DServer", "body_is_omitting_force_integration");
		bool _GODOT_ret = bool.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&_body), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void body_set_force_integration_callback(in RID _body, in GodotObject receiver, in String method, in Variant userdata = Variant.nil)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Physics2DServer", "body_set_force_integration_callback");
		const(void*)[4] _GODOT_args = [cast(void*)(&_body), cast(void*)(receiver), cast(void*)(&method), cast(void*)(&userdata), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	bool body_test_motion(in RID _body, in Transform2D from, in Vector2 motion, in float margin = 0.08, in Physics2DTestMotionResult result = Physics2DTestMotionResult.init)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Physics2DServer", "body_test_motion");
		bool _GODOT_ret = bool.init;
		const(void*)[5] _GODOT_args = [cast(void*)(&_body), cast(void*)(&from), cast(void*)(&motion), cast(void*)(&margin), cast(void*)(result), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void joint_set_param(in RID joint, in int param, in float value)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Physics2DServer", "joint_set_param");
		const(void*)[3] _GODOT_args = [cast(void*)(&joint), cast(void*)(&param), cast(void*)(&value), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	float joint_get_param(in RID joint, in int param) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Physics2DServer", "joint_get_param");
		float _GODOT_ret = float.init;
		const(void*)[2] _GODOT_args = [cast(void*)(&joint), cast(void*)(&param), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	RID pin_joint_create(in Vector2 anchor, in RID body_a, in RID body_b = RID.init)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Physics2DServer", "pin_joint_create");
		RID _GODOT_ret = RID.init;
		const(void*)[3] _GODOT_args = [cast(void*)(&anchor), cast(void*)(&body_a), cast(void*)(&body_b), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	RID groove_joint_create(in Vector2 groove1_a, in Vector2 groove2_a, in Vector2 anchor_b, in RID body_a = RID.init, in RID body_b = RID.init)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Physics2DServer", "groove_joint_create");
		RID _GODOT_ret = RID.init;
		const(void*)[5] _GODOT_args = [cast(void*)(&groove1_a), cast(void*)(&groove2_a), cast(void*)(&anchor_b), cast(void*)(&body_a), cast(void*)(&body_b), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	RID damped_spring_joint_create(in Vector2 anchor_a, in Vector2 anchor_b, in RID body_a, in RID body_b = RID.init)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Physics2DServer", "damped_spring_joint_create");
		RID _GODOT_ret = RID.init;
		const(void*)[4] _GODOT_args = [cast(void*)(&anchor_a), cast(void*)(&anchor_b), cast(void*)(&body_a), cast(void*)(&body_b), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void damped_string_joint_set_param(in RID joint, in int param, in float value)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Physics2DServer", "damped_string_joint_set_param");
		const(void*)[3] _GODOT_args = [cast(void*)(&joint), cast(void*)(&param), cast(void*)(&value), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	float damped_string_joint_get_param(in RID joint, in int param) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Physics2DServer", "damped_string_joint_get_param");
		float _GODOT_ret = float.init;
		const(void*)[2] _GODOT_args = [cast(void*)(&joint), cast(void*)(&param), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	int joint_get_type(in RID joint) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Physics2DServer", "joint_get_type");
		int _GODOT_ret = int.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&joint), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void free_rid(in RID rid)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Physics2DServer", "free_rid");
		const(void*)[1] _GODOT_args = [cast(void*)(&rid), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void set_active(in bool active)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Physics2DServer", "set_active");
		const(void*)[1] _GODOT_args = [cast(void*)(&active), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	int get_process_info(in int process_info)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Physics2DServer", "get_process_info");
		int _GODOT_ret = int.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&process_info), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
}
@property pragma(inline, true)
Physics2DServerSingleton Physics2DServer()
{
	return Physics2DServerSingleton._GODOT_singleton();
}
