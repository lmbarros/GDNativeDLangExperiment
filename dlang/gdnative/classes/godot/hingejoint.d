module godot.hingejoint;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.object;
import godot.classdb;
import godot.joint;
@GodotBaseClass struct HingeJoint
{
	static immutable string _GODOT_internal_name = "HingeJoint";
public:
	union { godot_object _godot_object; Joint base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	package(godot) void* opCast(T : void*)() const { return cast(void*)_godot_object.ptr; }
	godot_object opCast(T : godot_object)() const { return cast(godot_object)_godot_object; }
	bool opEquals(in HingeJoint other) const { return _godot_object.ptr is other._godot_object.ptr; }
	HingeJoint opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	bool opCast(T : bool)() const { return _godot_object.ptr !is null; }
	inout(T) opCast(T)() inout if(isGodotBaseClass!T)
	{
		static assert(staticIndexOf!(HingeJoint, T.BaseClasses) != -1, "Godot class "~T.stringof~" does not inherit HingeJoint");
		if(_godot_object.ptr is null) return T.init;
		String c = String(T._GODOT_internal_name);
		if(is_class(c)) return inout(T)(_godot_object);
		return T.init;
	}
	inout(T) opCast(T)() inout if(extendsGodotBaseClass!T)
	{
		static assert(is(typeof(T.owner) : HingeJoint) || staticIndexOf!(HingeJoint, typeof(T.owner).BaseClasses) != -1, "D class "~T.stringof~" does not extend HingeJoint");
		if(_godot_object.ptr is null) return null;
		if(has_method(String(`_GDNATIVE_D_typeid`)))
		{
			Object o = cast(Object)godot_nativescript_get_userdata(opCast!godot_object);
			return cast(inout(T))o;
		}
		return null;
	}
	static HingeJoint _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("HingeJoint");
		if(constructor is null) return typeof(this).init;
		return cast(HingeJoint)(constructor());
	}
	enum int PARAM_LIMIT_UPPER = 1;
	enum int PARAM_LIMIT_BIAS = 3;
	enum int PARAM_BIAS = 0;
	enum int PARAM_LIMIT_RELAXATION = 5;
	enum int PARAM_LIMIT_LOWER = 2;
	enum int FLAG_ENABLE_MOTOR = 1;
	enum int FLAG_MAX = 2;
	enum int PARAM_MOTOR_TARGET_VELOCITY = 6;
	enum int PARAM_LIMIT_SOFTNESS = 4;
	enum int FLAG_USE_LIMIT = 0;
	enum int PARAM_MAX = 8;
	enum int PARAM_MOTOR_MAX_IMPULSE = 7;
	void set_param(in int param, in float value)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("HingeJoint", "set_param");
		const(void*)[2] _GODOT_args = [cast(void*)(&param), cast(void*)(&value), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	float get_param(in int param) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("HingeJoint", "get_param");
		float _GODOT_ret = float.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&param), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_flag(in int flag, in bool enabled)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("HingeJoint", "set_flag");
		const(void*)[2] _GODOT_args = [cast(void*)(&flag), cast(void*)(&enabled), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	bool get_flag(in int flag) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("HingeJoint", "get_flag");
		bool _GODOT_ret = bool.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&flag), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void _set_upper_limit(in float upper_limit)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(upper_limit);
		String _GODOT_method_name = String("_set_upper_limit");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	float _get_upper_limit() const
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_get_upper_limit");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(float);
	}
	void _set_lower_limit(in float lower_limit)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(lower_limit);
		String _GODOT_method_name = String("_set_lower_limit");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	float _get_lower_limit() const
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_get_lower_limit");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(float);
	}
}
