module godot.astar;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.object;
import godot.classdb;
import godot.reference;
@GodotBaseClass struct AStar
{
	static immutable string _GODOT_internal_name = "AStar";
public:
	union { godot_object _godot_object; Reference base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	package(godot) void* opCast(T : void*)() const { return cast(void*)_godot_object.ptr; }
	godot_object opCast(T : godot_object)() const { return cast(godot_object)_godot_object; }
	bool opEquals(in AStar other) const { return _godot_object.ptr is other._godot_object.ptr; }
	AStar opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	bool opCast(T : bool)() const { return _godot_object.ptr !is null; }
	inout(T) opCast(T)() inout if(isGodotBaseClass!T)
	{
		static assert(staticIndexOf!(AStar, T.BaseClasses) != -1, "Godot class "~T.stringof~" does not inherit AStar");
		if(_godot_object.ptr is null) return T.init;
		String c = String(T._GODOT_internal_name);
		if(is_class(c)) return inout(T)(_godot_object);
		return T.init;
	}
	inout(T) opCast(T)() inout if(extendsGodotBaseClass!T)
	{
		static assert(is(typeof(T.owner) : AStar) || staticIndexOf!(AStar, typeof(T.owner).BaseClasses) != -1, "D class "~T.stringof~" does not extend AStar");
		if(_godot_object.ptr is null) return null;
		if(has_method(String(`_GDNATIVE_D_typeid`)))
		{
			Object o = cast(Object)godot_nativescript_get_userdata(opCast!godot_object);
			return cast(inout(T))o;
		}
		return null;
	}
	static AStar _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("AStar");
		if(constructor is null) return typeof(this).init;
		return cast(AStar)(constructor());
	}
	void _estimate_cost(in int from_id, in int to_id)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(from_id);
		_GODOT_args.append(to_id);
		String _GODOT_method_name = String("_estimate_cost");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	void _compute_cost(in int from_id, in int to_id)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(from_id);
		_GODOT_args.append(to_id);
		String _GODOT_method_name = String("_compute_cost");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	int get_available_point_id() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("AStar", "get_available_point_id");
		int _GODOT_ret = int.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void add_point(in int id, in Vector3 pos, in float weight_scale = 1)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("AStar", "add_point");
		const(void*)[3] _GODOT_args = [cast(void*)(&id), cast(void*)(&pos), cast(void*)(&weight_scale), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	Vector3 get_point_pos(in int id) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("AStar", "get_point_pos");
		Vector3 _GODOT_ret = Vector3.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&id), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	float get_point_weight_scale(in int id) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("AStar", "get_point_weight_scale");
		float _GODOT_ret = float.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&id), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void remove_point(in int id)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("AStar", "remove_point");
		const(void*)[1] _GODOT_args = [cast(void*)(&id), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	bool has_point(in int id) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("AStar", "has_point");
		bool _GODOT_ret = bool.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&id), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void connect_points(in int id, in int to_id, in bool bidirectional = true)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("AStar", "connect_points");
		const(void*)[3] _GODOT_args = [cast(void*)(&id), cast(void*)(&to_id), cast(void*)(&bidirectional), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void disconnect_points(in int id, in int to_id)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("AStar", "disconnect_points");
		const(void*)[2] _GODOT_args = [cast(void*)(&id), cast(void*)(&to_id), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	bool are_points_connected(in int id, in int to_id) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("AStar", "are_points_connected");
		bool _GODOT_ret = bool.init;
		const(void*)[2] _GODOT_args = [cast(void*)(&id), cast(void*)(&to_id), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void clear()
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("AStar", "clear");
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null);
	}
	int get_closest_point(in Vector3 to_pos) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("AStar", "get_closest_point");
		int _GODOT_ret = int.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&to_pos), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	Vector3 get_closest_pos_in_segment(in Vector3 to_pos) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("AStar", "get_closest_pos_in_segment");
		Vector3 _GODOT_ret = Vector3.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&to_pos), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	PoolVector3Array get_point_path(in int from_id, in int to_id)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("AStar", "get_point_path");
		PoolVector3Array _GODOT_ret = PoolVector3Array.empty;
		const(void*)[2] _GODOT_args = [cast(void*)(&from_id), cast(void*)(&to_id), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	PoolIntArray get_id_path(in int from_id, in int to_id)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("AStar", "get_id_path");
		PoolIntArray _GODOT_ret = PoolIntArray.empty;
		const(void*)[2] _GODOT_args = [cast(void*)(&from_id), cast(void*)(&to_id), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
}
