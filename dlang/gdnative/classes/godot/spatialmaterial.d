module godot.spatialmaterial;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.object;
import godot.classdb;
import godot.material;
import godot.texture;
@GodotBaseClass struct SpatialMaterial
{
	static immutable string _GODOT_internal_name = "SpatialMaterial";
public:
	union { godot_object _godot_object; Material base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	package(godot) void* opCast(T : void*)() const { return cast(void*)_godot_object.ptr; }
	godot_object opCast(T : godot_object)() const { return cast(godot_object)_godot_object; }
	bool opEquals(in SpatialMaterial other) const { return _godot_object.ptr is other._godot_object.ptr; }
	SpatialMaterial opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	bool opCast(T : bool)() const { return _godot_object.ptr !is null; }
	inout(T) opCast(T)() inout if(isGodotBaseClass!T)
	{
		static assert(staticIndexOf!(SpatialMaterial, T.BaseClasses) != -1, "Godot class "~T.stringof~" does not inherit SpatialMaterial");
		if(_godot_object.ptr is null) return T.init;
		String c = String(T._GODOT_internal_name);
		if(is_class(c)) return inout(T)(_godot_object);
		return T.init;
	}
	inout(T) opCast(T)() inout if(extendsGodotBaseClass!T)
	{
		static assert(is(typeof(T.owner) : SpatialMaterial) || staticIndexOf!(SpatialMaterial, typeof(T.owner).BaseClasses) != -1, "D class "~T.stringof~" does not extend SpatialMaterial");
		if(_godot_object.ptr is null) return null;
		if(has_method(String(`_GDNATIVE_D_typeid`)))
		{
			Object o = cast(Object)godot_nativescript_get_userdata(opCast!godot_object);
			return cast(inout(T))o;
		}
		return null;
	}
	static SpatialMaterial _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("SpatialMaterial");
		if(constructor is null) return typeof(this).init;
		return cast(SpatialMaterial)(constructor());
	}
	enum int FEATURE_DETAIL = 10;
	enum int FEATURE_AMBIENT_OCCLUSION = 6;
	enum int TEXTURE_REFRACTION = 11;
	enum int FEATURE_NORMAL_MAPPING = 2;
	enum int BLEND_MODE_SUB = 2;
	enum int FEATURE_REFRACTION = 9;
	enum int FEATURE_RIM = 3;
	enum int FEATURE_TRANSPARENT = 0;
	enum int TEXTURE_CHANNEL_ALPHA = 3;
	enum int TEXTURE_CLEARCOAT = 6;
	enum int SPECULAR_SCHLICK_GGX = 0;
	enum int FLAG_ALBEDO_FROM_VERTEX_COLOR = 3;
	enum int TEXTURE_EMISSION = 3;
	enum int FEATURE_ANISOTROPY = 5;
	enum int DIFFUSE_LAMBERT = 0;
	enum int BLEND_MODE_MUL = 3;
	enum int TEXTURE_SUBSURFACE_SCATTERING = 10;
	enum int DEPTH_DRAW_OPAQUE_ONLY = 0;
	enum int DIFFUSE_BURLEY = 3;
	enum int FEATURE_SUBSURACE_SCATTERING = 8;
	enum int TEXTURE_NORMAL = 4;
	enum int TEXTURE_DEPTH = 9;
	enum int BILLBOARD_ENABLED = 1;
	enum int FLAG_ONTOP = 2;
	enum int SPECULAR_BLINN = 1;
	enum int TEXTURE_CHANNEL_RED = 0;
	enum int FLAG_USE_VERTEX_LIGHTING = 1;
	enum int FLAG_UNSHADED = 0;
	enum int BILLBOARD_FIXED_Y = 2;
	enum int SPECULAR_DISABLED = 4;
	enum int DETAIL_UV_2 = 1;
	enum int TEXTURE_FLOWMAP = 7;
	enum int TEXTURE_MAX = 15;
	enum int DIFFUSE_HALF_LAMBERT = 1;
	enum int DIFFUSE_TOON = 4;
	enum int DEPTH_DRAW_ALWAYS = 1;
	enum int TEXTURE_METALLIC = 1;
	enum int FLAG_MAX = 10;
	enum int DEPTH_DRAW_ALPHA_OPAQUE_PREPASS = 3;
	enum int TEXTURE_RIM = 5;
	enum int TEXTURE_DETAIL_NORMAL = 14;
	enum int DETAIL_UV_1 = 0;
	enum int FEATURE_EMISSION = 1;
	enum int BLEND_MODE_MIX = 0;
	enum int FLAG_FIXED_SIZE = 6;
	enum int SPECULAR_PHONG = 2;
	enum int FLAG_SRGB_VERTEX_COLOR = 4;
	enum int CULL_BACK = 0;
	enum int FEATURE_MAX = 11;
	enum int BLEND_MODE_ADD = 1;
	enum int DEPTH_DRAW_DISABLED = 2;
	enum int SPECULAR_TOON = 3;
	enum int DIFFUSE_OREN_NAYAR = 2;
	enum int BILLBOARD_DISABLED = 0;
	enum int TEXTURE_CHANNEL_BLUE = 2;
	enum int BILLBOARD_PARTICLES = 3;
	enum int TEXTURE_ALBEDO = 0;
	enum int TEXTURE_AMBIENT_OCCLUSION = 8;
	enum int FLAG_USE_POINT_SIZE = 5;
	enum int FEATURE_CLEARCOAT = 4;
	enum int TEXTURE_DETAIL_MASK = 12;
	enum int TEXTURE_CHANNEL_GRAYSCALE = 4;
	enum int TEXTURE_ROUGHNESS = 2;
	enum int TEXTURE_DETAIL_ALBEDO = 13;
	enum int FEATURE_DEPTH_MAPPING = 7;
	enum int CULL_FRONT = 1;
	enum int CULL_DISABLED = 2;
	enum int TEXTURE_CHANNEL_GREEN = 1;
	void set_albedo(in Color albedo)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("SpatialMaterial", "set_albedo");
		const(void*)[1] _GODOT_args = [cast(void*)(&albedo), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	Color get_albedo() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("SpatialMaterial", "get_albedo");
		Color _GODOT_ret = Color.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_specular(in float specular)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("SpatialMaterial", "set_specular");
		const(void*)[1] _GODOT_args = [cast(void*)(&specular), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	float get_specular() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("SpatialMaterial", "get_specular");
		float _GODOT_ret = float.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_metallic(in float metallic)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("SpatialMaterial", "set_metallic");
		const(void*)[1] _GODOT_args = [cast(void*)(&metallic), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	float get_metallic() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("SpatialMaterial", "get_metallic");
		float _GODOT_ret = float.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_roughness(in float roughness)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("SpatialMaterial", "set_roughness");
		const(void*)[1] _GODOT_args = [cast(void*)(&roughness), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	float get_roughness() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("SpatialMaterial", "get_roughness");
		float _GODOT_ret = float.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_emission(in Color emission)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("SpatialMaterial", "set_emission");
		const(void*)[1] _GODOT_args = [cast(void*)(&emission), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	Color get_emission() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("SpatialMaterial", "get_emission");
		Color _GODOT_ret = Color.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_emission_energy(in float emission_energy)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("SpatialMaterial", "set_emission_energy");
		const(void*)[1] _GODOT_args = [cast(void*)(&emission_energy), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	float get_emission_energy() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("SpatialMaterial", "get_emission_energy");
		float _GODOT_ret = float.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_normal_scale(in float normal_scale)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("SpatialMaterial", "set_normal_scale");
		const(void*)[1] _GODOT_args = [cast(void*)(&normal_scale), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	float get_normal_scale() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("SpatialMaterial", "get_normal_scale");
		float _GODOT_ret = float.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_rim(in float rim)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("SpatialMaterial", "set_rim");
		const(void*)[1] _GODOT_args = [cast(void*)(&rim), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	float get_rim() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("SpatialMaterial", "get_rim");
		float _GODOT_ret = float.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_rim_tint(in float rim_tint)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("SpatialMaterial", "set_rim_tint");
		const(void*)[1] _GODOT_args = [cast(void*)(&rim_tint), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	float get_rim_tint() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("SpatialMaterial", "get_rim_tint");
		float _GODOT_ret = float.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_clearcoat(in float clearcoat)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("SpatialMaterial", "set_clearcoat");
		const(void*)[1] _GODOT_args = [cast(void*)(&clearcoat), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	float get_clearcoat() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("SpatialMaterial", "get_clearcoat");
		float _GODOT_ret = float.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_clearcoat_gloss(in float clearcoat_gloss)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("SpatialMaterial", "set_clearcoat_gloss");
		const(void*)[1] _GODOT_args = [cast(void*)(&clearcoat_gloss), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	float get_clearcoat_gloss() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("SpatialMaterial", "get_clearcoat_gloss");
		float _GODOT_ret = float.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_anisotropy(in float anisotropy)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("SpatialMaterial", "set_anisotropy");
		const(void*)[1] _GODOT_args = [cast(void*)(&anisotropy), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	float get_anisotropy() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("SpatialMaterial", "get_anisotropy");
		float _GODOT_ret = float.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_depth_scale(in float depth_scale)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("SpatialMaterial", "set_depth_scale");
		const(void*)[1] _GODOT_args = [cast(void*)(&depth_scale), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	float get_depth_scale() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("SpatialMaterial", "get_depth_scale");
		float _GODOT_ret = float.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_subsurface_scattering_strength(in float strength)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("SpatialMaterial", "set_subsurface_scattering_strength");
		const(void*)[1] _GODOT_args = [cast(void*)(&strength), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	float get_subsurface_scattering_strength() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("SpatialMaterial", "get_subsurface_scattering_strength");
		float _GODOT_ret = float.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_refraction(in float refraction)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("SpatialMaterial", "set_refraction");
		const(void*)[1] _GODOT_args = [cast(void*)(&refraction), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	float get_refraction() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("SpatialMaterial", "get_refraction");
		float _GODOT_ret = float.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_line_width(in float line_width)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("SpatialMaterial", "set_line_width");
		const(void*)[1] _GODOT_args = [cast(void*)(&line_width), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	float get_line_width() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("SpatialMaterial", "get_line_width");
		float _GODOT_ret = float.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_point_size(in float point_size)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("SpatialMaterial", "set_point_size");
		const(void*)[1] _GODOT_args = [cast(void*)(&point_size), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	float get_point_size() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("SpatialMaterial", "get_point_size");
		float _GODOT_ret = float.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_detail_uv(in int detail_uv)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("SpatialMaterial", "set_detail_uv");
		const(void*)[1] _GODOT_args = [cast(void*)(&detail_uv), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	int get_detail_uv() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("SpatialMaterial", "get_detail_uv");
		int _GODOT_ret = int.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_blend_mode(in int blend_mode)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("SpatialMaterial", "set_blend_mode");
		const(void*)[1] _GODOT_args = [cast(void*)(&blend_mode), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	int get_blend_mode() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("SpatialMaterial", "get_blend_mode");
		int _GODOT_ret = int.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_depth_draw_mode(in int depth_draw_mode)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("SpatialMaterial", "set_depth_draw_mode");
		const(void*)[1] _GODOT_args = [cast(void*)(&depth_draw_mode), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	int get_depth_draw_mode() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("SpatialMaterial", "get_depth_draw_mode");
		int _GODOT_ret = int.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_cull_mode(in int cull_mode)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("SpatialMaterial", "set_cull_mode");
		const(void*)[1] _GODOT_args = [cast(void*)(&cull_mode), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	int get_cull_mode() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("SpatialMaterial", "get_cull_mode");
		int _GODOT_ret = int.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_diffuse_mode(in int diffuse_mode)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("SpatialMaterial", "set_diffuse_mode");
		const(void*)[1] _GODOT_args = [cast(void*)(&diffuse_mode), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	int get_diffuse_mode() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("SpatialMaterial", "get_diffuse_mode");
		int _GODOT_ret = int.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_specular_mode(in int specular_mode)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("SpatialMaterial", "set_specular_mode");
		const(void*)[1] _GODOT_args = [cast(void*)(&specular_mode), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	int get_specular_mode() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("SpatialMaterial", "get_specular_mode");
		int _GODOT_ret = int.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_flag(in int flag, in bool enable)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("SpatialMaterial", "set_flag");
		const(void*)[2] _GODOT_args = [cast(void*)(&flag), cast(void*)(&enable), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	bool get_flag(in int flag) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("SpatialMaterial", "get_flag");
		bool _GODOT_ret = bool.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&flag), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_feature(in int feature, in bool enable)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("SpatialMaterial", "set_feature");
		const(void*)[2] _GODOT_args = [cast(void*)(&feature), cast(void*)(&enable), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	bool get_feature(in int feature) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("SpatialMaterial", "get_feature");
		bool _GODOT_ret = bool.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&feature), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_texture(in int param, in Texture texture)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("SpatialMaterial", "set_texture");
		const(void*)[2] _GODOT_args = [cast(void*)(&param), cast(void*)(texture), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	Texture get_texture(in int param) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("SpatialMaterial", "get_texture");
		Texture _GODOT_ret = Texture.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&param), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_detail_blend_mode(in int detail_blend_mode)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("SpatialMaterial", "set_detail_blend_mode");
		const(void*)[1] _GODOT_args = [cast(void*)(&detail_blend_mode), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	int get_detail_blend_mode() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("SpatialMaterial", "get_detail_blend_mode");
		int _GODOT_ret = int.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_uv1_scale(in Vector3 scale)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("SpatialMaterial", "set_uv1_scale");
		const(void*)[1] _GODOT_args = [cast(void*)(&scale), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	Vector3 get_uv1_scale() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("SpatialMaterial", "get_uv1_scale");
		Vector3 _GODOT_ret = Vector3.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_uv1_offset(in Vector3 offset)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("SpatialMaterial", "set_uv1_offset");
		const(void*)[1] _GODOT_args = [cast(void*)(&offset), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	Vector3 get_uv1_offset() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("SpatialMaterial", "get_uv1_offset");
		Vector3 _GODOT_ret = Vector3.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_uv1_triplanar_blend_sharpness(in float sharpness)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("SpatialMaterial", "set_uv1_triplanar_blend_sharpness");
		const(void*)[1] _GODOT_args = [cast(void*)(&sharpness), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	float get_uv1_triplanar_blend_sharpness() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("SpatialMaterial", "get_uv1_triplanar_blend_sharpness");
		float _GODOT_ret = float.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_uv2_scale(in Vector3 scale)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("SpatialMaterial", "set_uv2_scale");
		const(void*)[1] _GODOT_args = [cast(void*)(&scale), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	Vector3 get_uv2_scale() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("SpatialMaterial", "get_uv2_scale");
		Vector3 _GODOT_ret = Vector3.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_uv2_offset(in Vector3 offset)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("SpatialMaterial", "set_uv2_offset");
		const(void*)[1] _GODOT_args = [cast(void*)(&offset), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	Vector3 get_uv2_offset() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("SpatialMaterial", "get_uv2_offset");
		Vector3 _GODOT_ret = Vector3.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_uv2_triplanar_blend_sharpness(in float sharpness)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("SpatialMaterial", "set_uv2_triplanar_blend_sharpness");
		const(void*)[1] _GODOT_args = [cast(void*)(&sharpness), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	float get_uv2_triplanar_blend_sharpness() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("SpatialMaterial", "get_uv2_triplanar_blend_sharpness");
		float _GODOT_ret = float.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_billboard_mode(in int mode)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("SpatialMaterial", "set_billboard_mode");
		const(void*)[1] _GODOT_args = [cast(void*)(&mode), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	int get_billboard_mode() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("SpatialMaterial", "get_billboard_mode");
		int _GODOT_ret = int.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_particles_anim_h_frames(in int frames)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("SpatialMaterial", "set_particles_anim_h_frames");
		const(void*)[1] _GODOT_args = [cast(void*)(&frames), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	int get_particles_anim_h_frames() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("SpatialMaterial", "get_particles_anim_h_frames");
		int _GODOT_ret = int.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_particles_anim_v_frames(in int frames)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("SpatialMaterial", "set_particles_anim_v_frames");
		const(void*)[1] _GODOT_args = [cast(void*)(&frames), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	int get_particles_anim_v_frames() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("SpatialMaterial", "get_particles_anim_v_frames");
		int _GODOT_ret = int.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_particles_anim_loop(in int frames)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("SpatialMaterial", "set_particles_anim_loop");
		const(void*)[1] _GODOT_args = [cast(void*)(&frames), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	int get_particles_anim_loop() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("SpatialMaterial", "get_particles_anim_loop");
		int _GODOT_ret = int.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_depth_deep_parallax(in bool enable)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("SpatialMaterial", "set_depth_deep_parallax");
		const(void*)[1] _GODOT_args = [cast(void*)(&enable), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	bool is_depth_deep_parallax_enabled() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("SpatialMaterial", "is_depth_deep_parallax_enabled");
		bool _GODOT_ret = bool.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_depth_deep_parallax_min_layers(in int layer)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("SpatialMaterial", "set_depth_deep_parallax_min_layers");
		const(void*)[1] _GODOT_args = [cast(void*)(&layer), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	int get_depth_deep_parallax_min_layers() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("SpatialMaterial", "get_depth_deep_parallax_min_layers");
		int _GODOT_ret = int.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_depth_deep_parallax_max_layers(in int layer)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("SpatialMaterial", "set_depth_deep_parallax_max_layers");
		const(void*)[1] _GODOT_args = [cast(void*)(&layer), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	int get_depth_deep_parallax_max_layers() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("SpatialMaterial", "get_depth_deep_parallax_max_layers");
		int _GODOT_ret = int.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_grow(in float amount)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("SpatialMaterial", "set_grow");
		const(void*)[1] _GODOT_args = [cast(void*)(&amount), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	float get_grow() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("SpatialMaterial", "get_grow");
		float _GODOT_ret = float.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_grow_enabled(in bool enable)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("SpatialMaterial", "set_grow_enabled");
		const(void*)[1] _GODOT_args = [cast(void*)(&enable), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	bool is_grow_enabled() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("SpatialMaterial", "is_grow_enabled");
		bool _GODOT_ret = bool.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_metallic_texture_channel(in int channel)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("SpatialMaterial", "set_metallic_texture_channel");
		const(void*)[1] _GODOT_args = [cast(void*)(&channel), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	int get_metallic_texture_channel() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("SpatialMaterial", "get_metallic_texture_channel");
		int _GODOT_ret = int.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_roughness_texture_channel(in int channel)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("SpatialMaterial", "set_roughness_texture_channel");
		const(void*)[1] _GODOT_args = [cast(void*)(&channel), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	int get_roughness_texture_channel() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("SpatialMaterial", "get_roughness_texture_channel");
		int _GODOT_ret = int.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_ao_texture_channel(in int channel)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("SpatialMaterial", "set_ao_texture_channel");
		const(void*)[1] _GODOT_args = [cast(void*)(&channel), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	int get_ao_texture_channel() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("SpatialMaterial", "get_ao_texture_channel");
		int _GODOT_ret = int.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_refraction_texture_channel(in int channel)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("SpatialMaterial", "set_refraction_texture_channel");
		const(void*)[1] _GODOT_args = [cast(void*)(&channel), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	int get_refraction_texture_channel() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("SpatialMaterial", "get_refraction_texture_channel");
		int _GODOT_ret = int.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
}
