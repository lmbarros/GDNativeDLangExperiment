module godot.styleboxtexture;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.object;
import godot.classdb;
import godot.stylebox;
import godot.texture;
@GodotBaseClass struct StyleBoxTexture
{
	static immutable string _GODOT_internal_name = "StyleBoxTexture";
public:
	union { godot_object _godot_object; StyleBox base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	package(godot) void* opCast(T : void*)() const { return cast(void*)_godot_object.ptr; }
	godot_object opCast(T : godot_object)() const { return cast(godot_object)_godot_object; }
	bool opEquals(in StyleBoxTexture other) const { return _godot_object.ptr is other._godot_object.ptr; }
	StyleBoxTexture opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	bool opCast(T : bool)() const { return _godot_object.ptr !is null; }
	inout(T) opCast(T)() inout if(isGodotBaseClass!T)
	{
		static assert(staticIndexOf!(StyleBoxTexture, T.BaseClasses) != -1, "Godot class "~T.stringof~" does not inherit StyleBoxTexture");
		if(_godot_object.ptr is null) return T.init;
		String c = String(T._GODOT_internal_name);
		if(is_class(c)) return inout(T)(_godot_object);
		return T.init;
	}
	inout(T) opCast(T)() inout if(extendsGodotBaseClass!T)
	{
		static assert(is(typeof(T.owner) : StyleBoxTexture) || staticIndexOf!(StyleBoxTexture, typeof(T.owner).BaseClasses) != -1, "D class "~T.stringof~" does not extend StyleBoxTexture");
		if(_godot_object.ptr is null) return null;
		if(has_method(String(`_GDNATIVE_D_typeid`)))
		{
			Object o = cast(Object)godot_nativescript_get_userdata(opCast!godot_object);
			return cast(inout(T))o;
		}
		return null;
	}
	static StyleBoxTexture _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("StyleBoxTexture");
		if(constructor is null) return typeof(this).init;
		return cast(StyleBoxTexture)(constructor());
	}
	void set_texture(in Texture texture)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("StyleBoxTexture", "set_texture");
		const(void*)[1] _GODOT_args = [cast(void*)(texture), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	Texture get_texture() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("StyleBoxTexture", "get_texture");
		Texture _GODOT_ret = Texture.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_normal_map(in Texture normal_map)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("StyleBoxTexture", "set_normal_map");
		const(void*)[1] _GODOT_args = [cast(void*)(normal_map), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	Texture get_normal_map() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("StyleBoxTexture", "get_normal_map");
		Texture _GODOT_ret = Texture.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_margin_size(in int margin, in float size)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("StyleBoxTexture", "set_margin_size");
		const(void*)[2] _GODOT_args = [cast(void*)(&margin), cast(void*)(&size), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	float get_margin_size(in int margin) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("StyleBoxTexture", "get_margin_size");
		float _GODOT_ret = float.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&margin), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_expand_margin_size(in int margin, in float size)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("StyleBoxTexture", "set_expand_margin_size");
		const(void*)[2] _GODOT_args = [cast(void*)(&margin), cast(void*)(&size), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	float get_expand_margin_size(in int margin) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("StyleBoxTexture", "get_expand_margin_size");
		float _GODOT_ret = float.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&margin), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_region_rect(in Rect2 region)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("StyleBoxTexture", "set_region_rect");
		const(void*)[1] _GODOT_args = [cast(void*)(&region), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	Rect2 get_region_rect() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("StyleBoxTexture", "get_region_rect");
		Rect2 _GODOT_ret = Rect2.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_draw_center(in bool enable)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("StyleBoxTexture", "set_draw_center");
		const(void*)[1] _GODOT_args = [cast(void*)(&enable), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	bool get_draw_center() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("StyleBoxTexture", "get_draw_center");
		bool _GODOT_ret = bool.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_modulate(in Color color)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("StyleBoxTexture", "set_modulate");
		const(void*)[1] _GODOT_args = [cast(void*)(&color), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	Color get_modulate() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("StyleBoxTexture", "get_modulate");
		Color _GODOT_ret = Color.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
}
