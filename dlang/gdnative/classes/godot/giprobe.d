module godot.giprobe;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.object;
import godot.classdb;
import godot.visualinstance;
import godot.giprobedata;
import godot.node;
@GodotBaseClass struct GIProbe
{
	static immutable string _GODOT_internal_name = "GIProbe";
public:
	union { godot_object _godot_object; VisualInstance base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	package(godot) void* opCast(T : void*)() const { return cast(void*)_godot_object.ptr; }
	godot_object opCast(T : godot_object)() const { return cast(godot_object)_godot_object; }
	bool opEquals(in GIProbe other) const { return _godot_object.ptr is other._godot_object.ptr; }
	GIProbe opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	bool opCast(T : bool)() const { return _godot_object.ptr !is null; }
	inout(T) opCast(T)() inout if(isGodotBaseClass!T)
	{
		static assert(staticIndexOf!(GIProbe, T.BaseClasses) != -1, "Godot class "~T.stringof~" does not inherit GIProbe");
		if(_godot_object.ptr is null) return T.init;
		String c = String(T._GODOT_internal_name);
		if(is_class(c)) return inout(T)(_godot_object);
		return T.init;
	}
	inout(T) opCast(T)() inout if(extendsGodotBaseClass!T)
	{
		static assert(is(typeof(T.owner) : GIProbe) || staticIndexOf!(GIProbe, typeof(T.owner).BaseClasses) != -1, "D class "~T.stringof~" does not extend GIProbe");
		if(_godot_object.ptr is null) return null;
		if(has_method(String(`_GDNATIVE_D_typeid`)))
		{
			Object o = cast(Object)godot_nativescript_get_userdata(opCast!godot_object);
			return cast(inout(T))o;
		}
		return null;
	}
	static GIProbe _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("GIProbe");
		if(constructor is null) return typeof(this).init;
		return cast(GIProbe)(constructor());
	}
	enum int SUBDIV_128 = 1;
	enum int SUBDIV_MAX = 4;
	enum int SUBDIV_64 = 0;
	enum int SUBDIV_256 = 2;
	void set_probe_data(in GIProbeData data)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("GIProbe", "set_probe_data");
		const(void*)[1] _GODOT_args = [cast(void*)(data), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	GIProbeData get_probe_data() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("GIProbe", "get_probe_data");
		GIProbeData _GODOT_ret = GIProbeData.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_subdiv(in int subdiv)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("GIProbe", "set_subdiv");
		const(void*)[1] _GODOT_args = [cast(void*)(&subdiv), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	int get_subdiv() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("GIProbe", "get_subdiv");
		int _GODOT_ret = int.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_extents(in Vector3 extents)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("GIProbe", "set_extents");
		const(void*)[1] _GODOT_args = [cast(void*)(&extents), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	Vector3 get_extents() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("GIProbe", "get_extents");
		Vector3 _GODOT_ret = Vector3.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_dynamic_range(in int max)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("GIProbe", "set_dynamic_range");
		const(void*)[1] _GODOT_args = [cast(void*)(&max), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	int get_dynamic_range() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("GIProbe", "get_dynamic_range");
		int _GODOT_ret = int.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_energy(in float max)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("GIProbe", "set_energy");
		const(void*)[1] _GODOT_args = [cast(void*)(&max), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	float get_energy() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("GIProbe", "get_energy");
		float _GODOT_ret = float.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_bias(in float max)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("GIProbe", "set_bias");
		const(void*)[1] _GODOT_args = [cast(void*)(&max), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	float get_bias() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("GIProbe", "get_bias");
		float _GODOT_ret = float.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_normal_bias(in float max)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("GIProbe", "set_normal_bias");
		const(void*)[1] _GODOT_args = [cast(void*)(&max), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	float get_normal_bias() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("GIProbe", "get_normal_bias");
		float _GODOT_ret = float.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_propagation(in float max)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("GIProbe", "set_propagation");
		const(void*)[1] _GODOT_args = [cast(void*)(&max), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	float get_propagation() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("GIProbe", "get_propagation");
		float _GODOT_ret = float.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_interior(in bool enable)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("GIProbe", "set_interior");
		const(void*)[1] _GODOT_args = [cast(void*)(&enable), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	bool is_interior() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("GIProbe", "is_interior");
		bool _GODOT_ret = bool.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_compress(in bool enable)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("GIProbe", "set_compress");
		const(void*)[1] _GODOT_args = [cast(void*)(&enable), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	bool is_compressed() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("GIProbe", "is_compressed");
		bool _GODOT_ret = bool.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void bake(in Node from_node = Node.init, in bool create_visual_debug = false)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("GIProbe", "bake");
		const(void*)[2] _GODOT_args = [cast(void*)(from_node), cast(void*)(&create_visual_debug), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void debug_bake()
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("GIProbe", "debug_bake");
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null);
	}
}
