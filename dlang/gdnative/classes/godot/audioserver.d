module godot.audioserver;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.object;
import godot.audioeffect;
import godot.audiobuslayout;
@GodotBaseClass struct AudioServerSingleton
{
	static immutable string _GODOT_internal_name = "AudioServer";
public:
	static typeof(this) _GODOT_singleton()
	{
		static immutable char* _GODOT_singleton_name = "AudioServer";
		static typeof(this) _GODOT_singleton_ptr;
		if(_GODOT_singleton_ptr == null)
			_GODOT_singleton_ptr = cast(typeof(this))godot_global_get_singleton(cast(char*)_GODOT_singleton_name);
		return _GODOT_singleton_ptr;
	}
	union { godot_object _godot_object; GodotObject base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	package(godot) void* opCast(T : void*)() const { return cast(void*)_godot_object.ptr; }
	godot_object opCast(T : godot_object)() const { return cast(godot_object)_godot_object; }
	bool opEquals(in AudioServerSingleton other) const { return _godot_object.ptr is other._godot_object.ptr; }
	AudioServerSingleton opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	bool opCast(T : bool)() const { return _godot_object.ptr !is null; }
	inout(T) opCast(T)() inout if(isGodotBaseClass!T)
	{
		static assert(staticIndexOf!(AudioServerSingleton, T.BaseClasses) != -1, "Godot class "~T.stringof~" does not inherit AudioServerSingleton");
		if(_godot_object.ptr is null) return T.init;
		String c = String(T._GODOT_internal_name);
		if(is_class(c)) return inout(T)(_godot_object);
		return T.init;
	}
	inout(T) opCast(T)() inout if(extendsGodotBaseClass!T)
	{
		static assert(is(typeof(T.owner) : AudioServerSingleton) || staticIndexOf!(AudioServerSingleton, typeof(T.owner).BaseClasses) != -1, "D class "~T.stringof~" does not extend AudioServerSingleton");
		if(_godot_object.ptr is null) return null;
		if(has_method(String(`_GDNATIVE_D_typeid`)))
		{
			Object o = cast(Object)godot_nativescript_get_userdata(opCast!godot_object);
			return cast(inout(T))o;
		}
		return null;
	}
	static AudioServerSingleton _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("AudioServer");
		if(constructor is null) return typeof(this).init;
		return cast(AudioServerSingleton)(constructor());
	}
	void set_bus_count(in int amount)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("AudioServer", "set_bus_count");
		const(void*)[1] _GODOT_args = [cast(void*)(&amount), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	int get_bus_count() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("AudioServer", "get_bus_count");
		int _GODOT_ret = int.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void remove_bus(in int index)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("AudioServer", "remove_bus");
		const(void*)[1] _GODOT_args = [cast(void*)(&index), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void add_bus(in int at_pos = -1)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("AudioServer", "add_bus");
		const(void*)[1] _GODOT_args = [cast(void*)(&at_pos), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void move_bus(in int index, in int to_index)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("AudioServer", "move_bus");
		const(void*)[2] _GODOT_args = [cast(void*)(&index), cast(void*)(&to_index), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void set_bus_name(in int bus_idx, in String name)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("AudioServer", "set_bus_name");
		const(void*)[2] _GODOT_args = [cast(void*)(&bus_idx), cast(void*)(&name), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	String get_bus_name(in int bus_idx) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("AudioServer", "get_bus_name");
		String _GODOT_ret = String.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&bus_idx), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	int get_bus_index(in String bus_name) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("AudioServer", "get_bus_index");
		int _GODOT_ret = int.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&bus_name), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_bus_volume_db(in int bus_idx, in float volume_db)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("AudioServer", "set_bus_volume_db");
		const(void*)[2] _GODOT_args = [cast(void*)(&bus_idx), cast(void*)(&volume_db), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	float get_bus_volume_db(in int bus_idx) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("AudioServer", "get_bus_volume_db");
		float _GODOT_ret = float.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&bus_idx), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_bus_send(in int bus_idx, in String send)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("AudioServer", "set_bus_send");
		const(void*)[2] _GODOT_args = [cast(void*)(&bus_idx), cast(void*)(&send), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	String get_bus_send(in int bus_idx) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("AudioServer", "get_bus_send");
		String _GODOT_ret = String.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&bus_idx), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_bus_solo(in int bus_idx, in bool enable)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("AudioServer", "set_bus_solo");
		const(void*)[2] _GODOT_args = [cast(void*)(&bus_idx), cast(void*)(&enable), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	bool is_bus_solo(in int bus_idx) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("AudioServer", "is_bus_solo");
		bool _GODOT_ret = bool.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&bus_idx), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_bus_mute(in int bus_idx, in bool enable)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("AudioServer", "set_bus_mute");
		const(void*)[2] _GODOT_args = [cast(void*)(&bus_idx), cast(void*)(&enable), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	bool is_bus_mute(in int bus_idx) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("AudioServer", "is_bus_mute");
		bool _GODOT_ret = bool.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&bus_idx), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_bus_bypass_effects(in int bus_idx, in bool enable)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("AudioServer", "set_bus_bypass_effects");
		const(void*)[2] _GODOT_args = [cast(void*)(&bus_idx), cast(void*)(&enable), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	bool is_bus_bypassing_effects(in int bus_idx) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("AudioServer", "is_bus_bypassing_effects");
		bool _GODOT_ret = bool.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&bus_idx), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void add_bus_effect(in int bus_idx, in AudioEffect effect, in int at_pos = -1)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("AudioServer", "add_bus_effect");
		const(void*)[3] _GODOT_args = [cast(void*)(&bus_idx), cast(void*)(effect), cast(void*)(&at_pos), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void remove_bus_effect(in int bus_idx, in int effect_idx)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("AudioServer", "remove_bus_effect");
		const(void*)[2] _GODOT_args = [cast(void*)(&bus_idx), cast(void*)(&effect_idx), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	int get_bus_effect_count(in int bus_idx)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("AudioServer", "get_bus_effect_count");
		int _GODOT_ret = int.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&bus_idx), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	AudioEffect get_bus_effect(in int bus_idx, in int effect_idx)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("AudioServer", "get_bus_effect");
		AudioEffect _GODOT_ret = AudioEffect.init;
		const(void*)[2] _GODOT_args = [cast(void*)(&bus_idx), cast(void*)(&effect_idx), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void swap_bus_effects(in int bus_idx, in int effect_idx, in int by_effect_idx)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("AudioServer", "swap_bus_effects");
		const(void*)[3] _GODOT_args = [cast(void*)(&bus_idx), cast(void*)(&effect_idx), cast(void*)(&by_effect_idx), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void set_bus_effect_enabled(in int bus_idx, in int effect_idx, in bool enabled)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("AudioServer", "set_bus_effect_enabled");
		const(void*)[3] _GODOT_args = [cast(void*)(&bus_idx), cast(void*)(&effect_idx), cast(void*)(&enabled), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	bool is_bus_effect_enabled(in int bus_idx, in int effect_idx) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("AudioServer", "is_bus_effect_enabled");
		bool _GODOT_ret = bool.init;
		const(void*)[2] _GODOT_args = [cast(void*)(&bus_idx), cast(void*)(&effect_idx), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	float get_bus_peak_volume_left_db(in int bus_idx, in int channel) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("AudioServer", "get_bus_peak_volume_left_db");
		float _GODOT_ret = float.init;
		const(void*)[2] _GODOT_args = [cast(void*)(&bus_idx), cast(void*)(&channel), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	float get_bus_peak_volume_right_db(in int bus_idx, in int channel) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("AudioServer", "get_bus_peak_volume_right_db");
		float _GODOT_ret = float.init;
		const(void*)[2] _GODOT_args = [cast(void*)(&bus_idx), cast(void*)(&channel), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void lock()
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("AudioServer", "lock");
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null);
	}
	void unlock()
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("AudioServer", "unlock");
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null);
	}
	int get_speaker_mode() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("AudioServer", "get_speaker_mode");
		int _GODOT_ret = int.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	float get_mix_rate() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("AudioServer", "get_mix_rate");
		float _GODOT_ret = float.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_bus_layout(in AudioBusLayout bus_layout)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("AudioServer", "set_bus_layout");
		const(void*)[1] _GODOT_args = [cast(void*)(bus_layout), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	AudioBusLayout generate_bus_layout() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("AudioServer", "generate_bus_layout");
		AudioBusLayout _GODOT_ret = AudioBusLayout.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
}
@property pragma(inline, true)
AudioServerSingleton AudioServer()
{
	return AudioServerSingleton._GODOT_singleton();
}
