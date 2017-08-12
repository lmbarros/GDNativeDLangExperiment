module godot.navigationmesh;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.object;
import godot.classdb;
import godot.resource;
@GodotBaseClass struct NavigationMesh
{
	static immutable string _GODOT_internal_name = "NavigationMesh";
public:
	union { godot_object _godot_object; Resource base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	package(godot) void* opCast(T : void*)() const { return cast(void*)_godot_object.ptr; }
	godot_object opCast(T : godot_object)() const { return cast(godot_object)_godot_object; }
	bool opEquals(in NavigationMesh other) const { return _godot_object.ptr is other._godot_object.ptr; }
	NavigationMesh opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	bool opCast(T : bool)() const { return _godot_object.ptr !is null; }
	inout(T) opCast(T)() inout if(isGodotBaseClass!T)
	{
		static assert(staticIndexOf!(NavigationMesh, T.BaseClasses) != -1, "Godot class "~T.stringof~" does not inherit NavigationMesh");
		if(_godot_object.ptr is null) return T.init;
		String c = String(T._GODOT_internal_name);
		if(is_class(c)) return inout(T)(_godot_object);
		return T.init;
	}
	inout(T) opCast(T)() inout if(extendsGodotBaseClass!T)
	{
		static assert(is(typeof(T.owner) : NavigationMesh) || staticIndexOf!(NavigationMesh, typeof(T.owner).BaseClasses) != -1, "D class "~T.stringof~" does not extend NavigationMesh");
		if(_godot_object.ptr is null) return null;
		if(has_method(String(`_GDNATIVE_D_typeid`)))
		{
			Object o = cast(Object)godot_nativescript_get_userdata(opCast!godot_object);
			return cast(inout(T))o;
		}
		return null;
	}
	static NavigationMesh _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("NavigationMesh");
		if(constructor is null) return typeof(this).init;
		return cast(NavigationMesh)(constructor());
	}
	void set_vertices(in PoolVector3Array vertices)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("NavigationMesh", "set_vertices");
		const(void*)[1] _GODOT_args = [cast(void*)(&vertices), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	PoolVector3Array get_vertices() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("NavigationMesh", "get_vertices");
		PoolVector3Array _GODOT_ret = PoolVector3Array.empty;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void add_polygon(in PoolIntArray polygon)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("NavigationMesh", "add_polygon");
		const(void*)[1] _GODOT_args = [cast(void*)(&polygon), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	int get_polygon_count() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("NavigationMesh", "get_polygon_count");
		int _GODOT_ret = int.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	PoolIntArray get_polygon(in int idx)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("NavigationMesh", "get_polygon");
		PoolIntArray _GODOT_ret = PoolIntArray.empty;
		const(void*)[1] _GODOT_args = [cast(void*)(&idx), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void clear_polygons()
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("NavigationMesh", "clear_polygons");
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null);
	}
	void _set_polygons(in Array polygons)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(polygons);
		String _GODOT_method_name = String("_set_polygons");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	Array _get_polygons() const
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_get_polygons");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(Array);
	}
}
