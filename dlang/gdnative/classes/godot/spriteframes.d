module godot.spriteframes;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.object;
import godot.classdb;
import godot.resource;
import godot.texture;
@GodotBaseClass struct SpriteFrames
{
	static immutable string _GODOT_internal_name = "SpriteFrames";
public:
	union { godot_object _godot_object; Resource base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	package(godot) void* opCast(T : void*)() const { return cast(void*)_godot_object.ptr; }
	godot_object opCast(T : godot_object)() const { return cast(godot_object)_godot_object; }
	bool opEquals(in SpriteFrames other) const { return _godot_object.ptr is other._godot_object.ptr; }
	SpriteFrames opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	bool opCast(T : bool)() const { return _godot_object.ptr !is null; }
	inout(T) opCast(T)() inout if(isGodotBaseClass!T)
	{
		static assert(staticIndexOf!(SpriteFrames, T.BaseClasses) != -1, "Godot class "~T.stringof~" does not inherit SpriteFrames");
		if(_godot_object.ptr is null) return T.init;
		String c = String(T._GODOT_internal_name);
		if(is_class(c)) return inout(T)(_godot_object);
		return T.init;
	}
	inout(T) opCast(T)() inout if(extendsGodotBaseClass!T)
	{
		static assert(is(typeof(T.owner) : SpriteFrames) || staticIndexOf!(SpriteFrames, typeof(T.owner).BaseClasses) != -1, "D class "~T.stringof~" does not extend SpriteFrames");
		if(_godot_object.ptr is null) return null;
		if(has_method(String(`_GDNATIVE_D_typeid`)))
		{
			Object o = cast(Object)godot_nativescript_get_userdata(opCast!godot_object);
			return cast(inout(T))o;
		}
		return null;
	}
	static SpriteFrames _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("SpriteFrames");
		if(constructor is null) return typeof(this).init;
		return cast(SpriteFrames)(constructor());
	}
	void add_animation(in String anim)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("SpriteFrames", "add_animation");
		const(void*)[1] _GODOT_args = [cast(void*)(&anim), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	bool has_animation(in String anim) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("SpriteFrames", "has_animation");
		bool _GODOT_ret = bool.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&anim), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void remove_animation(in String anim)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("SpriteFrames", "remove_animation");
		const(void*)[1] _GODOT_args = [cast(void*)(&anim), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void rename_animation(in String anim, in String newname)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("SpriteFrames", "rename_animation");
		const(void*)[2] _GODOT_args = [cast(void*)(&anim), cast(void*)(&newname), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void set_animation_speed(in String anim, in float speed)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("SpriteFrames", "set_animation_speed");
		const(void*)[2] _GODOT_args = [cast(void*)(&anim), cast(void*)(&speed), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	float get_animation_speed(in String anim) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("SpriteFrames", "get_animation_speed");
		float _GODOT_ret = float.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&anim), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_animation_loop(in String anim, in bool loop)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("SpriteFrames", "set_animation_loop");
		const(void*)[2] _GODOT_args = [cast(void*)(&anim), cast(void*)(&loop), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	bool get_animation_loop(in String anim) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("SpriteFrames", "get_animation_loop");
		bool _GODOT_ret = bool.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&anim), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void add_frame(in String anim, in Texture frame, in int atpos = -1)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("SpriteFrames", "add_frame");
		const(void*)[3] _GODOT_args = [cast(void*)(&anim), cast(void*)(frame), cast(void*)(&atpos), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	int get_frame_count(in String anim) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("SpriteFrames", "get_frame_count");
		int _GODOT_ret = int.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&anim), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	Texture get_frame(in String anim, in int idx) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("SpriteFrames", "get_frame");
		Texture _GODOT_ret = Texture.init;
		const(void*)[2] _GODOT_args = [cast(void*)(&anim), cast(void*)(&idx), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_frame(in String anim, in int idx, in Texture txt)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("SpriteFrames", "set_frame");
		const(void*)[3] _GODOT_args = [cast(void*)(&anim), cast(void*)(&idx), cast(void*)(txt), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void remove_frame(in String anim, in int idx)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("SpriteFrames", "remove_frame");
		const(void*)[2] _GODOT_args = [cast(void*)(&anim), cast(void*)(&idx), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void clear(in String anim)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("SpriteFrames", "clear");
		const(void*)[1] _GODOT_args = [cast(void*)(&anim), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void clear_all()
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("SpriteFrames", "clear_all");
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null);
	}
	void _set_frames(in Array arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_set_frames");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	Array _get_frames() const
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_get_frames");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(Array);
	}
	void _set_animations(in Array arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_set_animations");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	Array _get_animations() const
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_get_animations");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(Array);
	}
}
