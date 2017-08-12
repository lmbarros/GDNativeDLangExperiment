module godot.light;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.object;
import godot.visualinstance;
@GodotBaseClass struct Light
{
	static immutable string _GODOT_internal_name = "Light";
public:
	union { godot_object _godot_object; VisualInstance base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	package(godot) void* opCast(T : void*)() const { return cast(void*)_godot_object.ptr; }
	godot_object opCast(T : godot_object)() const { return cast(godot_object)_godot_object; }
	bool opEquals(in Light other) const { return _godot_object.ptr is other._godot_object.ptr; }
	Light opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	bool opCast(T : bool)() const { return _godot_object.ptr !is null; }
	inout(T) opCast(T)() inout if(isGodotBaseClass!T)
	{
		static assert(staticIndexOf!(Light, T.BaseClasses) != -1, "Godot class "~T.stringof~" does not inherit Light");
		if(_godot_object.ptr is null) return T.init;
		String c = String(T._GODOT_internal_name);
		if(is_class(c)) return inout(T)(_godot_object);
		return T.init;
	}
	inout(T) opCast(T)() inout if(extendsGodotBaseClass!T)
	{
		static assert(is(typeof(T.owner) : Light) || staticIndexOf!(Light, typeof(T.owner).BaseClasses) != -1, "D class "~T.stringof~" does not extend Light");
		if(_godot_object.ptr is null) return null;
		if(has_method(String(`_GDNATIVE_D_typeid`)))
		{
			Object o = cast(Object)godot_nativescript_get_userdata(opCast!godot_object);
			return cast(inout(T))o;
		}
		return null;
	}
	static Light _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("Light");
		if(constructor is null) return typeof(this).init;
		return cast(Light)(constructor());
	}
	enum int PARAM_SPOT_ANGLE = 4;
	enum int PARAM_SHADOW_MAX_DISTANCE = 7;
	enum int PARAM_ENERGY = 0;
	enum int PARAM_CONTACT_SHADOW_SIZE = 6;
	enum int PARAM_ATTENUATION = 3;
	enum int PARAM_SHADOW_SPLIT_1_OFFSET = 8;
	enum int PARAM_SHADOW_SPLIT_2_OFFSET = 9;
	enum int PARAM_SHADOW_NORMAL_BIAS = 11;
	enum int PARAM_SHADOW_BIAS = 12;
	enum int PARAM_RANGE = 2;
	enum int PARAM_SHADOW_SPLIT_3_OFFSET = 10;
	enum int PARAM_SPECULAR = 1;
	enum int PARAM_SPOT_ATTENUATION = 5;
	enum int PARAM_MAX = 13;
	void set_editor_only(in bool editor_only)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Light", "set_editor_only");
		const(void*)[1] _GODOT_args = [cast(void*)(&editor_only), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	bool is_editor_only() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Light", "is_editor_only");
		bool _GODOT_ret = bool.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_param(in int param, in float value)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Light", "set_param");
		const(void*)[2] _GODOT_args = [cast(void*)(&param), cast(void*)(&value), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	float get_param(in int param) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Light", "get_param");
		float _GODOT_ret = float.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&param), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_shadow(in bool enabled)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Light", "set_shadow");
		const(void*)[1] _GODOT_args = [cast(void*)(&enabled), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	bool has_shadow() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Light", "has_shadow");
		bool _GODOT_ret = bool.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_negative(in bool enabled)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Light", "set_negative");
		const(void*)[1] _GODOT_args = [cast(void*)(&enabled), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	bool is_negative() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Light", "is_negative");
		bool _GODOT_ret = bool.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_cull_mask(in int cull_mask)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Light", "set_cull_mask");
		const(void*)[1] _GODOT_args = [cast(void*)(&cull_mask), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	int get_cull_mask() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Light", "get_cull_mask");
		int _GODOT_ret = int.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_color(in Color color)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Light", "set_color");
		const(void*)[1] _GODOT_args = [cast(void*)(&color), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	Color get_color() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Light", "get_color");
		Color _GODOT_ret = Color.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_shadow_color(in Color shadow_color)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Light", "set_shadow_color");
		const(void*)[1] _GODOT_args = [cast(void*)(&shadow_color), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	Color get_shadow_color() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Light", "get_shadow_color");
		Color _GODOT_ret = Color.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
}
