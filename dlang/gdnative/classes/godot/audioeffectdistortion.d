module godot.audioeffectdistortion;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.object;
import godot.classdb;
import godot.audioeffect;
@GodotBaseClass struct AudioEffectDistortion
{
	static immutable string _GODOT_internal_name = "AudioEffectDistortion";
public:
	union { godot_object _godot_object; AudioEffect base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	package(godot) void* opCast(T : void*)() const { return cast(void*)_godot_object.ptr; }
	godot_object opCast(T : godot_object)() const { return cast(godot_object)_godot_object; }
	bool opEquals(in AudioEffectDistortion other) const { return _godot_object.ptr is other._godot_object.ptr; }
	AudioEffectDistortion opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	bool opCast(T : bool)() const { return _godot_object.ptr !is null; }
	inout(T) opCast(T)() inout if(isGodotBaseClass!T)
	{
		static assert(staticIndexOf!(AudioEffectDistortion, T.BaseClasses) != -1, "Godot class "~T.stringof~" does not inherit AudioEffectDistortion");
		if(_godot_object.ptr is null) return T.init;
		String c = String(T._GODOT_internal_name);
		if(is_class(c)) return inout(T)(_godot_object);
		return T.init;
	}
	inout(T) opCast(T)() inout if(extendsGodotBaseClass!T)
	{
		static assert(is(typeof(T.owner) : AudioEffectDistortion) || staticIndexOf!(AudioEffectDistortion, typeof(T.owner).BaseClasses) != -1, "D class "~T.stringof~" does not extend AudioEffectDistortion");
		if(_godot_object.ptr is null) return null;
		if(has_method(String(`_GDNATIVE_D_typeid`)))
		{
			Object o = cast(Object)godot_nativescript_get_userdata(opCast!godot_object);
			return cast(inout(T))o;
		}
		return null;
	}
	static AudioEffectDistortion _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("AudioEffectDistortion");
		if(constructor is null) return typeof(this).init;
		return cast(AudioEffectDistortion)(constructor());
	}
	void set_mode(in int mode)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("AudioEffectDistortion", "set_mode");
		const(void*)[1] _GODOT_args = [cast(void*)(&mode), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	int get_mode() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("AudioEffectDistortion", "get_mode");
		int _GODOT_ret = int.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_pre_gain(in float pre_gain)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("AudioEffectDistortion", "set_pre_gain");
		const(void*)[1] _GODOT_args = [cast(void*)(&pre_gain), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	float get_pre_gain() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("AudioEffectDistortion", "get_pre_gain");
		float _GODOT_ret = float.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_keep_hf_hz(in float keep_hf_hz)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("AudioEffectDistortion", "set_keep_hf_hz");
		const(void*)[1] _GODOT_args = [cast(void*)(&keep_hf_hz), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	float get_keep_hf_hz() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("AudioEffectDistortion", "get_keep_hf_hz");
		float _GODOT_ret = float.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_drive(in float drive)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("AudioEffectDistortion", "set_drive");
		const(void*)[1] _GODOT_args = [cast(void*)(&drive), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	float get_drive() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("AudioEffectDistortion", "get_drive");
		float _GODOT_ret = float.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_post_gain(in float post_gain)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("AudioEffectDistortion", "set_post_gain");
		const(void*)[1] _GODOT_args = [cast(void*)(&post_gain), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	float get_post_gain() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("AudioEffectDistortion", "get_post_gain");
		float _GODOT_ret = float.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
}
