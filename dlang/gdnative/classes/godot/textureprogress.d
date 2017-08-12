module godot.textureprogress;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.object;
import godot.classdb;
import godot.range;
import godot.texture;
@GodotBaseClass struct TextureProgress
{
	static immutable string _GODOT_internal_name = "TextureProgress";
public:
	union { godot_object _godot_object; Range base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	package(godot) void* opCast(T : void*)() const { return cast(void*)_godot_object.ptr; }
	godot_object opCast(T : godot_object)() const { return cast(godot_object)_godot_object; }
	bool opEquals(in TextureProgress other) const { return _godot_object.ptr is other._godot_object.ptr; }
	TextureProgress opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	bool opCast(T : bool)() const { return _godot_object.ptr !is null; }
	inout(T) opCast(T)() inout if(isGodotBaseClass!T)
	{
		static assert(staticIndexOf!(TextureProgress, T.BaseClasses) != -1, "Godot class "~T.stringof~" does not inherit TextureProgress");
		if(_godot_object.ptr is null) return T.init;
		String c = String(T._GODOT_internal_name);
		if(is_class(c)) return inout(T)(_godot_object);
		return T.init;
	}
	inout(T) opCast(T)() inout if(extendsGodotBaseClass!T)
	{
		static assert(is(typeof(T.owner) : TextureProgress) || staticIndexOf!(TextureProgress, typeof(T.owner).BaseClasses) != -1, "D class "~T.stringof~" does not extend TextureProgress");
		if(_godot_object.ptr is null) return null;
		if(has_method(String(`_GDNATIVE_D_typeid`)))
		{
			Object o = cast(Object)godot_nativescript_get_userdata(opCast!godot_object);
			return cast(inout(T))o;
		}
		return null;
	}
	static TextureProgress _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("TextureProgress");
		if(constructor is null) return typeof(this).init;
		return cast(TextureProgress)(constructor());
	}
	enum int FILL_COUNTER_CLOCKWISE = 5;
	enum int FILL_LEFT_TO_RIGHT = 0;
	enum int FILL_CLOCKWISE = 4;
	enum int FILL_RIGHT_TO_LEFT = 1;
	enum int FILL_TOP_TO_BOTTOM = 2;
	enum int FILL_BOTTOM_TO_TOP = 3;
	void set_under_texture(in Texture tex)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("TextureProgress", "set_under_texture");
		const(void*)[1] _GODOT_args = [cast(void*)(tex), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	Texture get_under_texture() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("TextureProgress", "get_under_texture");
		Texture _GODOT_ret = Texture.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_progress_texture(in Texture tex)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("TextureProgress", "set_progress_texture");
		const(void*)[1] _GODOT_args = [cast(void*)(tex), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	Texture get_progress_texture() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("TextureProgress", "get_progress_texture");
		Texture _GODOT_ret = Texture.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_over_texture(in Texture tex)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("TextureProgress", "set_over_texture");
		const(void*)[1] _GODOT_args = [cast(void*)(tex), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	Texture get_over_texture() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("TextureProgress", "get_over_texture");
		Texture _GODOT_ret = Texture.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_fill_mode(in int mode)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("TextureProgress", "set_fill_mode");
		const(void*)[1] _GODOT_args = [cast(void*)(&mode), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	int get_fill_mode()
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("TextureProgress", "get_fill_mode");
		int _GODOT_ret = int.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_radial_initial_angle(in float mode)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("TextureProgress", "set_radial_initial_angle");
		const(void*)[1] _GODOT_args = [cast(void*)(&mode), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	float get_radial_initial_angle()
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("TextureProgress", "get_radial_initial_angle");
		float _GODOT_ret = float.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_radial_center_offset(in Vector2 mode)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("TextureProgress", "set_radial_center_offset");
		const(void*)[1] _GODOT_args = [cast(void*)(&mode), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	Vector2 get_radial_center_offset()
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("TextureProgress", "get_radial_center_offset");
		Vector2 _GODOT_ret = Vector2.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_fill_degrees(in float mode)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("TextureProgress", "set_fill_degrees");
		const(void*)[1] _GODOT_args = [cast(void*)(&mode), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	float get_fill_degrees()
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("TextureProgress", "get_fill_degrees");
		float _GODOT_ret = float.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
}
