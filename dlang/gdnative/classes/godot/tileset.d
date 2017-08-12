module godot.tileset;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.object;
import godot.classdb;
import godot.resource;
import godot.texture;
import godot.shadermaterial;
import godot.shape2d;
import godot.navigationpolygon;
import godot.occluderpolygon2d;
@GodotBaseClass struct TileSet
{
	static immutable string _GODOT_internal_name = "TileSet";
public:
	union { godot_object _godot_object; Resource base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	package(godot) void* opCast(T : void*)() const { return cast(void*)_godot_object.ptr; }
	godot_object opCast(T : godot_object)() const { return cast(godot_object)_godot_object; }
	bool opEquals(in TileSet other) const { return _godot_object.ptr is other._godot_object.ptr; }
	TileSet opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	bool opCast(T : bool)() const { return _godot_object.ptr !is null; }
	inout(T) opCast(T)() inout if(isGodotBaseClass!T)
	{
		static assert(staticIndexOf!(TileSet, T.BaseClasses) != -1, "Godot class "~T.stringof~" does not inherit TileSet");
		if(_godot_object.ptr is null) return T.init;
		String c = String(T._GODOT_internal_name);
		if(is_class(c)) return inout(T)(_godot_object);
		return T.init;
	}
	inout(T) opCast(T)() inout if(extendsGodotBaseClass!T)
	{
		static assert(is(typeof(T.owner) : TileSet) || staticIndexOf!(TileSet, typeof(T.owner).BaseClasses) != -1, "D class "~T.stringof~" does not extend TileSet");
		if(_godot_object.ptr is null) return null;
		if(has_method(String(`_GDNATIVE_D_typeid`)))
		{
			Object o = cast(Object)godot_nativescript_get_userdata(opCast!godot_object);
			return cast(inout(T))o;
		}
		return null;
	}
	static TileSet _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("TileSet");
		if(constructor is null) return typeof(this).init;
		return cast(TileSet)(constructor());
	}
	void create_tile(in int id)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("TileSet", "create_tile");
		const(void*)[1] _GODOT_args = [cast(void*)(&id), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void tile_set_name(in int id, in String name)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("TileSet", "tile_set_name");
		const(void*)[2] _GODOT_args = [cast(void*)(&id), cast(void*)(&name), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	String tile_get_name(in int id) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("TileSet", "tile_get_name");
		String _GODOT_ret = String.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&id), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void tile_set_texture(in int id, in Texture texture)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("TileSet", "tile_set_texture");
		const(void*)[2] _GODOT_args = [cast(void*)(&id), cast(void*)(texture), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	Texture tile_get_texture(in int id) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("TileSet", "tile_get_texture");
		Texture _GODOT_ret = Texture.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&id), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void tile_set_normal_map(in int id, in Texture normal_map)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("TileSet", "tile_set_normal_map");
		const(void*)[2] _GODOT_args = [cast(void*)(&id), cast(void*)(normal_map), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	Texture tile_get_normal_map(in int id) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("TileSet", "tile_get_normal_map");
		Texture _GODOT_ret = Texture.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&id), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void tile_set_material(in int id, in ShaderMaterial material)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("TileSet", "tile_set_material");
		const(void*)[2] _GODOT_args = [cast(void*)(&id), cast(void*)(material), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	ShaderMaterial tile_get_material(in int id) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("TileSet", "tile_get_material");
		ShaderMaterial _GODOT_ret = ShaderMaterial.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&id), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void tile_set_texture_offset(in int id, in Vector2 texture_offset)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("TileSet", "tile_set_texture_offset");
		const(void*)[2] _GODOT_args = [cast(void*)(&id), cast(void*)(&texture_offset), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	Vector2 tile_get_texture_offset(in int id) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("TileSet", "tile_get_texture_offset");
		Vector2 _GODOT_ret = Vector2.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&id), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void tile_set_region(in int id, in Rect2 region)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("TileSet", "tile_set_region");
		const(void*)[2] _GODOT_args = [cast(void*)(&id), cast(void*)(&region), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	Rect2 tile_get_region(in int id) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("TileSet", "tile_get_region");
		Rect2 _GODOT_ret = Rect2.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&id), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void tile_set_shape(in int id, in int shape_id, in Shape2D shape)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("TileSet", "tile_set_shape");
		const(void*)[3] _GODOT_args = [cast(void*)(&id), cast(void*)(&shape_id), cast(void*)(shape), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	Shape2D tile_get_shape(in int id, in int shape_id) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("TileSet", "tile_get_shape");
		Shape2D _GODOT_ret = Shape2D.init;
		const(void*)[2] _GODOT_args = [cast(void*)(&id), cast(void*)(&shape_id), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void tile_set_shape_transform(in int id, in int shape_id, in Transform2D shape_transform)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("TileSet", "tile_set_shape_transform");
		const(void*)[3] _GODOT_args = [cast(void*)(&id), cast(void*)(&shape_id), cast(void*)(&shape_transform), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	Transform2D tile_get_shape_transform(in int id, in int shape_id) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("TileSet", "tile_get_shape_transform");
		Transform2D _GODOT_ret = Transform2D.init;
		const(void*)[2] _GODOT_args = [cast(void*)(&id), cast(void*)(&shape_id), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void tile_set_shape_one_way(in int id, in int shape_id, in bool one_way)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("TileSet", "tile_set_shape_one_way");
		const(void*)[3] _GODOT_args = [cast(void*)(&id), cast(void*)(&shape_id), cast(void*)(&one_way), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	bool tile_get_shape_one_way(in int id, in int shape_id) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("TileSet", "tile_get_shape_one_way");
		bool _GODOT_ret = bool.init;
		const(void*)[2] _GODOT_args = [cast(void*)(&id), cast(void*)(&shape_id), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void tile_add_shape(in int id, in Shape2D shape, in Transform2D shape_transform, in bool one_way = false)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("TileSet", "tile_add_shape");
		const(void*)[4] _GODOT_args = [cast(void*)(&id), cast(void*)(shape), cast(void*)(&shape_transform), cast(void*)(&one_way), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	int tile_get_shape_count(in int id) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("TileSet", "tile_get_shape_count");
		int _GODOT_ret = int.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&id), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void tile_set_shapes(in int id, in Array shapes)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("TileSet", "tile_set_shapes");
		const(void*)[2] _GODOT_args = [cast(void*)(&id), cast(void*)(&shapes), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	Array tile_get_shapes(in int id) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("TileSet", "tile_get_shapes");
		Array _GODOT_ret = Array.empty_array;
		const(void*)[1] _GODOT_args = [cast(void*)(&id), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void tile_set_navigation_polygon(in int id, in NavigationPolygon navigation_polygon)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("TileSet", "tile_set_navigation_polygon");
		const(void*)[2] _GODOT_args = [cast(void*)(&id), cast(void*)(navigation_polygon), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	NavigationPolygon tile_get_navigation_polygon(in int id) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("TileSet", "tile_get_navigation_polygon");
		NavigationPolygon _GODOT_ret = NavigationPolygon.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&id), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void tile_set_navigation_polygon_offset(in int id, in Vector2 navigation_polygon_offset)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("TileSet", "tile_set_navigation_polygon_offset");
		const(void*)[2] _GODOT_args = [cast(void*)(&id), cast(void*)(&navigation_polygon_offset), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	Vector2 tile_get_navigation_polygon_offset(in int id) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("TileSet", "tile_get_navigation_polygon_offset");
		Vector2 _GODOT_ret = Vector2.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&id), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void tile_set_light_occluder(in int id, in OccluderPolygon2D light_occluder)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("TileSet", "tile_set_light_occluder");
		const(void*)[2] _GODOT_args = [cast(void*)(&id), cast(void*)(light_occluder), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	OccluderPolygon2D tile_get_light_occluder(in int id) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("TileSet", "tile_get_light_occluder");
		OccluderPolygon2D _GODOT_ret = OccluderPolygon2D.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&id), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void tile_set_occluder_offset(in int id, in Vector2 occluder_offset)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("TileSet", "tile_set_occluder_offset");
		const(void*)[2] _GODOT_args = [cast(void*)(&id), cast(void*)(&occluder_offset), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	Vector2 tile_get_occluder_offset(in int id) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("TileSet", "tile_get_occluder_offset");
		Vector2 _GODOT_ret = Vector2.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&id), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void remove_tile(in int id)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("TileSet", "remove_tile");
		const(void*)[1] _GODOT_args = [cast(void*)(&id), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void clear()
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("TileSet", "clear");
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null);
	}
	int get_last_unused_tile_id() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("TileSet", "get_last_unused_tile_id");
		int _GODOT_ret = int.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	int find_tile_by_name(in String name) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("TileSet", "find_tile_by_name");
		int _GODOT_ret = int.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&name), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	Array get_tiles_ids() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("TileSet", "get_tiles_ids");
		Array _GODOT_ret = Array.empty_array;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
}
