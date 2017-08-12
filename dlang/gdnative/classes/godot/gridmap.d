module godot.gridmap;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.object;
import godot.classdb;
import godot.spatial;
import godot.meshlibrary;
@GodotBaseClass struct GridMap
{
	static immutable string _GODOT_internal_name = "GridMap";
public:
	union { godot_object _godot_object; Spatial base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	package(godot) void* opCast(T : void*)() const { return cast(void*)_godot_object.ptr; }
	godot_object opCast(T : godot_object)() const { return cast(godot_object)_godot_object; }
	bool opEquals(in GridMap other) const { return _godot_object.ptr is other._godot_object.ptr; }
	GridMap opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	bool opCast(T : bool)() const { return _godot_object.ptr !is null; }
	inout(T) opCast(T)() inout if(isGodotBaseClass!T)
	{
		static assert(staticIndexOf!(GridMap, T.BaseClasses) != -1, "Godot class "~T.stringof~" does not inherit GridMap");
		if(_godot_object.ptr is null) return T.init;
		String c = String(T._GODOT_internal_name);
		if(is_class(c)) return inout(T)(_godot_object);
		return T.init;
	}
	inout(T) opCast(T)() inout if(extendsGodotBaseClass!T)
	{
		static assert(is(typeof(T.owner) : GridMap) || staticIndexOf!(GridMap, typeof(T.owner).BaseClasses) != -1, "D class "~T.stringof~" does not extend GridMap");
		if(_godot_object.ptr is null) return null;
		if(has_method(String(`_GDNATIVE_D_typeid`)))
		{
			Object o = cast(Object)godot_nativescript_get_userdata(opCast!godot_object);
			return cast(inout(T))o;
		}
		return null;
	}
	static GridMap _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("GridMap");
		if(constructor is null) return typeof(this).init;
		return cast(GridMap)(constructor());
	}
	enum int INVALID_CELL_ITEM = -1;
	void set_theme(in MeshLibrary theme)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("GridMap", "set_theme");
		const(void*)[1] _GODOT_args = [cast(void*)(theme), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	MeshLibrary get_theme() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("GridMap", "get_theme");
		MeshLibrary _GODOT_ret = MeshLibrary.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_cell_size(in float size)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("GridMap", "set_cell_size");
		const(void*)[1] _GODOT_args = [cast(void*)(&size), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	float get_cell_size() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("GridMap", "get_cell_size");
		float _GODOT_ret = float.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_octant_size(in int size)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("GridMap", "set_octant_size");
		const(void*)[1] _GODOT_args = [cast(void*)(&size), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	int get_octant_size() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("GridMap", "get_octant_size");
		int _GODOT_ret = int.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_cell_item(in int x, in int y, in int z, in int item, in int orientation = 0)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("GridMap", "set_cell_item");
		const(void*)[5] _GODOT_args = [cast(void*)(&x), cast(void*)(&y), cast(void*)(&z), cast(void*)(&item), cast(void*)(&orientation), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	int get_cell_item(in int x, in int y, in int z) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("GridMap", "get_cell_item");
		int _GODOT_ret = int.init;
		const(void*)[3] _GODOT_args = [cast(void*)(&x), cast(void*)(&y), cast(void*)(&z), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	int get_cell_item_orientation(in int x, in int y, in int z) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("GridMap", "get_cell_item_orientation");
		int _GODOT_ret = int.init;
		const(void*)[3] _GODOT_args = [cast(void*)(&x), cast(void*)(&y), cast(void*)(&z), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void _update_dirty_map_callback()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_update_dirty_map_callback");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	void resource_changed(in GodotObject resource)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("GridMap", "resource_changed");
		const(void*)[1] _GODOT_args = [cast(void*)(resource), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void set_center_x(in bool enable)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("GridMap", "set_center_x");
		const(void*)[1] _GODOT_args = [cast(void*)(&enable), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	bool get_center_x() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("GridMap", "get_center_x");
		bool _GODOT_ret = bool.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_center_y(in bool enable)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("GridMap", "set_center_y");
		const(void*)[1] _GODOT_args = [cast(void*)(&enable), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	bool get_center_y() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("GridMap", "get_center_y");
		bool _GODOT_ret = bool.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_center_z(in bool enable)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("GridMap", "set_center_z");
		const(void*)[1] _GODOT_args = [cast(void*)(&enable), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	bool get_center_z() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("GridMap", "get_center_z");
		bool _GODOT_ret = bool.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_clip(in bool enabled, in bool clipabove = true, in int floor = 0, in int axis = 0)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("GridMap", "set_clip");
		const(void*)[4] _GODOT_args = [cast(void*)(&enabled), cast(void*)(&clipabove), cast(void*)(&floor), cast(void*)(&axis), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	int create_area(in int id, in Rect3 area)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("GridMap", "create_area");
		int _GODOT_ret = int.init;
		const(void*)[2] _GODOT_args = [cast(void*)(&id), cast(void*)(&area), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	Rect3 area_get_bounds(in int area) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("GridMap", "area_get_bounds");
		Rect3 _GODOT_ret = Rect3.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&area), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void area_set_exterior_portal(in int area, in bool enable)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("GridMap", "area_set_exterior_portal");
		const(void*)[2] _GODOT_args = [cast(void*)(&area), cast(void*)(&enable), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void area_set_name(in int area, in String name)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("GridMap", "area_set_name");
		const(void*)[2] _GODOT_args = [cast(void*)(&area), cast(void*)(&name), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	String area_get_name(in int area) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("GridMap", "area_get_name");
		String _GODOT_ret = String.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&area), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	bool area_is_exterior_portal(in int area) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("GridMap", "area_is_exterior_portal");
		bool _GODOT_ret = bool.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&area), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void area_set_portal_disable_distance(in int area, in float distance)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("GridMap", "area_set_portal_disable_distance");
		const(void*)[2] _GODOT_args = [cast(void*)(&area), cast(void*)(&distance), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	float area_get_portal_disable_distance(in int area) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("GridMap", "area_get_portal_disable_distance");
		float _GODOT_ret = float.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&area), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void area_set_portal_disable_color(in int area, in Color color)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("GridMap", "area_set_portal_disable_color");
		const(void*)[2] _GODOT_args = [cast(void*)(&area), cast(void*)(&color), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	Color area_get_portal_disable_color(in int area) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("GridMap", "area_get_portal_disable_color");
		Color _GODOT_ret = Color.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&area), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void erase_area(in int area)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("GridMap", "erase_area");
		const(void*)[1] _GODOT_args = [cast(void*)(&area), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	int get_unused_area_id() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("GridMap", "get_unused_area_id");
		int _GODOT_ret = int.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void clear()
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("GridMap", "clear");
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null);
	}
	Array get_meshes()
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("GridMap", "get_meshes");
		Array _GODOT_ret = Array.empty_array;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
}
