module godot.navigationpolygon;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.object;
import godot.classdb;
import godot.resource;
@GodotBaseClass struct NavigationPolygon
{
	static immutable string _GODOT_internal_name = "NavigationPolygon";
public:
	union { godot_object _godot_object; Resource base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	package(godot) void* opCast(T : void*)() const { return cast(void*)_godot_object.ptr; }
	godot_object opCast(T : godot_object)() const { return cast(godot_object)_godot_object; }
	bool opEquals(in NavigationPolygon other) const { return _godot_object.ptr is other._godot_object.ptr; }
	NavigationPolygon opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	bool opCast(T : bool)() const { return _godot_object.ptr !is null; }
	inout(T) opCast(T)() inout if(isGodotBaseClass!T)
	{
		static assert(staticIndexOf!(NavigationPolygon, T.BaseClasses) != -1, "Godot class "~T.stringof~" does not inherit NavigationPolygon");
		if(_godot_object.ptr is null) return T.init;
		String c = String(T._GODOT_internal_name);
		if(is_class(c)) return inout(T)(_godot_object);
		return T.init;
	}
	inout(T) opCast(T)() inout if(extendsGodotBaseClass!T)
	{
		static assert(is(typeof(T.owner) : NavigationPolygon) || staticIndexOf!(NavigationPolygon, typeof(T.owner).BaseClasses) != -1, "D class "~T.stringof~" does not extend NavigationPolygon");
		if(_godot_object.ptr is null) return null;
		if(has_method(String(`_GDNATIVE_D_typeid`)))
		{
			Object o = cast(Object)godot_nativescript_get_userdata(opCast!godot_object);
			return cast(inout(T))o;
		}
		return null;
	}
	static NavigationPolygon _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("NavigationPolygon");
		if(constructor is null) return typeof(this).init;
		return cast(NavigationPolygon)(constructor());
	}
	void set_vertices(in PoolVector2Array vertices)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("NavigationPolygon", "set_vertices");
		const(void*)[1] _GODOT_args = [cast(void*)(&vertices), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	PoolVector2Array get_vertices() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("NavigationPolygon", "get_vertices");
		PoolVector2Array _GODOT_ret = PoolVector2Array.empty;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void add_polygon(in PoolIntArray polygon)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("NavigationPolygon", "add_polygon");
		const(void*)[1] _GODOT_args = [cast(void*)(&polygon), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	int get_polygon_count() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("NavigationPolygon", "get_polygon_count");
		int _GODOT_ret = int.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	PoolIntArray get_polygon(in int idx)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("NavigationPolygon", "get_polygon");
		PoolIntArray _GODOT_ret = PoolIntArray.empty;
		const(void*)[1] _GODOT_args = [cast(void*)(&idx), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void clear_polygons()
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("NavigationPolygon", "clear_polygons");
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null);
	}
	void add_outline(in PoolVector2Array outline)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("NavigationPolygon", "add_outline");
		const(void*)[1] _GODOT_args = [cast(void*)(&outline), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void add_outline_at_index(in PoolVector2Array outline, in int index)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("NavigationPolygon", "add_outline_at_index");
		const(void*)[2] _GODOT_args = [cast(void*)(&outline), cast(void*)(&index), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	int get_outline_count() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("NavigationPolygon", "get_outline_count");
		int _GODOT_ret = int.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_outline(in int idx, in PoolVector2Array outline)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("NavigationPolygon", "set_outline");
		const(void*)[2] _GODOT_args = [cast(void*)(&idx), cast(void*)(&outline), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	PoolVector2Array get_outline(in int idx) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("NavigationPolygon", "get_outline");
		PoolVector2Array _GODOT_ret = PoolVector2Array.empty;
		const(void*)[1] _GODOT_args = [cast(void*)(&idx), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void remove_outline(in int idx)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("NavigationPolygon", "remove_outline");
		const(void*)[1] _GODOT_args = [cast(void*)(&idx), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void clear_outlines()
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("NavigationPolygon", "clear_outlines");
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null);
	}
	void make_polygons_from_outlines()
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("NavigationPolygon", "make_polygons_from_outlines");
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
	void _set_outlines(in Array outlines)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(outlines);
		String _GODOT_method_name = String("_set_outlines");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	Array _get_outlines() const
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_get_outlines");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(Array);
	}
}
