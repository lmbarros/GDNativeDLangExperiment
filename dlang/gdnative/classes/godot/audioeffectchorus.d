module godot.audioeffectchorus;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.object;
import godot.classdb;
import godot.audioeffect;
@GodotBaseClass struct AudioEffectChorus
{
	static immutable string _GODOT_internal_name = "AudioEffectChorus";
public:
	union { godot_object _godot_object; AudioEffect base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	package(godot) void* opCast(T : void*)() const { return cast(void*)_godot_object.ptr; }
	godot_object opCast(T : godot_object)() const { return cast(godot_object)_godot_object; }
	bool opEquals(in AudioEffectChorus other) const { return _godot_object.ptr is other._godot_object.ptr; }
	AudioEffectChorus opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	bool opCast(T : bool)() const { return _godot_object.ptr !is null; }
	inout(T) opCast(T)() inout if(isGodotBaseClass!T)
	{
		static assert(staticIndexOf!(AudioEffectChorus, T.BaseClasses) != -1, "Godot class "~T.stringof~" does not inherit AudioEffectChorus");
		if(_godot_object.ptr is null) return T.init;
		String c = String(T._GODOT_internal_name);
		if(is_class(c)) return inout(T)(_godot_object);
		return T.init;
	}
	inout(T) opCast(T)() inout if(extendsGodotBaseClass!T)
	{
		static assert(is(typeof(T.owner) : AudioEffectChorus) || staticIndexOf!(AudioEffectChorus, typeof(T.owner).BaseClasses) != -1, "D class "~T.stringof~" does not extend AudioEffectChorus");
		if(_godot_object.ptr is null) return null;
		if(has_method(String(`_GDNATIVE_D_typeid`)))
		{
			Object o = cast(Object)godot_nativescript_get_userdata(opCast!godot_object);
			return cast(inout(T))o;
		}
		return null;
	}
	static AudioEffectChorus _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("AudioEffectChorus");
		if(constructor is null) return typeof(this).init;
		return cast(AudioEffectChorus)(constructor());
	}
	void set_voice_count(in int voices)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("AudioEffectChorus", "set_voice_count");
		const(void*)[1] _GODOT_args = [cast(void*)(&voices), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	int get_voice_count() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("AudioEffectChorus", "get_voice_count");
		int _GODOT_ret = int.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_voice_delay_ms(in int voice_idx, in float delay_ms)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("AudioEffectChorus", "set_voice_delay_ms");
		const(void*)[2] _GODOT_args = [cast(void*)(&voice_idx), cast(void*)(&delay_ms), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	float get_voice_delay_ms(in int voice_idx) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("AudioEffectChorus", "get_voice_delay_ms");
		float _GODOT_ret = float.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&voice_idx), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_voice_rate_hz(in int voice_idx, in float rate_hz)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("AudioEffectChorus", "set_voice_rate_hz");
		const(void*)[2] _GODOT_args = [cast(void*)(&voice_idx), cast(void*)(&rate_hz), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	float get_voice_rate_hz(in int voice_idx) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("AudioEffectChorus", "get_voice_rate_hz");
		float _GODOT_ret = float.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&voice_idx), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_voice_depth_ms(in int voice_idx, in float depth_ms)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("AudioEffectChorus", "set_voice_depth_ms");
		const(void*)[2] _GODOT_args = [cast(void*)(&voice_idx), cast(void*)(&depth_ms), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	float get_voice_depth_ms(in int voice_idx) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("AudioEffectChorus", "get_voice_depth_ms");
		float _GODOT_ret = float.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&voice_idx), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_voice_level_db(in int voice_idx, in float level_db)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("AudioEffectChorus", "set_voice_level_db");
		const(void*)[2] _GODOT_args = [cast(void*)(&voice_idx), cast(void*)(&level_db), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	float get_voice_level_db(in int voice_idx) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("AudioEffectChorus", "get_voice_level_db");
		float _GODOT_ret = float.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&voice_idx), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_voice_cutoff_hz(in int voice_idx, in float cutoff_hz)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("AudioEffectChorus", "set_voice_cutoff_hz");
		const(void*)[2] _GODOT_args = [cast(void*)(&voice_idx), cast(void*)(&cutoff_hz), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	float get_voice_cutoff_hz(in int voice_idx) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("AudioEffectChorus", "get_voice_cutoff_hz");
		float _GODOT_ret = float.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&voice_idx), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_voice_pan(in int voice_idx, in float pan)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("AudioEffectChorus", "set_voice_pan");
		const(void*)[2] _GODOT_args = [cast(void*)(&voice_idx), cast(void*)(&pan), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	float get_voice_pan(in int voice_idx) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("AudioEffectChorus", "get_voice_pan");
		float _GODOT_ret = float.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&voice_idx), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_wet(in float amount)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("AudioEffectChorus", "set_wet");
		const(void*)[1] _GODOT_args = [cast(void*)(&amount), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	float get_wet() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("AudioEffectChorus", "get_wet");
		float _GODOT_ret = float.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_dry(in float amount)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("AudioEffectChorus", "set_dry");
		const(void*)[1] _GODOT_args = [cast(void*)(&amount), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	float get_dry() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("AudioEffectChorus", "get_dry");
		float _GODOT_ret = float.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
}
