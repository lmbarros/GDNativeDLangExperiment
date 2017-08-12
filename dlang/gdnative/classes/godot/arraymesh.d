module godot.arraymesh;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.object;
import godot.classdb;
import godot.mesh;
import godot.material;
@GodotBaseClass struct ArrayMesh
{
	static immutable string _GODOT_internal_name = "ArrayMesh";
public:
	union { godot_object _godot_object; Mesh base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	package(godot) void* opCast(T : void*)() const { return cast(void*)_godot_object.ptr; }
	godot_object opCast(T : godot_object)() const { return cast(godot_object)_godot_object; }
	bool opEquals(in ArrayMesh other) const { return _godot_object.ptr is other._godot_object.ptr; }
	ArrayMesh opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	bool opCast(T : bool)() const { return _godot_object.ptr !is null; }
	inout(T) opCast(T)() inout if(isGodotBaseClass!T)
	{
		static assert(staticIndexOf!(ArrayMesh, T.BaseClasses) != -1, "Godot class "~T.stringof~" does not inherit ArrayMesh");
		if(_godot_object.ptr is null) return T.init;
		String c = String(T._GODOT_internal_name);
		if(is_class(c)) return inout(T)(_godot_object);
		return T.init;
	}
	inout(T) opCast(T)() inout if(extendsGodotBaseClass!T)
	{
		static assert(is(typeof(T.owner) : ArrayMesh) || staticIndexOf!(ArrayMesh, typeof(T.owner).BaseClasses) != -1, "D class "~T.stringof~" does not extend ArrayMesh");
		if(_godot_object.ptr is null) return null;
		if(has_method(String(`_GDNATIVE_D_typeid`)))
		{
			Object o = cast(Object)godot_nativescript_get_userdata(opCast!godot_object);
			return cast(inout(T))o;
		}
		return null;
	}
	static ArrayMesh _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("ArrayMesh");
		if(constructor is null) return typeof(this).init;
		return cast(ArrayMesh)(constructor());
	}
	enum int ARRAY_WEIGHTS_SIZE = 4;
	enum int ARRAY_FORMAT_NORMAL = 2;
	enum int ARRAY_FORMAT_WEIGHTS = 128;
	enum int ARRAY_FORMAT_TEX_UV2 = 32;
	enum int ARRAY_TANGENT = 2;
	enum int ARRAY_FORMAT_TANGENT = 4;
	enum int ARRAY_TEX_UV2 = 5;
	enum int ARRAY_FORMAT_INDEX = 256;
	enum int ARRAY_FORMAT_COLOR = 8;
	enum int ARRAY_FORMAT_BONES = 64;
	enum int ARRAY_WEIGHTS = 7;
	enum int ARRAY_INDEX = 8;
	enum int ARRAY_FORMAT_VERTEX = 1;
	enum int ARRAY_COLOR = 3;
	enum int ARRAY_TEX_UV = 4;
	enum int ARRAY_NORMAL = 1;
	enum int ARRAY_BONES = 6;
	enum int ARRAY_VERTEX = 0;
	enum int NO_INDEX_ARRAY = -1;
	enum int ARRAY_FORMAT_TEX_UV = 16;
	void add_blend_shape(in String name)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("ArrayMesh", "add_blend_shape");
		const(void*)[1] _GODOT_args = [cast(void*)(&name), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	int get_blend_shape_count() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("ArrayMesh", "get_blend_shape_count");
		int _GODOT_ret = int.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	String get_blend_shape_name(in int index) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("ArrayMesh", "get_blend_shape_name");
		String _GODOT_ret = String.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&index), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void clear_blend_shapes()
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("ArrayMesh", "clear_blend_shapes");
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null);
	}
	void set_blend_shape_mode(in int mode)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("ArrayMesh", "set_blend_shape_mode");
		const(void*)[1] _GODOT_args = [cast(void*)(&mode), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	int get_blend_shape_mode() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("ArrayMesh", "get_blend_shape_mode");
		int _GODOT_ret = int.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void add_surface_from_arrays(in int primitive, in Array arrays, in Array blend_shapes = Array.empty_array, in int compress_flags = 97792)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("ArrayMesh", "add_surface_from_arrays");
		const(void*)[4] _GODOT_args = [cast(void*)(&primitive), cast(void*)(&arrays), cast(void*)(&blend_shapes), cast(void*)(&compress_flags), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	int get_surface_count() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("ArrayMesh", "get_surface_count");
		int _GODOT_ret = int.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void surface_remove(in int surf_idx)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("ArrayMesh", "surface_remove");
		const(void*)[1] _GODOT_args = [cast(void*)(&surf_idx), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	int surface_get_array_len(in int surf_idx) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("ArrayMesh", "surface_get_array_len");
		int _GODOT_ret = int.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&surf_idx), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	int surface_get_array_index_len(in int surf_idx) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("ArrayMesh", "surface_get_array_index_len");
		int _GODOT_ret = int.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&surf_idx), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	int surface_get_format(in int surf_idx) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("ArrayMesh", "surface_get_format");
		int _GODOT_ret = int.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&surf_idx), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	int surface_get_primitive_type(in int surf_idx) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("ArrayMesh", "surface_get_primitive_type");
		int _GODOT_ret = int.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&surf_idx), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void surface_set_material(in int surf_idx, in Material material)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("ArrayMesh", "surface_set_material");
		const(void*)[2] _GODOT_args = [cast(void*)(&surf_idx), cast(void*)(material), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	Material surface_get_material(in int surf_idx) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("ArrayMesh", "surface_get_material");
		Material _GODOT_ret = Material.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&surf_idx), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void surface_set_name(in int surf_idx, in String name)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("ArrayMesh", "surface_set_name");
		const(void*)[2] _GODOT_args = [cast(void*)(&surf_idx), cast(void*)(&name), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	String surface_get_name(in int surf_idx) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("ArrayMesh", "surface_get_name");
		String _GODOT_ret = String.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&surf_idx), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void center_geometry()
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("ArrayMesh", "center_geometry");
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null);
	}
	void regen_normalmaps()
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("ArrayMesh", "regen_normalmaps");
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null);
	}
	void set_custom_aabb(in Rect3 aabb)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("ArrayMesh", "set_custom_aabb");
		const(void*)[1] _GODOT_args = [cast(void*)(&aabb), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	Rect3 get_custom_aabb() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("ArrayMesh", "get_custom_aabb");
		Rect3 _GODOT_ret = Rect3.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
}
