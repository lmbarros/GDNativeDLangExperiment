module godot.giprobedata;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.object;
import godot.classdb;
import godot.resource;
@GodotBaseClass struct GIProbeData
{
	static immutable string _GODOT_internal_name = "GIProbeData";
public:
	union { godot_object _godot_object; Resource base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	package(godot) void* opCast(T : void*)() const { return cast(void*)_godot_object.ptr; }
	godot_object opCast(T : godot_object)() const { return cast(godot_object)_godot_object; }
	bool opEquals(in GIProbeData other) const { return _godot_object.ptr is other._godot_object.ptr; }
	GIProbeData opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	bool opCast(T : bool)() const { return _godot_object.ptr !is null; }
	inout(T) opCast(T)() inout if(isGodotBaseClass!T)
	{
		static assert(staticIndexOf!(GIProbeData, T.BaseClasses) != -1, "Godot class "~T.stringof~" does not inherit GIProbeData");
		if(_godot_object.ptr is null) return T.init;
		String c = String(T._GODOT_internal_name);
		if(is_class(c)) return inout(T)(_godot_object);
		return T.init;
	}
	inout(T) opCast(T)() inout if(extendsGodotBaseClass!T)
	{
		static assert(is(typeof(T.owner) : GIProbeData) || staticIndexOf!(GIProbeData, typeof(T.owner).BaseClasses) != -1, "D class "~T.stringof~" does not extend GIProbeData");
		if(_godot_object.ptr is null) return null;
		if(has_method(String(`_GDNATIVE_D_typeid`)))
		{
			Object o = cast(Object)godot_nativescript_get_userdata(opCast!godot_object);
			return cast(inout(T))o;
		}
		return null;
	}
	static GIProbeData _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("GIProbeData");
		if(constructor is null) return typeof(this).init;
		return cast(GIProbeData)(constructor());
	}
	void set_bounds(in Rect3 bounds)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("GIProbeData", "set_bounds");
		const(void*)[1] _GODOT_args = [cast(void*)(&bounds), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	Rect3 get_bounds() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("GIProbeData", "get_bounds");
		Rect3 _GODOT_ret = Rect3.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_cell_size(in float cell_size)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("GIProbeData", "set_cell_size");
		const(void*)[1] _GODOT_args = [cast(void*)(&cell_size), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	float get_cell_size() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("GIProbeData", "get_cell_size");
		float _GODOT_ret = float.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_to_cell_xform(in Transform to_cell_xform)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("GIProbeData", "set_to_cell_xform");
		const(void*)[1] _GODOT_args = [cast(void*)(&to_cell_xform), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	Transform get_to_cell_xform() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("GIProbeData", "get_to_cell_xform");
		Transform _GODOT_ret = Transform.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_dynamic_data(in PoolIntArray dynamic_data)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("GIProbeData", "set_dynamic_data");
		const(void*)[1] _GODOT_args = [cast(void*)(&dynamic_data), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	PoolIntArray get_dynamic_data() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("GIProbeData", "get_dynamic_data");
		PoolIntArray _GODOT_ret = PoolIntArray.empty;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_dynamic_range(in int dynamic_range)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("GIProbeData", "set_dynamic_range");
		const(void*)[1] _GODOT_args = [cast(void*)(&dynamic_range), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	int get_dynamic_range() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("GIProbeData", "get_dynamic_range");
		int _GODOT_ret = int.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_energy(in float energy)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("GIProbeData", "set_energy");
		const(void*)[1] _GODOT_args = [cast(void*)(&energy), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	float get_energy() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("GIProbeData", "get_energy");
		float _GODOT_ret = float.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_bias(in float bias)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("GIProbeData", "set_bias");
		const(void*)[1] _GODOT_args = [cast(void*)(&bias), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	float get_bias() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("GIProbeData", "get_bias");
		float _GODOT_ret = float.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_normal_bias(in float bias)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("GIProbeData", "set_normal_bias");
		const(void*)[1] _GODOT_args = [cast(void*)(&bias), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	float get_normal_bias() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("GIProbeData", "get_normal_bias");
		float _GODOT_ret = float.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_propagation(in float propagation)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("GIProbeData", "set_propagation");
		const(void*)[1] _GODOT_args = [cast(void*)(&propagation), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	float get_propagation() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("GIProbeData", "get_propagation");
		float _GODOT_ret = float.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_interior(in bool interior)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("GIProbeData", "set_interior");
		const(void*)[1] _GODOT_args = [cast(void*)(&interior), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	bool is_interior() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("GIProbeData", "is_interior");
		bool _GODOT_ret = bool.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_compress(in bool compress)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("GIProbeData", "set_compress");
		const(void*)[1] _GODOT_args = [cast(void*)(&compress), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	bool is_compressed() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("GIProbeData", "is_compressed");
		bool _GODOT_ret = bool.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
}
