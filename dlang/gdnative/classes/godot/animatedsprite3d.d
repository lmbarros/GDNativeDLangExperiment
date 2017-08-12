module godot.animatedsprite3d;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.object;
import godot.classdb;
import godot.spritebase3d;
import godot.spriteframes;
@GodotBaseClass struct AnimatedSprite3D
{
	static immutable string _GODOT_internal_name = "AnimatedSprite3D";
public:
	union { godot_object _godot_object; SpriteBase3D base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	package(godot) void* opCast(T : void*)() const { return cast(void*)_godot_object.ptr; }
	godot_object opCast(T : godot_object)() const { return cast(godot_object)_godot_object; }
	bool opEquals(in AnimatedSprite3D other) const { return _godot_object.ptr is other._godot_object.ptr; }
	AnimatedSprite3D opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	bool opCast(T : bool)() const { return _godot_object.ptr !is null; }
	inout(T) opCast(T)() inout if(isGodotBaseClass!T)
	{
		static assert(staticIndexOf!(AnimatedSprite3D, T.BaseClasses) != -1, "Godot class "~T.stringof~" does not inherit AnimatedSprite3D");
		if(_godot_object.ptr is null) return T.init;
		String c = String(T._GODOT_internal_name);
		if(is_class(c)) return inout(T)(_godot_object);
		return T.init;
	}
	inout(T) opCast(T)() inout if(extendsGodotBaseClass!T)
	{
		static assert(is(typeof(T.owner) : AnimatedSprite3D) || staticIndexOf!(AnimatedSprite3D, typeof(T.owner).BaseClasses) != -1, "D class "~T.stringof~" does not extend AnimatedSprite3D");
		if(_godot_object.ptr is null) return null;
		if(has_method(String(`_GDNATIVE_D_typeid`)))
		{
			Object o = cast(Object)godot_nativescript_get_userdata(opCast!godot_object);
			return cast(inout(T))o;
		}
		return null;
	}
	static AnimatedSprite3D _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("AnimatedSprite3D");
		if(constructor is null) return typeof(this).init;
		return cast(AnimatedSprite3D)(constructor());
	}
	void set_sprite_frames(in SpriteFrames sprite_frames)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("AnimatedSprite3D", "set_sprite_frames");
		const(void*)[1] _GODOT_args = [cast(void*)(sprite_frames), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	SpriteFrames get_sprite_frames() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("AnimatedSprite3D", "get_sprite_frames");
		SpriteFrames _GODOT_ret = SpriteFrames.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_animation(in String animation)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("AnimatedSprite3D", "set_animation");
		const(void*)[1] _GODOT_args = [cast(void*)(&animation), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	String get_animation() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("AnimatedSprite3D", "get_animation");
		String _GODOT_ret = String.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void _set_playing(in bool playing)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(playing);
		String _GODOT_method_name = String("_set_playing");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	bool _is_playing() const
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_is_playing");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(bool);
	}
	void play(in String anim = String.init)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("AnimatedSprite3D", "play");
		const(void*)[1] _GODOT_args = [cast(void*)(&anim), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void stop()
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("AnimatedSprite3D", "stop");
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null);
	}
	bool is_playing() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("AnimatedSprite3D", "is_playing");
		bool _GODOT_ret = bool.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_frame(in int frame)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("AnimatedSprite3D", "set_frame");
		const(void*)[1] _GODOT_args = [cast(void*)(&frame), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	int get_frame() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("AnimatedSprite3D", "get_frame");
		int _GODOT_ret = int.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void _res_changed()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_res_changed");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
}
