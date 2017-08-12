module godot.tween;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.object;
import godot.classdb;
import godot.node;
@GodotBaseClass struct Tween
{
	static immutable string _GODOT_internal_name = "Tween";
public:
	union { godot_object _godot_object; Node base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	package(godot) void* opCast(T : void*)() const { return cast(void*)_godot_object.ptr; }
	godot_object opCast(T : godot_object)() const { return cast(godot_object)_godot_object; }
	bool opEquals(in Tween other) const { return _godot_object.ptr is other._godot_object.ptr; }
	Tween opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	bool opCast(T : bool)() const { return _godot_object.ptr !is null; }
	inout(T) opCast(T)() inout if(isGodotBaseClass!T)
	{
		static assert(staticIndexOf!(Tween, T.BaseClasses) != -1, "Godot class "~T.stringof~" does not inherit Tween");
		if(_godot_object.ptr is null) return T.init;
		String c = String(T._GODOT_internal_name);
		if(is_class(c)) return inout(T)(_godot_object);
		return T.init;
	}
	inout(T) opCast(T)() inout if(extendsGodotBaseClass!T)
	{
		static assert(is(typeof(T.owner) : Tween) || staticIndexOf!(Tween, typeof(T.owner).BaseClasses) != -1, "D class "~T.stringof~" does not extend Tween");
		if(_godot_object.ptr is null) return null;
		if(has_method(String(`_GDNATIVE_D_typeid`)))
		{
			Object o = cast(Object)godot_nativescript_get_userdata(opCast!godot_object);
			return cast(inout(T))o;
		}
		return null;
	}
	static Tween _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("Tween");
		if(constructor is null) return typeof(this).init;
		return cast(Tween)(constructor());
	}
	enum int TRANS_QUART = 3;
	enum int EASE_IN = 0;
	enum int EASE_OUT = 1;
	enum int TRANS_SINE = 1;
	enum int TRANS_QUINT = 2;
	enum int TRANS_EXPO = 5;
	enum int TWEEN_PROCESS_FIXED = 0;
	enum int TRANS_QUAD = 4;
	enum int EASE_IN_OUT = 2;
	enum int EASE_OUT_IN = 3;
	enum int TRANS_LINEAR = 0;
	enum int TRANS_ELASTIC = 6;
	enum int TRANS_CUBIC = 7;
	enum int TRANS_BOUNCE = 9;
	enum int TWEEN_PROCESS_IDLE = 1;
	enum int TRANS_CIRC = 8;
	enum int TRANS_BACK = 10;
	bool is_active() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Tween", "is_active");
		bool _GODOT_ret = bool.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_active(in bool active)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Tween", "set_active");
		const(void*)[1] _GODOT_args = [cast(void*)(&active), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	bool is_repeat() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Tween", "is_repeat");
		bool _GODOT_ret = bool.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_repeat(in bool repeat)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Tween", "set_repeat");
		const(void*)[1] _GODOT_args = [cast(void*)(&repeat), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void set_speed_scale(in float speed)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Tween", "set_speed_scale");
		const(void*)[1] _GODOT_args = [cast(void*)(&speed), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	float get_speed_scale() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Tween", "get_speed_scale");
		float _GODOT_ret = float.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_tween_process_mode(in int mode)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Tween", "set_tween_process_mode");
		const(void*)[1] _GODOT_args = [cast(void*)(&mode), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	int get_tween_process_mode() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Tween", "get_tween_process_mode");
		int _GODOT_ret = int.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	bool start()
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Tween", "start");
		bool _GODOT_ret = bool.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	bool reset(in GodotObject object, in String key = String.init)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Tween", "reset");
		bool _GODOT_ret = bool.init;
		const(void*)[2] _GODOT_args = [cast(void*)(object), cast(void*)(&key), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	bool reset_all()
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Tween", "reset_all");
		bool _GODOT_ret = bool.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	bool stop(in GodotObject object, in String key = String.init)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Tween", "stop");
		bool _GODOT_ret = bool.init;
		const(void*)[2] _GODOT_args = [cast(void*)(object), cast(void*)(&key), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	bool stop_all()
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Tween", "stop_all");
		bool _GODOT_ret = bool.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	bool resume(in GodotObject object, in String key = String.init)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Tween", "resume");
		bool _GODOT_ret = bool.init;
		const(void*)[2] _GODOT_args = [cast(void*)(object), cast(void*)(&key), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	bool resume_all()
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Tween", "resume_all");
		bool _GODOT_ret = bool.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	bool remove(in GodotObject object, in String key = String.init)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Tween", "remove");
		bool _GODOT_ret = bool.init;
		const(void*)[2] _GODOT_args = [cast(void*)(object), cast(void*)(&key), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void _remove(in GodotObject object, in String key, in bool first_only)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(object);
		_GODOT_args.append(key);
		_GODOT_args.append(first_only);
		String _GODOT_method_name = String("_remove");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	bool remove_all()
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Tween", "remove_all");
		bool _GODOT_ret = bool.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	bool seek(in float time)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Tween", "seek");
		bool _GODOT_ret = bool.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&time), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	float tell() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Tween", "tell");
		float _GODOT_ret = float.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	float get_runtime() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Tween", "get_runtime");
		float _GODOT_ret = float.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	bool interpolate_property(in GodotObject object, in String property, in Variant initial_val, in Variant final_val, in float duration, in int trans_type, in int ease_type, in float delay = 0)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Tween", "interpolate_property");
		bool _GODOT_ret = bool.init;
		const(void*)[8] _GODOT_args = [cast(void*)(object), cast(void*)(&property), cast(void*)(&initial_val), cast(void*)(&final_val), cast(void*)(&duration), cast(void*)(&trans_type), cast(void*)(&ease_type), cast(void*)(&delay), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	bool interpolate_method(in GodotObject object, in String method, in Variant initial_val, in Variant final_val, in float duration, in int trans_type, in int ease_type, in float delay = 0)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Tween", "interpolate_method");
		bool _GODOT_ret = bool.init;
		const(void*)[8] _GODOT_args = [cast(void*)(object), cast(void*)(&method), cast(void*)(&initial_val), cast(void*)(&final_val), cast(void*)(&duration), cast(void*)(&trans_type), cast(void*)(&ease_type), cast(void*)(&delay), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	bool interpolate_callback(in GodotObject object, in float duration, in String callback, in Variant arg1 = Variant.nil, in Variant arg2 = Variant.nil, in Variant arg3 = Variant.nil, in Variant arg4 = Variant.nil, in Variant arg5 = Variant.nil)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Tween", "interpolate_callback");
		bool _GODOT_ret = bool.init;
		const(void*)[8] _GODOT_args = [cast(void*)(object), cast(void*)(&duration), cast(void*)(&callback), cast(void*)(&arg1), cast(void*)(&arg2), cast(void*)(&arg3), cast(void*)(&arg4), cast(void*)(&arg5), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	bool interpolate_deferred_callback(in GodotObject object, in float duration, in String callback, in Variant arg1 = Variant.nil, in Variant arg2 = Variant.nil, in Variant arg3 = Variant.nil, in Variant arg4 = Variant.nil, in Variant arg5 = Variant.nil)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Tween", "interpolate_deferred_callback");
		bool _GODOT_ret = bool.init;
		const(void*)[8] _GODOT_args = [cast(void*)(object), cast(void*)(&duration), cast(void*)(&callback), cast(void*)(&arg1), cast(void*)(&arg2), cast(void*)(&arg3), cast(void*)(&arg4), cast(void*)(&arg5), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	bool follow_property(in GodotObject object, in String property, in Variant initial_val, in GodotObject target, in String target_property, in float duration, in int trans_type, in int ease_type, in float delay = 0)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Tween", "follow_property");
		bool _GODOT_ret = bool.init;
		const(void*)[9] _GODOT_args = [cast(void*)(object), cast(void*)(&property), cast(void*)(&initial_val), cast(void*)(target), cast(void*)(&target_property), cast(void*)(&duration), cast(void*)(&trans_type), cast(void*)(&ease_type), cast(void*)(&delay), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	bool follow_method(in GodotObject object, in String method, in Variant initial_val, in GodotObject target, in String target_method, in float duration, in int trans_type, in int ease_type, in float delay = 0)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Tween", "follow_method");
		bool _GODOT_ret = bool.init;
		const(void*)[9] _GODOT_args = [cast(void*)(object), cast(void*)(&method), cast(void*)(&initial_val), cast(void*)(target), cast(void*)(&target_method), cast(void*)(&duration), cast(void*)(&trans_type), cast(void*)(&ease_type), cast(void*)(&delay), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	bool targeting_property(in GodotObject object, in String property, in GodotObject initial, in String initial_val, in Variant final_val, in float duration, in int trans_type, in int ease_type, in float delay = 0)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Tween", "targeting_property");
		bool _GODOT_ret = bool.init;
		const(void*)[9] _GODOT_args = [cast(void*)(object), cast(void*)(&property), cast(void*)(initial), cast(void*)(&initial_val), cast(void*)(&final_val), cast(void*)(&duration), cast(void*)(&trans_type), cast(void*)(&ease_type), cast(void*)(&delay), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	bool targeting_method(in GodotObject object, in String method, in GodotObject initial, in String initial_method, in Variant final_val, in float duration, in int trans_type, in int ease_type, in float delay = 0)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Tween", "targeting_method");
		bool _GODOT_ret = bool.init;
		const(void*)[9] _GODOT_args = [cast(void*)(object), cast(void*)(&method), cast(void*)(initial), cast(void*)(&initial_method), cast(void*)(&final_val), cast(void*)(&duration), cast(void*)(&trans_type), cast(void*)(&ease_type), cast(void*)(&delay), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
}
