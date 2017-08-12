module godot.particlesmaterial;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.object;
import godot.classdb;
import godot.material;
import godot.texture;
import godot.curvetexture;
import godot.gradienttexture;
@GodotBaseClass struct ParticlesMaterial
{
	static immutable string _GODOT_internal_name = "ParticlesMaterial";
public:
	union { godot_object _godot_object; Material base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	package(godot) void* opCast(T : void*)() const { return cast(void*)_godot_object.ptr; }
	godot_object opCast(T : godot_object)() const { return cast(godot_object)_godot_object; }
	bool opEquals(in ParticlesMaterial other) const { return _godot_object.ptr is other._godot_object.ptr; }
	ParticlesMaterial opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	bool opCast(T : bool)() const { return _godot_object.ptr !is null; }
	inout(T) opCast(T)() inout if(isGodotBaseClass!T)
	{
		static assert(staticIndexOf!(ParticlesMaterial, T.BaseClasses) != -1, "Godot class "~T.stringof~" does not inherit ParticlesMaterial");
		if(_godot_object.ptr is null) return T.init;
		String c = String(T._GODOT_internal_name);
		if(is_class(c)) return inout(T)(_godot_object);
		return T.init;
	}
	inout(T) opCast(T)() inout if(extendsGodotBaseClass!T)
	{
		static assert(is(typeof(T.owner) : ParticlesMaterial) || staticIndexOf!(ParticlesMaterial, typeof(T.owner).BaseClasses) != -1, "D class "~T.stringof~" does not extend ParticlesMaterial");
		if(_godot_object.ptr is null) return null;
		if(has_method(String(`_GDNATIVE_D_typeid`)))
		{
			Object o = cast(Object)godot_nativescript_get_userdata(opCast!godot_object);
			return cast(inout(T))o;
		}
		return null;
	}
	static ParticlesMaterial _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("ParticlesMaterial");
		if(constructor is null) return typeof(this).init;
		return cast(ParticlesMaterial)(constructor());
	}
	enum int EMISSION_SHAPE_BOX = 2;
	enum int PARAM_ANGLE = 7;
	enum int EMISSION_SHAPE_DIRECTED_POINTS = 4;
	enum int PARAM_SCALE = 8;
	enum int PARAM_TANGENTIAL_ACCEL = 5;
	enum int EMISSION_SHAPE_POINT = 0;
	enum int FLAG_MAX = 4;
	enum int EMISSION_SHAPE_SPHERE = 1;
	enum int FLAG_ALIGN_Y_TO_VELOCITY = 0;
	enum int PARAM_ANGULAR_VELOCITY = 1;
	enum int PARAM_INITIAL_LINEAR_VELOCITY = 0;
	enum int PARAM_LINEAR_ACCEL = 3;
	enum int EMISSION_SHAPE_POINTS = 3;
	enum int PARAM_DAMPING = 6;
	enum int PARAM_HUE_VARIATION = 9;
	enum int PARAM_ANIM_SPEED = 10;
	enum int PARAM_ORBIT_VELOCITY = 2;
	enum int PARAM_ANIM_OFFSET = 11;
	enum int PARAM_RADIAL_ACCEL = 4;
	enum int FLAG_ROTATE_Y = 1;
	enum int PARAM_MAX = 12;
	void set_spread(in float degrees)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("ParticlesMaterial", "set_spread");
		const(void*)[1] _GODOT_args = [cast(void*)(&degrees), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	float get_spread() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("ParticlesMaterial", "get_spread");
		float _GODOT_ret = float.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_flatness(in float amount)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("ParticlesMaterial", "set_flatness");
		const(void*)[1] _GODOT_args = [cast(void*)(&amount), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	float get_flatness() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("ParticlesMaterial", "get_flatness");
		float _GODOT_ret = float.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_param(in int param, in float value)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("ParticlesMaterial", "set_param");
		const(void*)[2] _GODOT_args = [cast(void*)(&param), cast(void*)(&value), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	float get_param(in int param) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("ParticlesMaterial", "get_param");
		float _GODOT_ret = float.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&param), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_param_randomness(in int param, in float randomness)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("ParticlesMaterial", "set_param_randomness");
		const(void*)[2] _GODOT_args = [cast(void*)(&param), cast(void*)(&randomness), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	float get_param_randomness(in int param) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("ParticlesMaterial", "get_param_randomness");
		float _GODOT_ret = float.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&param), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_param_texture(in int param, in GodotObject texture)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("ParticlesMaterial", "set_param_texture");
		const(void*)[2] _GODOT_args = [cast(void*)(&param), cast(void*)(texture), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	GodotObject get_param_texture(in int param) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("ParticlesMaterial", "get_param_texture");
		GodotObject _GODOT_ret = GodotObject.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&param), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_color(in Color color)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("ParticlesMaterial", "set_color");
		const(void*)[1] _GODOT_args = [cast(void*)(&color), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	Color get_color() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("ParticlesMaterial", "get_color");
		Color _GODOT_ret = Color.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_color_ramp(in Texture ramp)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("ParticlesMaterial", "set_color_ramp");
		const(void*)[1] _GODOT_args = [cast(void*)(ramp), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	Texture get_color_ramp() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("ParticlesMaterial", "get_color_ramp");
		Texture _GODOT_ret = Texture.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_flag(in int flag, in bool enable)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("ParticlesMaterial", "set_flag");
		const(void*)[2] _GODOT_args = [cast(void*)(&flag), cast(void*)(&enable), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	bool get_flag(in int flag) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("ParticlesMaterial", "get_flag");
		bool _GODOT_ret = bool.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&flag), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_emission_shape(in int shape)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("ParticlesMaterial", "set_emission_shape");
		const(void*)[1] _GODOT_args = [cast(void*)(&shape), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	int get_emission_shape() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("ParticlesMaterial", "get_emission_shape");
		int _GODOT_ret = int.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_emission_sphere_radius(in float radius)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("ParticlesMaterial", "set_emission_sphere_radius");
		const(void*)[1] _GODOT_args = [cast(void*)(&radius), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	float get_emission_sphere_radius() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("ParticlesMaterial", "get_emission_sphere_radius");
		float _GODOT_ret = float.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_emission_box_extents(in Vector3 extents)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("ParticlesMaterial", "set_emission_box_extents");
		const(void*)[1] _GODOT_args = [cast(void*)(&extents), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	Vector3 get_emission_box_extents() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("ParticlesMaterial", "get_emission_box_extents");
		Vector3 _GODOT_ret = Vector3.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_emission_point_texture(in Texture texture)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("ParticlesMaterial", "set_emission_point_texture");
		const(void*)[1] _GODOT_args = [cast(void*)(texture), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	Texture get_emission_point_texture() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("ParticlesMaterial", "get_emission_point_texture");
		Texture _GODOT_ret = Texture.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_emission_normal_texture(in Texture texture)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("ParticlesMaterial", "set_emission_normal_texture");
		const(void*)[1] _GODOT_args = [cast(void*)(texture), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	Texture get_emission_normal_texture() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("ParticlesMaterial", "get_emission_normal_texture");
		Texture _GODOT_ret = Texture.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_emission_color_texture(in Texture texture)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("ParticlesMaterial", "set_emission_color_texture");
		const(void*)[1] _GODOT_args = [cast(void*)(texture), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	Texture get_emission_color_texture() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("ParticlesMaterial", "get_emission_color_texture");
		Texture _GODOT_ret = Texture.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_emission_point_count(in int point_count)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("ParticlesMaterial", "set_emission_point_count");
		const(void*)[1] _GODOT_args = [cast(void*)(&point_count), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	int get_emission_point_count() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("ParticlesMaterial", "get_emission_point_count");
		int _GODOT_ret = int.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_trail_divisor(in int divisor)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("ParticlesMaterial", "set_trail_divisor");
		const(void*)[1] _GODOT_args = [cast(void*)(&divisor), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	int get_trail_divisor() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("ParticlesMaterial", "get_trail_divisor");
		int _GODOT_ret = int.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_trail_size_modifier(in CurveTexture texture)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("ParticlesMaterial", "set_trail_size_modifier");
		const(void*)[1] _GODOT_args = [cast(void*)(texture), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	CurveTexture get_trail_size_modifier() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("ParticlesMaterial", "get_trail_size_modifier");
		CurveTexture _GODOT_ret = CurveTexture.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_trail_color_modifier(in GradientTexture texture)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("ParticlesMaterial", "set_trail_color_modifier");
		const(void*)[1] _GODOT_args = [cast(void*)(texture), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	GradientTexture get_trail_color_modifier() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("ParticlesMaterial", "get_trail_color_modifier");
		GradientTexture _GODOT_ret = GradientTexture.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	Vector3 get_gravity() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("ParticlesMaterial", "get_gravity");
		Vector3 _GODOT_ret = Vector3.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_gravity(in Vector3 accel_vec)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("ParticlesMaterial", "set_gravity");
		const(void*)[1] _GODOT_args = [cast(void*)(&accel_vec), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
}
