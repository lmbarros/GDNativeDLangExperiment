module godot.animationtreeplayer;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.object;
import godot.classdb;
import godot.node;
import godot.animation;
@GodotBaseClass struct AnimationTreePlayer
{
	static immutable string _GODOT_internal_name = "AnimationTreePlayer";
public:
	union { godot_object _godot_object; Node base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	package(godot) void* opCast(T : void*)() const { return cast(void*)_godot_object.ptr; }
	godot_object opCast(T : godot_object)() const { return cast(godot_object)_godot_object; }
	bool opEquals(in AnimationTreePlayer other) const { return _godot_object.ptr is other._godot_object.ptr; }
	AnimationTreePlayer opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	bool opCast(T : bool)() const { return _godot_object.ptr !is null; }
	inout(T) opCast(T)() inout if(isGodotBaseClass!T)
	{
		static assert(staticIndexOf!(AnimationTreePlayer, T.BaseClasses) != -1, "Godot class "~T.stringof~" does not inherit AnimationTreePlayer");
		if(_godot_object.ptr is null) return T.init;
		String c = String(T._GODOT_internal_name);
		if(is_class(c)) return inout(T)(_godot_object);
		return T.init;
	}
	inout(T) opCast(T)() inout if(extendsGodotBaseClass!T)
	{
		static assert(is(typeof(T.owner) : AnimationTreePlayer) || staticIndexOf!(AnimationTreePlayer, typeof(T.owner).BaseClasses) != -1, "D class "~T.stringof~" does not extend AnimationTreePlayer");
		if(_godot_object.ptr is null) return null;
		if(has_method(String(`_GDNATIVE_D_typeid`)))
		{
			Object o = cast(Object)godot_nativescript_get_userdata(opCast!godot_object);
			return cast(inout(T))o;
		}
		return null;
	}
	static AnimationTreePlayer _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("AnimationTreePlayer");
		if(constructor is null) return typeof(this).init;
		return cast(AnimationTreePlayer)(constructor());
	}
	enum int NODE_BLEND4 = 6;
	enum int NODE_BLEND2 = 4;
	enum int NODE_OUTPUT = 0;
	enum int NODE_ANIMATION = 1;
	enum int NODE_ONESHOT = 2;
	enum int NODE_TIMESEEK = 8;
	enum int NODE_BLEND3 = 5;
	enum int NODE_MIX = 3;
	enum int NODE_TRANSITION = 9;
	enum int NODE_TIMESCALE = 7;
	void add_node(in int type, in String id)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("AnimationTreePlayer", "add_node");
		const(void*)[2] _GODOT_args = [cast(void*)(&type), cast(void*)(&id), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	bool node_exists(in String node) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("AnimationTreePlayer", "node_exists");
		bool _GODOT_ret = bool.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&node), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	int node_rename(in String node, in String new_name)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("AnimationTreePlayer", "node_rename");
		int _GODOT_ret = int.init;
		const(void*)[2] _GODOT_args = [cast(void*)(&node), cast(void*)(&new_name), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	int node_get_type(in String id) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("AnimationTreePlayer", "node_get_type");
		int _GODOT_ret = int.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&id), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	int node_get_input_count(in String id) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("AnimationTreePlayer", "node_get_input_count");
		int _GODOT_ret = int.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&id), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	String node_get_input_source(in String id, in int idx) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("AnimationTreePlayer", "node_get_input_source");
		String _GODOT_ret = String.init;
		const(void*)[2] _GODOT_args = [cast(void*)(&id), cast(void*)(&idx), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void animation_node_set_animation(in String id, in Animation animation)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("AnimationTreePlayer", "animation_node_set_animation");
		const(void*)[2] _GODOT_args = [cast(void*)(&id), cast(void*)(animation), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	Animation animation_node_get_animation(in String id) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("AnimationTreePlayer", "animation_node_get_animation");
		Animation _GODOT_ret = Animation.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&id), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void animation_node_set_master_animation(in String id, in String source)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("AnimationTreePlayer", "animation_node_set_master_animation");
		const(void*)[2] _GODOT_args = [cast(void*)(&id), cast(void*)(&source), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	String animation_node_get_master_animation(in String id) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("AnimationTreePlayer", "animation_node_get_master_animation");
		String _GODOT_ret = String.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&id), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void animation_node_set_filter_path(in String id, in NodePath path, in bool enable)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("AnimationTreePlayer", "animation_node_set_filter_path");
		const(void*)[3] _GODOT_args = [cast(void*)(&id), cast(void*)(&path), cast(void*)(&enable), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void oneshot_node_set_fadein_time(in String id, in float time_sec)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("AnimationTreePlayer", "oneshot_node_set_fadein_time");
		const(void*)[2] _GODOT_args = [cast(void*)(&id), cast(void*)(&time_sec), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	float oneshot_node_get_fadein_time(in String id) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("AnimationTreePlayer", "oneshot_node_get_fadein_time");
		float _GODOT_ret = float.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&id), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void oneshot_node_set_fadeout_time(in String id, in float time_sec)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("AnimationTreePlayer", "oneshot_node_set_fadeout_time");
		const(void*)[2] _GODOT_args = [cast(void*)(&id), cast(void*)(&time_sec), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	float oneshot_node_get_fadeout_time(in String id) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("AnimationTreePlayer", "oneshot_node_get_fadeout_time");
		float _GODOT_ret = float.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&id), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void oneshot_node_set_autorestart(in String id, in bool enable)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("AnimationTreePlayer", "oneshot_node_set_autorestart");
		const(void*)[2] _GODOT_args = [cast(void*)(&id), cast(void*)(&enable), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void oneshot_node_set_autorestart_delay(in String id, in float delay_sec)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("AnimationTreePlayer", "oneshot_node_set_autorestart_delay");
		const(void*)[2] _GODOT_args = [cast(void*)(&id), cast(void*)(&delay_sec), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void oneshot_node_set_autorestart_random_delay(in String id, in float rand_sec)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("AnimationTreePlayer", "oneshot_node_set_autorestart_random_delay");
		const(void*)[2] _GODOT_args = [cast(void*)(&id), cast(void*)(&rand_sec), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	bool oneshot_node_has_autorestart(in String id) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("AnimationTreePlayer", "oneshot_node_has_autorestart");
		bool _GODOT_ret = bool.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&id), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	float oneshot_node_get_autorestart_delay(in String id) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("AnimationTreePlayer", "oneshot_node_get_autorestart_delay");
		float _GODOT_ret = float.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&id), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	float oneshot_node_get_autorestart_random_delay(in String id) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("AnimationTreePlayer", "oneshot_node_get_autorestart_random_delay");
		float _GODOT_ret = float.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&id), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void oneshot_node_start(in String id)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("AnimationTreePlayer", "oneshot_node_start");
		const(void*)[1] _GODOT_args = [cast(void*)(&id), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void oneshot_node_stop(in String id)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("AnimationTreePlayer", "oneshot_node_stop");
		const(void*)[1] _GODOT_args = [cast(void*)(&id), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	bool oneshot_node_is_active(in String id) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("AnimationTreePlayer", "oneshot_node_is_active");
		bool _GODOT_ret = bool.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&id), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void oneshot_node_set_filter_path(in String id, in NodePath path, in bool enable)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("AnimationTreePlayer", "oneshot_node_set_filter_path");
		const(void*)[3] _GODOT_args = [cast(void*)(&id), cast(void*)(&path), cast(void*)(&enable), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void mix_node_set_amount(in String id, in float ratio)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("AnimationTreePlayer", "mix_node_set_amount");
		const(void*)[2] _GODOT_args = [cast(void*)(&id), cast(void*)(&ratio), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	float mix_node_get_amount(in String id) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("AnimationTreePlayer", "mix_node_get_amount");
		float _GODOT_ret = float.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&id), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void blend2_node_set_amount(in String id, in float blend)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("AnimationTreePlayer", "blend2_node_set_amount");
		const(void*)[2] _GODOT_args = [cast(void*)(&id), cast(void*)(&blend), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	float blend2_node_get_amount(in String id) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("AnimationTreePlayer", "blend2_node_get_amount");
		float _GODOT_ret = float.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&id), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void blend2_node_set_filter_path(in String id, in NodePath path, in bool enable)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("AnimationTreePlayer", "blend2_node_set_filter_path");
		const(void*)[3] _GODOT_args = [cast(void*)(&id), cast(void*)(&path), cast(void*)(&enable), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void blend3_node_set_amount(in String id, in float blend)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("AnimationTreePlayer", "blend3_node_set_amount");
		const(void*)[2] _GODOT_args = [cast(void*)(&id), cast(void*)(&blend), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	float blend3_node_get_amount(in String id) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("AnimationTreePlayer", "blend3_node_get_amount");
		float _GODOT_ret = float.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&id), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void blend4_node_set_amount(in String id, in Vector2 blend)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("AnimationTreePlayer", "blend4_node_set_amount");
		const(void*)[2] _GODOT_args = [cast(void*)(&id), cast(void*)(&blend), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	Vector2 blend4_node_get_amount(in String id) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("AnimationTreePlayer", "blend4_node_get_amount");
		Vector2 _GODOT_ret = Vector2.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&id), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void timescale_node_set_scale(in String id, in float scale)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("AnimationTreePlayer", "timescale_node_set_scale");
		const(void*)[2] _GODOT_args = [cast(void*)(&id), cast(void*)(&scale), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	float timescale_node_get_scale(in String id) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("AnimationTreePlayer", "timescale_node_get_scale");
		float _GODOT_ret = float.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&id), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void timeseek_node_seek(in String id, in float pos_sec)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("AnimationTreePlayer", "timeseek_node_seek");
		const(void*)[2] _GODOT_args = [cast(void*)(&id), cast(void*)(&pos_sec), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void transition_node_set_input_count(in String id, in int count)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("AnimationTreePlayer", "transition_node_set_input_count");
		const(void*)[2] _GODOT_args = [cast(void*)(&id), cast(void*)(&count), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	int transition_node_get_input_count(in String id) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("AnimationTreePlayer", "transition_node_get_input_count");
		int _GODOT_ret = int.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&id), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void transition_node_delete_input(in String id, in int input_idx)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("AnimationTreePlayer", "transition_node_delete_input");
		const(void*)[2] _GODOT_args = [cast(void*)(&id), cast(void*)(&input_idx), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void transition_node_set_input_auto_advance(in String id, in int input_idx, in bool enable)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("AnimationTreePlayer", "transition_node_set_input_auto_advance");
		const(void*)[3] _GODOT_args = [cast(void*)(&id), cast(void*)(&input_idx), cast(void*)(&enable), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	bool transition_node_has_input_auto_advance(in String id, in int input_idx) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("AnimationTreePlayer", "transition_node_has_input_auto_advance");
		bool _GODOT_ret = bool.init;
		const(void*)[2] _GODOT_args = [cast(void*)(&id), cast(void*)(&input_idx), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void transition_node_set_xfade_time(in String id, in float time_sec)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("AnimationTreePlayer", "transition_node_set_xfade_time");
		const(void*)[2] _GODOT_args = [cast(void*)(&id), cast(void*)(&time_sec), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	float transition_node_get_xfade_time(in String id) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("AnimationTreePlayer", "transition_node_get_xfade_time");
		float _GODOT_ret = float.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&id), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void transition_node_set_current(in String id, in int input_idx)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("AnimationTreePlayer", "transition_node_set_current");
		const(void*)[2] _GODOT_args = [cast(void*)(&id), cast(void*)(&input_idx), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	int transition_node_get_current(in String id) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("AnimationTreePlayer", "transition_node_get_current");
		int _GODOT_ret = int.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&id), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void node_set_pos(in String id, in Vector2 screen_pos)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("AnimationTreePlayer", "node_set_pos");
		const(void*)[2] _GODOT_args = [cast(void*)(&id), cast(void*)(&screen_pos), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	Vector2 node_get_pos(in String id) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("AnimationTreePlayer", "node_get_pos");
		Vector2 _GODOT_ret = Vector2.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&id), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void remove_node(in String id)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("AnimationTreePlayer", "remove_node");
		const(void*)[1] _GODOT_args = [cast(void*)(&id), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	int connect_nodes(in String id, in String dst_id, in int dst_input_idx)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("AnimationTreePlayer", "connect_nodes");
		int _GODOT_ret = int.init;
		const(void*)[3] _GODOT_args = [cast(void*)(&id), cast(void*)(&dst_id), cast(void*)(&dst_input_idx), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	bool are_nodes_connected(in String id, in String dst_id, in int dst_input_idx) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("AnimationTreePlayer", "are_nodes_connected");
		bool _GODOT_ret = bool.init;
		const(void*)[3] _GODOT_args = [cast(void*)(&id), cast(void*)(&dst_id), cast(void*)(&dst_input_idx), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void disconnect_nodes(in String id, in int dst_input_idx)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("AnimationTreePlayer", "disconnect_nodes");
		const(void*)[2] _GODOT_args = [cast(void*)(&id), cast(void*)(&dst_input_idx), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void set_active(in bool enabled)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("AnimationTreePlayer", "set_active");
		const(void*)[1] _GODOT_args = [cast(void*)(&enabled), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	bool is_active() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("AnimationTreePlayer", "is_active");
		bool _GODOT_ret = bool.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_base_path(in NodePath path)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("AnimationTreePlayer", "set_base_path");
		const(void*)[1] _GODOT_args = [cast(void*)(&path), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	NodePath get_base_path() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("AnimationTreePlayer", "get_base_path");
		NodePath _GODOT_ret = NodePath.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_master_player(in NodePath nodepath)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("AnimationTreePlayer", "set_master_player");
		const(void*)[1] _GODOT_args = [cast(void*)(&nodepath), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	NodePath get_master_player() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("AnimationTreePlayer", "get_master_player");
		NodePath _GODOT_ret = NodePath.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	PoolStringArray get_node_list()
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("AnimationTreePlayer", "get_node_list");
		PoolStringArray _GODOT_ret = PoolStringArray.empty;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_animation_process_mode(in int mode)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("AnimationTreePlayer", "set_animation_process_mode");
		const(void*)[1] _GODOT_args = [cast(void*)(&mode), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	int get_animation_process_mode() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("AnimationTreePlayer", "get_animation_process_mode");
		int _GODOT_ret = int.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void advance(in float delta)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("AnimationTreePlayer", "advance");
		const(void*)[1] _GODOT_args = [cast(void*)(&delta), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void reset()
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("AnimationTreePlayer", "reset");
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null);
	}
	void recompute_caches()
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("AnimationTreePlayer", "recompute_caches");
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null);
	}
}
