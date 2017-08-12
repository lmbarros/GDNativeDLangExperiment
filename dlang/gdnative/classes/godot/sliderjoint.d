module godot.sliderjoint;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.object;
import godot.classdb;
import godot.joint;
@GodotBaseClass struct SliderJoint
{
	static immutable string _GODOT_internal_name = "SliderJoint";
public:
	union { godot_object _godot_object; Joint base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	package(godot) void* opCast(T : void*)() const { return cast(void*)_godot_object.ptr; }
	godot_object opCast(T : godot_object)() const { return cast(godot_object)_godot_object; }
	bool opEquals(in SliderJoint other) const { return _godot_object.ptr is other._godot_object.ptr; }
	SliderJoint opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	bool opCast(T : bool)() const { return _godot_object.ptr !is null; }
	inout(T) opCast(T)() inout if(isGodotBaseClass!T)
	{
		static assert(staticIndexOf!(SliderJoint, T.BaseClasses) != -1, "Godot class "~T.stringof~" does not inherit SliderJoint");
		if(_godot_object.ptr is null) return T.init;
		String c = String(T._GODOT_internal_name);
		if(is_class(c)) return inout(T)(_godot_object);
		return T.init;
	}
	inout(T) opCast(T)() inout if(extendsGodotBaseClass!T)
	{
		static assert(is(typeof(T.owner) : SliderJoint) || staticIndexOf!(SliderJoint, typeof(T.owner).BaseClasses) != -1, "D class "~T.stringof~" does not extend SliderJoint");
		if(_godot_object.ptr is null) return null;
		if(has_method(String(`_GDNATIVE_D_typeid`)))
		{
			Object o = cast(Object)godot_nativescript_get_userdata(opCast!godot_object);
			return cast(inout(T))o;
		}
		return null;
	}
	static SliderJoint _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("SliderJoint");
		if(constructor is null) return typeof(this).init;
		return cast(SliderJoint)(constructor());
	}
	enum int PARAM_LINEAR_LIMIT_LOWER = 1;
	enum int PARAM_ANGULAR_LIMIT_RESTITUTION = 14;
	enum int PARAM_ANGULAR_LIMIT_DAMPING = 15;
	enum int PARAM_ANGULAR_LIMIT_SOFTNESS = 13;
	enum int PARAM_LINEAR_MOTION_RESTITUTION = 6;
	enum int PARAM_ANGULAR_ORTHOGONAL_SOFTNESS = 19;
	enum int PARAM_ANGULAR_MOTION_RESTITUTION = 17;
	enum int PARAM_ANGULAR_LIMIT_LOWER = 12;
	enum int PARAM_ANGULAR_ORTHOGONAL_RESTITUTION = 20;
	enum int PARAM_LINEAR_ORTHOGONAL_RESTITUTION = 9;
	enum int PARAM_ANGULAR_MOTION_SOFTNESS = 16;
	enum int PARAM_LINEAR_LIMIT_DAMPING = 4;
	enum int PARAM_LINEAR_ORTHOGONAL_DAMPING = 10;
	enum int PARAM_LINEAR_LIMIT_SOFTNESS = 2;
	enum int PARAM_LINEAR_LIMIT_UPPER = 0;
	enum int PARAM_LINEAR_ORTHOGONAL_SOFTNESS = 8;
	enum int PARAM_LINEAR_LIMIT_RESTITUTION = 3;
	enum int PARAM_ANGULAR_ORTHOGONAL_DAMPING = 21;
	enum int PARAM_ANGULAR_MOTION_DAMPING = 18;
	enum int PARAM_LINEAR_MOTION_DAMPING = 7;
	enum int PARAM_ANGULAR_LIMIT_UPPER = 11;
	enum int PARAM_LINEAR_MOTION_SOFTNESS = 5;
	enum int PARAM_MAX = 22;
	void set_param(in int param, in float value)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("SliderJoint", "set_param");
		const(void*)[2] _GODOT_args = [cast(void*)(&param), cast(void*)(&value), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	float get_param(in int param) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("SliderJoint", "get_param");
		float _GODOT_ret = float.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&param), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void _set_upper_limit_angular(in float upper_limit_angular)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(upper_limit_angular);
		String _GODOT_method_name = String("_set_upper_limit_angular");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	float _get_upper_limit_angular() const
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_get_upper_limit_angular");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(float);
	}
	void _set_lower_limit_angular(in float lower_limit_angular)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(lower_limit_angular);
		String _GODOT_method_name = String("_set_lower_limit_angular");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	float _get_lower_limit_angular() const
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_get_lower_limit_angular");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(float);
	}
}
