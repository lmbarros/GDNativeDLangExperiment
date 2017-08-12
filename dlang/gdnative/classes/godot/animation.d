module godot.animation;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.object;
import godot.classdb;
import godot.resource;
@GodotBaseClass struct Animation
{
	static immutable string _GODOT_internal_name = "Animation";
public:
	union { godot_object _godot_object; Resource base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	package(godot) void* opCast(T : void*)() const { return cast(void*)_godot_object.ptr; }
	godot_object opCast(T : godot_object)() const { return cast(godot_object)_godot_object; }
	bool opEquals(in Animation other) const { return _godot_object.ptr is other._godot_object.ptr; }
	Animation opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	bool opCast(T : bool)() const { return _godot_object.ptr !is null; }
	inout(T) opCast(T)() inout if(isGodotBaseClass!T)
	{
		static assert(staticIndexOf!(Animation, T.BaseClasses) != -1, "Godot class "~T.stringof~" does not inherit Animation");
		if(_godot_object.ptr is null) return T.init;
		String c = String(T._GODOT_internal_name);
		if(is_class(c)) return inout(T)(_godot_object);
		return T.init;
	}
	inout(T) opCast(T)() inout if(extendsGodotBaseClass!T)
	{
		static assert(is(typeof(T.owner) : Animation) || staticIndexOf!(Animation, typeof(T.owner).BaseClasses) != -1, "D class "~T.stringof~" does not extend Animation");
		if(_godot_object.ptr is null) return null;
		if(has_method(String(`_GDNATIVE_D_typeid`)))
		{
			Object o = cast(Object)godot_nativescript_get_userdata(opCast!godot_object);
			return cast(inout(T))o;
		}
		return null;
	}
	static Animation _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("Animation");
		if(constructor is null) return typeof(this).init;
		return cast(Animation)(constructor());
	}
	enum int UPDATE_TRIGGER = 2;
	enum int TYPE_METHOD = 2;
	enum int INTERPOLATION_NEAREST = 0;
	enum int TYPE_TRANSFORM = 1;
	enum int UPDATE_CONTINUOUS = 0;
	enum int UPDATE_DISCRETE = 1;
	enum int INTERPOLATION_LINEAR = 1;
	enum int TYPE_VALUE = 0;
	enum int INTERPOLATION_CUBIC = 2;
	int add_track(in int type, in int at_pos = -1)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Animation", "add_track");
		int _GODOT_ret = int.init;
		const(void*)[2] _GODOT_args = [cast(void*)(&type), cast(void*)(&at_pos), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void remove_track(in int idx)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Animation", "remove_track");
		const(void*)[1] _GODOT_args = [cast(void*)(&idx), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	int get_track_count() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Animation", "get_track_count");
		int _GODOT_ret = int.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	int track_get_type(in int idx) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Animation", "track_get_type");
		int _GODOT_ret = int.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&idx), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	NodePath track_get_path(in int idx) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Animation", "track_get_path");
		NodePath _GODOT_ret = NodePath.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&idx), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void track_set_path(in int idx, in NodePath path)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Animation", "track_set_path");
		const(void*)[2] _GODOT_args = [cast(void*)(&idx), cast(void*)(&path), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	int find_track(in NodePath path) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Animation", "find_track");
		int _GODOT_ret = int.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&path), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void track_move_up(in int idx)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Animation", "track_move_up");
		const(void*)[1] _GODOT_args = [cast(void*)(&idx), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void track_move_down(in int idx)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Animation", "track_move_down");
		const(void*)[1] _GODOT_args = [cast(void*)(&idx), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void track_set_imported(in int idx, in bool imported)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Animation", "track_set_imported");
		const(void*)[2] _GODOT_args = [cast(void*)(&idx), cast(void*)(&imported), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	bool track_is_imported(in int idx) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Animation", "track_is_imported");
		bool _GODOT_ret = bool.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&idx), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	int transform_track_insert_key(in int idx, in float time, in Vector3 loc, in Quat rot, in Vector3 scale)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Animation", "transform_track_insert_key");
		int _GODOT_ret = int.init;
		const(void*)[5] _GODOT_args = [cast(void*)(&idx), cast(void*)(&time), cast(void*)(&loc), cast(void*)(&rot), cast(void*)(&scale), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void track_insert_key(in int idx, in float time, in Variant key, in float transition = 1)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Animation", "track_insert_key");
		const(void*)[4] _GODOT_args = [cast(void*)(&idx), cast(void*)(&time), cast(void*)(&key), cast(void*)(&transition), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void track_remove_key(in int idx, in int key_idx)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Animation", "track_remove_key");
		const(void*)[2] _GODOT_args = [cast(void*)(&idx), cast(void*)(&key_idx), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void track_remove_key_at_pos(in int idx, in float pos)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Animation", "track_remove_key_at_pos");
		const(void*)[2] _GODOT_args = [cast(void*)(&idx), cast(void*)(&pos), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void track_set_key_value(in int idx, in int key, in Variant value)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Animation", "track_set_key_value");
		const(void*)[3] _GODOT_args = [cast(void*)(&idx), cast(void*)(&key), cast(void*)(&value), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void track_set_key_transition(in int idx, in int key_idx, in float transition)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Animation", "track_set_key_transition");
		const(void*)[3] _GODOT_args = [cast(void*)(&idx), cast(void*)(&key_idx), cast(void*)(&transition), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	float track_get_key_transition(in int idx, in int key_idx) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Animation", "track_get_key_transition");
		float _GODOT_ret = float.init;
		const(void*)[2] _GODOT_args = [cast(void*)(&idx), cast(void*)(&key_idx), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	int track_get_key_count(in int idx) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Animation", "track_get_key_count");
		int _GODOT_ret = int.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&idx), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void track_get_key_value(in int idx, in int key_idx) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Animation", "track_get_key_value");
		const(void*)[2] _GODOT_args = [cast(void*)(&idx), cast(void*)(&key_idx), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	float track_get_key_time(in int idx, in int key_idx) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Animation", "track_get_key_time");
		float _GODOT_ret = float.init;
		const(void*)[2] _GODOT_args = [cast(void*)(&idx), cast(void*)(&key_idx), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	int track_find_key(in int idx, in float time, in bool exact = false) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Animation", "track_find_key");
		int _GODOT_ret = int.init;
		const(void*)[3] _GODOT_args = [cast(void*)(&idx), cast(void*)(&time), cast(void*)(&exact), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void track_set_interpolation_type(in int idx, in int interpolation)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Animation", "track_set_interpolation_type");
		const(void*)[2] _GODOT_args = [cast(void*)(&idx), cast(void*)(&interpolation), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	int track_get_interpolation_type(in int idx) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Animation", "track_get_interpolation_type");
		int _GODOT_ret = int.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&idx), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void track_set_interpolation_loop_wrap(in int idx, in bool interpolation)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Animation", "track_set_interpolation_loop_wrap");
		const(void*)[2] _GODOT_args = [cast(void*)(&idx), cast(void*)(&interpolation), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	bool track_get_interpolation_loop_wrap(in int idx) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Animation", "track_get_interpolation_loop_wrap");
		bool _GODOT_ret = bool.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&idx), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	Array transform_track_interpolate(in int idx, in float time_sec) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Animation", "transform_track_interpolate");
		Array _GODOT_ret = Array.empty_array;
		const(void*)[2] _GODOT_args = [cast(void*)(&idx), cast(void*)(&time_sec), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void value_track_set_update_mode(in int idx, in int mode)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Animation", "value_track_set_update_mode");
		const(void*)[2] _GODOT_args = [cast(void*)(&idx), cast(void*)(&mode), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	int value_track_get_update_mode(in int idx) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Animation", "value_track_get_update_mode");
		int _GODOT_ret = int.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&idx), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	PoolIntArray value_track_get_key_indices(in int idx, in float time_sec, in float delta) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Animation", "value_track_get_key_indices");
		PoolIntArray _GODOT_ret = PoolIntArray.empty;
		const(void*)[3] _GODOT_args = [cast(void*)(&idx), cast(void*)(&time_sec), cast(void*)(&delta), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	PoolIntArray method_track_get_key_indices(in int idx, in float time_sec, in float delta) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Animation", "method_track_get_key_indices");
		PoolIntArray _GODOT_ret = PoolIntArray.empty;
		const(void*)[3] _GODOT_args = [cast(void*)(&idx), cast(void*)(&time_sec), cast(void*)(&delta), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	String method_track_get_name(in int idx, in int key_idx) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Animation", "method_track_get_name");
		String _GODOT_ret = String.init;
		const(void*)[2] _GODOT_args = [cast(void*)(&idx), cast(void*)(&key_idx), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	Array method_track_get_params(in int idx, in int key_idx) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Animation", "method_track_get_params");
		Array _GODOT_ret = Array.empty_array;
		const(void*)[2] _GODOT_args = [cast(void*)(&idx), cast(void*)(&key_idx), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_length(in float time_sec)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Animation", "set_length");
		const(void*)[1] _GODOT_args = [cast(void*)(&time_sec), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	float get_length() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Animation", "get_length");
		float _GODOT_ret = float.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_loop(in bool enabled)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Animation", "set_loop");
		const(void*)[1] _GODOT_args = [cast(void*)(&enabled), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	bool has_loop() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Animation", "has_loop");
		bool _GODOT_ret = bool.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_step(in float size_sec)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Animation", "set_step");
		const(void*)[1] _GODOT_args = [cast(void*)(&size_sec), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	float get_step() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Animation", "get_step");
		float _GODOT_ret = float.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void clear()
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Animation", "clear");
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null);
	}
}
