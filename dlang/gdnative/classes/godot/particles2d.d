module godot.particles2d;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.object;
import godot.classdb;
import godot.node2d;
import godot.material;
import godot.texture;
@GodotBaseClass struct Particles2D
{
	static immutable string _GODOT_internal_name = "Particles2D";
public:
	union { godot_object _godot_object; Node2D base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	package(godot) void* opCast(T : void*)() const { return cast(void*)_godot_object.ptr; }
	godot_object opCast(T : godot_object)() const { return cast(godot_object)_godot_object; }
	bool opEquals(in Particles2D other) const { return _godot_object.ptr is other._godot_object.ptr; }
	Particles2D opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	bool opCast(T : bool)() const { return _godot_object.ptr !is null; }
	inout(T) opCast(T)() inout if(isGodotBaseClass!T)
	{
		static assert(staticIndexOf!(Particles2D, T.BaseClasses) != -1, "Godot class "~T.stringof~" does not inherit Particles2D");
		if(_godot_object.ptr is null) return T.init;
		String c = String(T._GODOT_internal_name);
		if(is_class(c)) return inout(T)(_godot_object);
		return T.init;
	}
	inout(T) opCast(T)() inout if(extendsGodotBaseClass!T)
	{
		static assert(is(typeof(T.owner) : Particles2D) || staticIndexOf!(Particles2D, typeof(T.owner).BaseClasses) != -1, "D class "~T.stringof~" does not extend Particles2D");
		if(_godot_object.ptr is null) return null;
		if(has_method(String(`_GDNATIVE_D_typeid`)))
		{
			Object o = cast(Object)godot_nativescript_get_userdata(opCast!godot_object);
			return cast(inout(T))o;
		}
		return null;
	}
	static Particles2D _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("Particles2D");
		if(constructor is null) return typeof(this).init;
		return cast(Particles2D)(constructor());
	}
	enum int DRAW_ORDER_INDEX = 0;
	enum int DRAW_ORDER_LIFETIME = 1;
	void set_emitting(in bool emitting)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Particles2D", "set_emitting");
		const(void*)[1] _GODOT_args = [cast(void*)(&emitting), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void set_amount(in int amount)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Particles2D", "set_amount");
		const(void*)[1] _GODOT_args = [cast(void*)(&amount), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void set_lifetime(in float secs)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Particles2D", "set_lifetime");
		const(void*)[1] _GODOT_args = [cast(void*)(&secs), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void set_one_shot(in bool secs)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Particles2D", "set_one_shot");
		const(void*)[1] _GODOT_args = [cast(void*)(&secs), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void set_pre_process_time(in float secs)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Particles2D", "set_pre_process_time");
		const(void*)[1] _GODOT_args = [cast(void*)(&secs), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void set_explosiveness_ratio(in float ratio)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Particles2D", "set_explosiveness_ratio");
		const(void*)[1] _GODOT_args = [cast(void*)(&ratio), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void set_randomness_ratio(in float ratio)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Particles2D", "set_randomness_ratio");
		const(void*)[1] _GODOT_args = [cast(void*)(&ratio), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void set_visibility_rect(in Rect2 aabb)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Particles2D", "set_visibility_rect");
		const(void*)[1] _GODOT_args = [cast(void*)(&aabb), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void set_use_local_coordinates(in bool enable)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Particles2D", "set_use_local_coordinates");
		const(void*)[1] _GODOT_args = [cast(void*)(&enable), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void set_fixed_fps(in int fps)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Particles2D", "set_fixed_fps");
		const(void*)[1] _GODOT_args = [cast(void*)(&fps), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void set_fractional_delta(in bool enable)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Particles2D", "set_fractional_delta");
		const(void*)[1] _GODOT_args = [cast(void*)(&enable), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void set_process_material(in Material material)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Particles2D", "set_process_material");
		const(void*)[1] _GODOT_args = [cast(void*)(material), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void set_speed_scale(in float scale)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Particles2D", "set_speed_scale");
		const(void*)[1] _GODOT_args = [cast(void*)(&scale), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	bool is_emitting() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Particles2D", "is_emitting");
		bool _GODOT_ret = bool.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	int get_amount() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Particles2D", "get_amount");
		int _GODOT_ret = int.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	float get_lifetime() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Particles2D", "get_lifetime");
		float _GODOT_ret = float.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	bool get_one_shot() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Particles2D", "get_one_shot");
		bool _GODOT_ret = bool.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	float get_pre_process_time() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Particles2D", "get_pre_process_time");
		float _GODOT_ret = float.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	float get_explosiveness_ratio() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Particles2D", "get_explosiveness_ratio");
		float _GODOT_ret = float.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	float get_randomness_ratio() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Particles2D", "get_randomness_ratio");
		float _GODOT_ret = float.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	Rect2 get_visibility_rect() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Particles2D", "get_visibility_rect");
		Rect2 _GODOT_ret = Rect2.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	bool get_use_local_coordinates() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Particles2D", "get_use_local_coordinates");
		bool _GODOT_ret = bool.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	int get_fixed_fps() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Particles2D", "get_fixed_fps");
		int _GODOT_ret = int.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	bool get_fractional_delta() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Particles2D", "get_fractional_delta");
		bool _GODOT_ret = bool.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	Material get_process_material() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Particles2D", "get_process_material");
		Material _GODOT_ret = Material.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	float get_speed_scale() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Particles2D", "get_speed_scale");
		float _GODOT_ret = float.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_draw_order(in int order)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Particles2D", "set_draw_order");
		const(void*)[1] _GODOT_args = [cast(void*)(&order), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	int get_draw_order() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Particles2D", "get_draw_order");
		int _GODOT_ret = int.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_texture(in Texture texture)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Particles2D", "set_texture");
		const(void*)[1] _GODOT_args = [cast(void*)(texture), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	Texture get_texture() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Particles2D", "get_texture");
		Texture _GODOT_ret = Texture.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_normal_map(in Texture texture)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Particles2D", "set_normal_map");
		const(void*)[1] _GODOT_args = [cast(void*)(texture), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	Texture get_normal_map() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Particles2D", "get_normal_map");
		Texture _GODOT_ret = Texture.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	Rect2 capture_rect() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Particles2D", "capture_rect");
		Rect2 _GODOT_ret = Rect2.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_v_frames(in int frames)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Particles2D", "set_v_frames");
		const(void*)[1] _GODOT_args = [cast(void*)(&frames), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	int get_v_frames() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Particles2D", "get_v_frames");
		int _GODOT_ret = int.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_h_frames(in int frames)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Particles2D", "set_h_frames");
		const(void*)[1] _GODOT_args = [cast(void*)(&frames), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	int get_h_frames() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Particles2D", "get_h_frames");
		int _GODOT_ret = int.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void restart()
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Particles2D", "restart");
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null);
	}
}
