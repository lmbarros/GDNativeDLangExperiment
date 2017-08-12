module godot.sprite;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.object;
import godot.classdb;
import godot.node2d;
import godot.texture;
@GodotBaseClass struct Sprite
{
	static immutable string _GODOT_internal_name = "Sprite";
public:
	union { godot_object _godot_object; Node2D base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	package(godot) void* opCast(T : void*)() const { return cast(void*)_godot_object.ptr; }
	godot_object opCast(T : godot_object)() const { return cast(godot_object)_godot_object; }
	bool opEquals(in Sprite other) const { return _godot_object.ptr is other._godot_object.ptr; }
	Sprite opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	bool opCast(T : bool)() const { return _godot_object.ptr !is null; }
	inout(T) opCast(T)() inout if(isGodotBaseClass!T)
	{
		static assert(staticIndexOf!(Sprite, T.BaseClasses) != -1, "Godot class "~T.stringof~" does not inherit Sprite");
		if(_godot_object.ptr is null) return T.init;
		String c = String(T._GODOT_internal_name);
		if(is_class(c)) return inout(T)(_godot_object);
		return T.init;
	}
	inout(T) opCast(T)() inout if(extendsGodotBaseClass!T)
	{
		static assert(is(typeof(T.owner) : Sprite) || staticIndexOf!(Sprite, typeof(T.owner).BaseClasses) != -1, "D class "~T.stringof~" does not extend Sprite");
		if(_godot_object.ptr is null) return null;
		if(has_method(String(`_GDNATIVE_D_typeid`)))
		{
			Object o = cast(Object)godot_nativescript_get_userdata(opCast!godot_object);
			return cast(inout(T))o;
		}
		return null;
	}
	static Sprite _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("Sprite");
		if(constructor is null) return typeof(this).init;
		return cast(Sprite)(constructor());
	}
	void set_texture(in Texture texture)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Sprite", "set_texture");
		const(void*)[1] _GODOT_args = [cast(void*)(texture), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	Texture get_texture() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Sprite", "get_texture");
		Texture _GODOT_ret = Texture.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_normal_map(in Texture normal_map)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Sprite", "set_normal_map");
		const(void*)[1] _GODOT_args = [cast(void*)(normal_map), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	Texture get_normal_map() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Sprite", "get_normal_map");
		Texture _GODOT_ret = Texture.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_centered(in bool centered)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Sprite", "set_centered");
		const(void*)[1] _GODOT_args = [cast(void*)(&centered), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	bool is_centered() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Sprite", "is_centered");
		bool _GODOT_ret = bool.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_offset(in Vector2 offset)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Sprite", "set_offset");
		const(void*)[1] _GODOT_args = [cast(void*)(&offset), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	Vector2 get_offset() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Sprite", "get_offset");
		Vector2 _GODOT_ret = Vector2.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_flip_h(in bool flip_h)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Sprite", "set_flip_h");
		const(void*)[1] _GODOT_args = [cast(void*)(&flip_h), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	bool is_flipped_h() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Sprite", "is_flipped_h");
		bool _GODOT_ret = bool.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_flip_v(in bool flip_v)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Sprite", "set_flip_v");
		const(void*)[1] _GODOT_args = [cast(void*)(&flip_v), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	bool is_flipped_v() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Sprite", "is_flipped_v");
		bool _GODOT_ret = bool.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_region(in bool enabled)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Sprite", "set_region");
		const(void*)[1] _GODOT_args = [cast(void*)(&enabled), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	bool is_region() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Sprite", "is_region");
		bool _GODOT_ret = bool.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_region_rect(in Rect2 rect)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Sprite", "set_region_rect");
		const(void*)[1] _GODOT_args = [cast(void*)(&rect), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	Rect2 get_region_rect() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Sprite", "get_region_rect");
		Rect2 _GODOT_ret = Rect2.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_region_filter_clip(in bool enabled)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Sprite", "set_region_filter_clip");
		const(void*)[1] _GODOT_args = [cast(void*)(&enabled), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	bool is_region_filter_clip_enabled() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Sprite", "is_region_filter_clip_enabled");
		bool _GODOT_ret = bool.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_frame(in int frame)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Sprite", "set_frame");
		const(void*)[1] _GODOT_args = [cast(void*)(&frame), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	int get_frame() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Sprite", "get_frame");
		int _GODOT_ret = int.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_vframes(in int vframes)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Sprite", "set_vframes");
		const(void*)[1] _GODOT_args = [cast(void*)(&vframes), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	int get_vframes() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Sprite", "get_vframes");
		int _GODOT_ret = int.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_hframes(in int hframes)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Sprite", "set_hframes");
		const(void*)[1] _GODOT_args = [cast(void*)(&hframes), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	int get_hframes() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Sprite", "get_hframes");
		int _GODOT_ret = int.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
}
