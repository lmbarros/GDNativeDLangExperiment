module godot.texture;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.object;
import godot.resource;
@GodotBaseClass struct Texture
{
	static immutable string _GODOT_internal_name = "Texture";
public:
	union { godot_object _godot_object; Resource base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	package(godot) void* opCast(T : void*)() const { return cast(void*)_godot_object.ptr; }
	godot_object opCast(T : godot_object)() const { return cast(godot_object)_godot_object; }
	bool opEquals(in Texture other) const { return _godot_object.ptr is other._godot_object.ptr; }
	Texture opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	bool opCast(T : bool)() const { return _godot_object.ptr !is null; }
	inout(T) opCast(T)() inout if(isGodotBaseClass!T)
	{
		static assert(staticIndexOf!(Texture, T.BaseClasses) != -1, "Godot class "~T.stringof~" does not inherit Texture");
		if(_godot_object.ptr is null) return T.init;
		String c = String(T._GODOT_internal_name);
		if(is_class(c)) return inout(T)(_godot_object);
		return T.init;
	}
	inout(T) opCast(T)() inout if(extendsGodotBaseClass!T)
	{
		static assert(is(typeof(T.owner) : Texture) || staticIndexOf!(Texture, typeof(T.owner).BaseClasses) != -1, "D class "~T.stringof~" does not extend Texture");
		if(_godot_object.ptr is null) return null;
		if(has_method(String(`_GDNATIVE_D_typeid`)))
		{
			Object o = cast(Object)godot_nativescript_get_userdata(opCast!godot_object);
			return cast(inout(T))o;
		}
		return null;
	}
	static Texture _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("Texture");
		if(constructor is null) return typeof(this).init;
		return cast(Texture)(constructor());
	}
	enum int FLAG_ANISOTROPIC_FILTER = 8;
	enum int FLAG_FILTER = 4;
	enum int FLAGS_DEFAULT = 7;
	enum int FLAG_CONVERT_TO_LINEAR = 16;
	enum int FLAG_MIRRORED_REPEAT = 32;
	enum int FLAG_REPEAT = 2;
	enum int FLAG_MIPMAPS = 1;
	enum int FLAG_VIDEO_SURFACE = 4096;
	int get_width() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Texture", "get_width");
		int _GODOT_ret = int.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	int get_height() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Texture", "get_height");
		int _GODOT_ret = int.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	Vector2 get_size() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Texture", "get_size");
		Vector2 _GODOT_ret = Vector2.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	bool has_alpha() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Texture", "has_alpha");
		bool _GODOT_ret = bool.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_flags(in int flags)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Texture", "set_flags");
		const(void*)[1] _GODOT_args = [cast(void*)(&flags), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	int get_flags() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Texture", "get_flags");
		int _GODOT_ret = int.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void draw(in RID canvas_item, in Vector2 pos, in Color modulate = Color(1,1,1,1), in bool transpose = false, in Texture normal_map = Texture.init) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Texture", "draw");
		const(void*)[5] _GODOT_args = [cast(void*)(&canvas_item), cast(void*)(&pos), cast(void*)(&modulate), cast(void*)(&transpose), cast(void*)(normal_map), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void draw_rect(in RID canvas_item, in Rect2 rect, in bool tile, in Color modulate = Color(1,1,1,1), in bool transpose = false, in Texture normal_map = Texture.init) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Texture", "draw_rect");
		const(void*)[6] _GODOT_args = [cast(void*)(&canvas_item), cast(void*)(&rect), cast(void*)(&tile), cast(void*)(&modulate), cast(void*)(&transpose), cast(void*)(normal_map), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void draw_rect_region(in RID canvas_item, in Rect2 rect, in Rect2 src_rect, in Color modulate = Color(1,1,1,1), in bool transpose = false, in Texture normal_map = Texture.init, in bool clip_uv = true) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Texture", "draw_rect_region");
		const(void*)[7] _GODOT_args = [cast(void*)(&canvas_item), cast(void*)(&rect), cast(void*)(&src_rect), cast(void*)(&modulate), cast(void*)(&transpose), cast(void*)(normal_map), cast(void*)(&clip_uv), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
}
