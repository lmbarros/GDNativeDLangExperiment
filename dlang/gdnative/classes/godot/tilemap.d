module godot.tilemap;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.object;
import godot.classdb;
import godot.node2d;
import godot.tileset;
@GodotBaseClass struct TileMap
{
	static immutable string _GODOT_internal_name = "TileMap";
public:
	union { godot_object _godot_object; Node2D base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	package(godot) void* opCast(T : void*)() const { return cast(void*)_godot_object.ptr; }
	godot_object opCast(T : godot_object)() const { return cast(godot_object)_godot_object; }
	bool opEquals(in TileMap other) const { return _godot_object.ptr is other._godot_object.ptr; }
	TileMap opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	bool opCast(T : bool)() const { return _godot_object.ptr !is null; }
	inout(T) opCast(T)() inout if(isGodotBaseClass!T)
	{
		static assert(staticIndexOf!(TileMap, T.BaseClasses) != -1, "Godot class "~T.stringof~" does not inherit TileMap");
		if(_godot_object.ptr is null) return T.init;
		String c = String(T._GODOT_internal_name);
		if(is_class(c)) return inout(T)(_godot_object);
		return T.init;
	}
	inout(T) opCast(T)() inout if(extendsGodotBaseClass!T)
	{
		static assert(is(typeof(T.owner) : TileMap) || staticIndexOf!(TileMap, typeof(T.owner).BaseClasses) != -1, "D class "~T.stringof~" does not extend TileMap");
		if(_godot_object.ptr is null) return null;
		if(has_method(String(`_GDNATIVE_D_typeid`)))
		{
			Object o = cast(Object)godot_nativescript_get_userdata(opCast!godot_object);
			return cast(inout(T))o;
		}
		return null;
	}
	static TileMap _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("TileMap");
		if(constructor is null) return typeof(this).init;
		return cast(TileMap)(constructor());
	}
	enum int MODE_SQUARE = 0;
	enum int HALF_OFFSET_X = 0;
	enum int INVALID_CELL = -1;
	enum int MODE_CUSTOM = 2;
	enum int TILE_ORIGIN_TOP_LEFT = 0;
	enum int TILE_ORIGIN_CENTER = 1;
	enum int HALF_OFFSET_DISABLED = 2;
	enum int HALF_OFFSET_Y = 1;
	enum int TILE_ORIGIN_BOTTOM_LEFT = 2;
	enum int MODE_ISOMETRIC = 1;
	void set_tileset(in TileSet tileset)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("TileMap", "set_tileset");
		const(void*)[1] _GODOT_args = [cast(void*)(tileset), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	TileSet get_tileset() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("TileMap", "get_tileset");
		TileSet _GODOT_ret = TileSet.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_mode(in int mode)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("TileMap", "set_mode");
		const(void*)[1] _GODOT_args = [cast(void*)(&mode), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	int get_mode() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("TileMap", "get_mode");
		int _GODOT_ret = int.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_half_offset(in int half_offset)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("TileMap", "set_half_offset");
		const(void*)[1] _GODOT_args = [cast(void*)(&half_offset), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	int get_half_offset() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("TileMap", "get_half_offset");
		int _GODOT_ret = int.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_custom_transform(in Transform2D custom_transform)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("TileMap", "set_custom_transform");
		const(void*)[1] _GODOT_args = [cast(void*)(&custom_transform), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	Transform2D get_custom_transform() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("TileMap", "get_custom_transform");
		Transform2D _GODOT_ret = Transform2D.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_cell_size(in Vector2 size)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("TileMap", "set_cell_size");
		const(void*)[1] _GODOT_args = [cast(void*)(&size), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	Vector2 get_cell_size() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("TileMap", "get_cell_size");
		Vector2 _GODOT_ret = Vector2.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void _set_old_cell_size(in int size)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(size);
		String _GODOT_method_name = String("_set_old_cell_size");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	int _get_old_cell_size() const
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_get_old_cell_size");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(int);
	}
	void set_quadrant_size(in int size)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("TileMap", "set_quadrant_size");
		const(void*)[1] _GODOT_args = [cast(void*)(&size), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	int get_quadrant_size() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("TileMap", "get_quadrant_size");
		int _GODOT_ret = int.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_tile_origin(in int origin)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("TileMap", "set_tile_origin");
		const(void*)[1] _GODOT_args = [cast(void*)(&origin), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	int get_tile_origin() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("TileMap", "get_tile_origin");
		int _GODOT_ret = int.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_center_x(in bool enable)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("TileMap", "set_center_x");
		const(void*)[1] _GODOT_args = [cast(void*)(&enable), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	bool get_center_x() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("TileMap", "get_center_x");
		bool _GODOT_ret = bool.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_center_y(in bool enable)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("TileMap", "set_center_y");
		const(void*)[1] _GODOT_args = [cast(void*)(&enable), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	bool get_center_y() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("TileMap", "get_center_y");
		bool _GODOT_ret = bool.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_y_sort_mode(in bool enable)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("TileMap", "set_y_sort_mode");
		const(void*)[1] _GODOT_args = [cast(void*)(&enable), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	bool is_y_sort_mode_enabled() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("TileMap", "is_y_sort_mode_enabled");
		bool _GODOT_ret = bool.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_collision_use_kinematic(in bool use_kinematic)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("TileMap", "set_collision_use_kinematic");
		const(void*)[1] _GODOT_args = [cast(void*)(&use_kinematic), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	bool get_collision_use_kinematic() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("TileMap", "get_collision_use_kinematic");
		bool _GODOT_ret = bool.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_collision_layer(in int layer)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("TileMap", "set_collision_layer");
		const(void*)[1] _GODOT_args = [cast(void*)(&layer), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	int get_collision_layer() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("TileMap", "get_collision_layer");
		int _GODOT_ret = int.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_collision_mask(in int mask)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("TileMap", "set_collision_mask");
		const(void*)[1] _GODOT_args = [cast(void*)(&mask), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	int get_collision_mask() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("TileMap", "get_collision_mask");
		int _GODOT_ret = int.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_collision_layer_bit(in int bit, in bool value)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("TileMap", "set_collision_layer_bit");
		const(void*)[2] _GODOT_args = [cast(void*)(&bit), cast(void*)(&value), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	bool get_collision_layer_bit(in int bit) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("TileMap", "get_collision_layer_bit");
		bool _GODOT_ret = bool.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&bit), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_collision_mask_bit(in int bit, in bool value)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("TileMap", "set_collision_mask_bit");
		const(void*)[2] _GODOT_args = [cast(void*)(&bit), cast(void*)(&value), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	bool get_collision_mask_bit(in int bit) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("TileMap", "get_collision_mask_bit");
		bool _GODOT_ret = bool.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&bit), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_collision_friction(in float value)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("TileMap", "set_collision_friction");
		const(void*)[1] _GODOT_args = [cast(void*)(&value), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	float get_collision_friction() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("TileMap", "get_collision_friction");
		float _GODOT_ret = float.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_collision_bounce(in float value)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("TileMap", "set_collision_bounce");
		const(void*)[1] _GODOT_args = [cast(void*)(&value), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	float get_collision_bounce() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("TileMap", "get_collision_bounce");
		float _GODOT_ret = float.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_occluder_light_mask(in int mask)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("TileMap", "set_occluder_light_mask");
		const(void*)[1] _GODOT_args = [cast(void*)(&mask), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	int get_occluder_light_mask() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("TileMap", "get_occluder_light_mask");
		int _GODOT_ret = int.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_cell(in int x, in int y, in int tile, in bool flip_x = false, in bool flip_y = false, in bool transpose = false)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("TileMap", "set_cell");
		const(void*)[6] _GODOT_args = [cast(void*)(&x), cast(void*)(&y), cast(void*)(&tile), cast(void*)(&flip_x), cast(void*)(&flip_y), cast(void*)(&transpose), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void set_cellv(in Vector2 pos, in int tile, in bool flip_x = false, in bool flip_y = false, in bool transpose = false)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("TileMap", "set_cellv");
		const(void*)[5] _GODOT_args = [cast(void*)(&pos), cast(void*)(&tile), cast(void*)(&flip_x), cast(void*)(&flip_y), cast(void*)(&transpose), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	int get_cell(in int x, in int y) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("TileMap", "get_cell");
		int _GODOT_ret = int.init;
		const(void*)[2] _GODOT_args = [cast(void*)(&x), cast(void*)(&y), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	int get_cellv(in Vector2 pos) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("TileMap", "get_cellv");
		int _GODOT_ret = int.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&pos), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	bool is_cell_x_flipped(in int x, in int y) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("TileMap", "is_cell_x_flipped");
		bool _GODOT_ret = bool.init;
		const(void*)[2] _GODOT_args = [cast(void*)(&x), cast(void*)(&y), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	bool is_cell_y_flipped(in int x, in int y) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("TileMap", "is_cell_y_flipped");
		bool _GODOT_ret = bool.init;
		const(void*)[2] _GODOT_args = [cast(void*)(&x), cast(void*)(&y), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	bool is_cell_transposed(in int x, in int y) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("TileMap", "is_cell_transposed");
		bool _GODOT_ret = bool.init;
		const(void*)[2] _GODOT_args = [cast(void*)(&x), cast(void*)(&y), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void clear()
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("TileMap", "clear");
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null);
	}
	Array get_used_cells() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("TileMap", "get_used_cells");
		Array _GODOT_ret = Array.empty_array;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	Array get_used_cells_by_id(in int id) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("TileMap", "get_used_cells_by_id");
		Array _GODOT_ret = Array.empty_array;
		const(void*)[1] _GODOT_args = [cast(void*)(&id), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	Rect2 get_used_rect()
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("TileMap", "get_used_rect");
		Rect2 _GODOT_ret = Rect2.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	Vector2 map_to_world(in Vector2 mappos, in bool ignore_half_ofs = false) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("TileMap", "map_to_world");
		Vector2 _GODOT_ret = Vector2.init;
		const(void*)[2] _GODOT_args = [cast(void*)(&mappos), cast(void*)(&ignore_half_ofs), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	Vector2 world_to_map(in Vector2 worldpos) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("TileMap", "world_to_map");
		Vector2 _GODOT_ret = Vector2.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&worldpos), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void _clear_quadrants()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_clear_quadrants");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	void _recreate_quadrants()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_recreate_quadrants");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	void _update_dirty_quadrants()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_update_dirty_quadrants");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	void _set_tile_data(in PoolIntArray arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_set_tile_data");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	PoolIntArray _get_tile_data() const
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_get_tile_data");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(PoolIntArray);
	}
}
