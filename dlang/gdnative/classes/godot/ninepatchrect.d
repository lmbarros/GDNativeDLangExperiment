module godot.ninepatchrect;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.object;
import godot.classdb;
import godot.control;
import godot.texture;
@GodotBaseClass struct NinePatchRect
{
	static immutable string _GODOT_internal_name = "NinePatchRect";
public:
	union { godot_object _godot_object; Control base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	package(godot) void* opCast(T : void*)() const { return cast(void*)_godot_object.ptr; }
	godot_object opCast(T : godot_object)() const { return cast(godot_object)_godot_object; }
	bool opEquals(in NinePatchRect other) const { return _godot_object.ptr is other._godot_object.ptr; }
	NinePatchRect opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	bool opCast(T : bool)() const { return _godot_object.ptr !is null; }
	inout(T) opCast(T)() inout if(isGodotBaseClass!T)
	{
		static assert(staticIndexOf!(NinePatchRect, T.BaseClasses) != -1, "Godot class "~T.stringof~" does not inherit NinePatchRect");
		if(_godot_object.ptr is null) return T.init;
		String c = String(T._GODOT_internal_name);
		if(is_class(c)) return inout(T)(_godot_object);
		return T.init;
	}
	inout(T) opCast(T)() inout if(extendsGodotBaseClass!T)
	{
		static assert(is(typeof(T.owner) : NinePatchRect) || staticIndexOf!(NinePatchRect, typeof(T.owner).BaseClasses) != -1, "D class "~T.stringof~" does not extend NinePatchRect");
		if(_godot_object.ptr is null) return null;
		if(has_method(String(`_GDNATIVE_D_typeid`)))
		{
			Object o = cast(Object)godot_nativescript_get_userdata(opCast!godot_object);
			return cast(inout(T))o;
		}
		return null;
	}
	static NinePatchRect _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("NinePatchRect");
		if(constructor is null) return typeof(this).init;
		return cast(NinePatchRect)(constructor());
	}
	enum int AXIS_STRETCH_MODE_TILE_FIT = 2;
	enum int AXIS_STRETCH_MODE_STRETCH = 0;
	enum int AXIS_STRETCH_MODE_TILE = 1;
	void set_texture(in Texture texture)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("NinePatchRect", "set_texture");
		const(void*)[1] _GODOT_args = [cast(void*)(texture), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	Texture get_texture() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("NinePatchRect", "get_texture");
		Texture _GODOT_ret = Texture.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_patch_margin(in int margin, in int value)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("NinePatchRect", "set_patch_margin");
		const(void*)[2] _GODOT_args = [cast(void*)(&margin), cast(void*)(&value), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	int get_patch_margin(in int margin) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("NinePatchRect", "get_patch_margin");
		int _GODOT_ret = int.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&margin), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_region_rect(in Rect2 rect)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("NinePatchRect", "set_region_rect");
		const(void*)[1] _GODOT_args = [cast(void*)(&rect), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	Rect2 get_region_rect() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("NinePatchRect", "get_region_rect");
		Rect2 _GODOT_ret = Rect2.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_draw_center(in bool draw_center)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("NinePatchRect", "set_draw_center");
		const(void*)[1] _GODOT_args = [cast(void*)(&draw_center), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	bool get_draw_center() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("NinePatchRect", "get_draw_center");
		bool _GODOT_ret = bool.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_h_axis_stretch_mode(in int mode)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("NinePatchRect", "set_h_axis_stretch_mode");
		const(void*)[1] _GODOT_args = [cast(void*)(&mode), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	int get_h_axis_stretch_mode() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("NinePatchRect", "get_h_axis_stretch_mode");
		int _GODOT_ret = int.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_v_axis_stretch_mode(in int mode)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("NinePatchRect", "set_v_axis_stretch_mode");
		const(void*)[1] _GODOT_args = [cast(void*)(&mode), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	int get_v_axis_stretch_mode() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("NinePatchRect", "get_v_axis_stretch_mode");
		int _GODOT_ret = int.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
}
