module godot.generic6dofjoint;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.object;
import godot.classdb;
import godot.joint;
@GodotBaseClass struct Generic6DOFJoint
{
	static immutable string _GODOT_internal_name = "Generic6DOFJoint";
public:
	union { godot_object _godot_object; Joint base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	package(godot) void* opCast(T : void*)() const { return cast(void*)_godot_object.ptr; }
	godot_object opCast(T : godot_object)() const { return cast(godot_object)_godot_object; }
	bool opEquals(in Generic6DOFJoint other) const { return _godot_object.ptr is other._godot_object.ptr; }
	Generic6DOFJoint opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	bool opCast(T : bool)() const { return _godot_object.ptr !is null; }
	inout(T) opCast(T)() inout if(isGodotBaseClass!T)
	{
		static assert(staticIndexOf!(Generic6DOFJoint, T.BaseClasses) != -1, "Godot class "~T.stringof~" does not inherit Generic6DOFJoint");
		if(_godot_object.ptr is null) return T.init;
		String c = String(T._GODOT_internal_name);
		if(is_class(c)) return inout(T)(_godot_object);
		return T.init;
	}
	inout(T) opCast(T)() inout if(extendsGodotBaseClass!T)
	{
		static assert(is(typeof(T.owner) : Generic6DOFJoint) || staticIndexOf!(Generic6DOFJoint, typeof(T.owner).BaseClasses) != -1, "D class "~T.stringof~" does not extend Generic6DOFJoint");
		if(_godot_object.ptr is null) return null;
		if(has_method(String(`_GDNATIVE_D_typeid`)))
		{
			Object o = cast(Object)godot_nativescript_get_userdata(opCast!godot_object);
			return cast(inout(T))o;
		}
		return null;
	}
	static Generic6DOFJoint _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("Generic6DOFJoint");
		if(constructor is null) return typeof(this).init;
		return cast(Generic6DOFJoint)(constructor());
	}
	enum int PARAM_ANGULAR_UPPER_LIMIT = 6;
	enum int PARAM_LINEAR_UPPER_LIMIT = 1;
	enum int PARAM_MAX = 14;
	enum int PARAM_ANGULAR_LIMIT_SOFTNESS = 7;
	enum int PARAM_ANGULAR_MOTOR_FORCE_LIMIT = 13;
	enum int PARAM_LINEAR_LOWER_LIMIT = 0;
	enum int FLAG_ENABLE_LINEAR_LIMIT = 0;
	enum int FLAG_ENABLE_MOTOR = 2;
	enum int FLAG_MAX = 3;
	enum int PARAM_LINEAR_LIMIT_SOFTNESS = 2;
	enum int FLAG_ENABLE_ANGULAR_LIMIT = 1;
	enum int PARAM_LINEAR_DAMPING = 4;
	enum int PARAM_LINEAR_RESTITUTION = 3;
	enum int PARAM_ANGULAR_LOWER_LIMIT = 5;
	enum int PARAM_ANGULAR_ERP = 11;
	enum int PARAM_ANGULAR_DAMPING = 8;
	enum int PARAM_ANGULAR_MOTOR_TARGET_VELOCITY = 12;
	enum int PARAM_ANGULAR_RESTITUTION = 9;
	enum int PARAM_ANGULAR_FORCE_LIMIT = 10;
	void _set_angular_hi_limit_x(in float angle)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(angle);
		String _GODOT_method_name = String("_set_angular_hi_limit_x");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	float _get_angular_hi_limit_x() const
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_get_angular_hi_limit_x");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(float);
	}
	void _set_angular_lo_limit_x(in float angle)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(angle);
		String _GODOT_method_name = String("_set_angular_lo_limit_x");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	float _get_angular_lo_limit_x() const
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_get_angular_lo_limit_x");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(float);
	}
	void _set_angular_hi_limit_y(in float angle)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(angle);
		String _GODOT_method_name = String("_set_angular_hi_limit_y");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	float _get_angular_hi_limit_y() const
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_get_angular_hi_limit_y");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(float);
	}
	void _set_angular_lo_limit_y(in float angle)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(angle);
		String _GODOT_method_name = String("_set_angular_lo_limit_y");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	float _get_angular_lo_limit_y() const
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_get_angular_lo_limit_y");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(float);
	}
	void _set_angular_hi_limit_z(in float angle)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(angle);
		String _GODOT_method_name = String("_set_angular_hi_limit_z");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	float _get_angular_hi_limit_z() const
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_get_angular_hi_limit_z");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(float);
	}
	void _set_angular_lo_limit_z(in float angle)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(angle);
		String _GODOT_method_name = String("_set_angular_lo_limit_z");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	float _get_angular_lo_limit_z() const
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_get_angular_lo_limit_z");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(float);
	}
	void set_param_x(in int param, in float value)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Generic6DOFJoint", "set_param_x");
		const(void*)[2] _GODOT_args = [cast(void*)(&param), cast(void*)(&value), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	float get_param_x(in int param) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Generic6DOFJoint", "get_param_x");
		float _GODOT_ret = float.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&param), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_param_y(in int param, in float value)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Generic6DOFJoint", "set_param_y");
		const(void*)[2] _GODOT_args = [cast(void*)(&param), cast(void*)(&value), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	float get_param_y(in int param) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Generic6DOFJoint", "get_param_y");
		float _GODOT_ret = float.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&param), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_param_z(in int param, in float value)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Generic6DOFJoint", "set_param_z");
		const(void*)[2] _GODOT_args = [cast(void*)(&param), cast(void*)(&value), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	float get_param_z(in int param) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Generic6DOFJoint", "get_param_z");
		float _GODOT_ret = float.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&param), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_flag_x(in int flag, in bool value)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Generic6DOFJoint", "set_flag_x");
		const(void*)[2] _GODOT_args = [cast(void*)(&flag), cast(void*)(&value), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	bool get_flag_x(in int flag) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Generic6DOFJoint", "get_flag_x");
		bool _GODOT_ret = bool.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&flag), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_flag_y(in int flag, in bool value)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Generic6DOFJoint", "set_flag_y");
		const(void*)[2] _GODOT_args = [cast(void*)(&flag), cast(void*)(&value), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	bool get_flag_y(in int flag) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Generic6DOFJoint", "get_flag_y");
		bool _GODOT_ret = bool.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&flag), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_flag_z(in int flag, in bool value)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Generic6DOFJoint", "set_flag_z");
		const(void*)[2] _GODOT_args = [cast(void*)(&flag), cast(void*)(&value), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	bool get_flag_z(in int flag) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Generic6DOFJoint", "get_flag_z");
		bool _GODOT_ret = bool.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&flag), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
}
