module godot.surfacetool;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.object;
import godot.classdb;
import godot.reference;
import godot.material;
import godot.mesh;
@GodotBaseClass struct SurfaceTool
{
	static immutable string _GODOT_internal_name = "SurfaceTool";
public:
	union { godot_object _godot_object; Reference base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	package(godot) void* opCast(T : void*)() const { return cast(void*)_godot_object.ptr; }
	godot_object opCast(T : godot_object)() const { return cast(godot_object)_godot_object; }
	bool opEquals(in SurfaceTool other) const { return _godot_object.ptr is other._godot_object.ptr; }
	SurfaceTool opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	bool opCast(T : bool)() const { return _godot_object.ptr !is null; }
	inout(T) opCast(T)() inout if(isGodotBaseClass!T)
	{
		static assert(staticIndexOf!(SurfaceTool, T.BaseClasses) != -1, "Godot class "~T.stringof~" does not inherit SurfaceTool");
		if(_godot_object.ptr is null) return T.init;
		String c = String(T._GODOT_internal_name);
		if(is_class(c)) return inout(T)(_godot_object);
		return T.init;
	}
	inout(T) opCast(T)() inout if(extendsGodotBaseClass!T)
	{
		static assert(is(typeof(T.owner) : SurfaceTool) || staticIndexOf!(SurfaceTool, typeof(T.owner).BaseClasses) != -1, "D class "~T.stringof~" does not extend SurfaceTool");
		if(_godot_object.ptr is null) return null;
		if(has_method(String(`_GDNATIVE_D_typeid`)))
		{
			Object o = cast(Object)godot_nativescript_get_userdata(opCast!godot_object);
			return cast(inout(T))o;
		}
		return null;
	}
	static SurfaceTool _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("SurfaceTool");
		if(constructor is null) return typeof(this).init;
		return cast(SurfaceTool)(constructor());
	}
	void begin(in int primitive)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("SurfaceTool", "begin");
		const(void*)[1] _GODOT_args = [cast(void*)(&primitive), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void add_vertex(in Vector3 vertex)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("SurfaceTool", "add_vertex");
		const(void*)[1] _GODOT_args = [cast(void*)(&vertex), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void add_color(in Color color)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("SurfaceTool", "add_color");
		const(void*)[1] _GODOT_args = [cast(void*)(&color), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void add_normal(in Vector3 normal)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("SurfaceTool", "add_normal");
		const(void*)[1] _GODOT_args = [cast(void*)(&normal), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void add_tangent(in Plane tangent)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("SurfaceTool", "add_tangent");
		const(void*)[1] _GODOT_args = [cast(void*)(&tangent), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void add_uv(in Vector2 uv)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("SurfaceTool", "add_uv");
		const(void*)[1] _GODOT_args = [cast(void*)(&uv), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void add_uv2(in Vector2 uv2)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("SurfaceTool", "add_uv2");
		const(void*)[1] _GODOT_args = [cast(void*)(&uv2), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void add_bones(in PoolIntArray bones)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("SurfaceTool", "add_bones");
		const(void*)[1] _GODOT_args = [cast(void*)(&bones), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void add_weights(in PoolRealArray weights)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("SurfaceTool", "add_weights");
		const(void*)[1] _GODOT_args = [cast(void*)(&weights), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void add_smooth_group(in bool smooth)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("SurfaceTool", "add_smooth_group");
		const(void*)[1] _GODOT_args = [cast(void*)(&smooth), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void add_triangle_fan(in PoolVector3Array vertexes, in PoolVector2Array uvs = PoolVector2Array.empty, in PoolColorArray colors = PoolColorArray.empty, in PoolVector2Array uv2s = PoolVector2Array.empty, in PoolVector3Array normals = PoolVector3Array.empty, in Array tangents = Array.empty_array)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("SurfaceTool", "add_triangle_fan");
		const(void*)[6] _GODOT_args = [cast(void*)(&vertexes), cast(void*)(&uvs), cast(void*)(&colors), cast(void*)(&uv2s), cast(void*)(&normals), cast(void*)(&tangents), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void add_index(in int index)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("SurfaceTool", "add_index");
		const(void*)[1] _GODOT_args = [cast(void*)(&index), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void index()
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("SurfaceTool", "index");
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null);
	}
	void deindex()
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("SurfaceTool", "deindex");
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null);
	}
	void generate_normals()
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("SurfaceTool", "generate_normals");
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null);
	}
	void generate_tangents()
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("SurfaceTool", "generate_tangents");
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null);
	}
	void add_to_format(in int flags)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("SurfaceTool", "add_to_format");
		const(void*)[1] _GODOT_args = [cast(void*)(&flags), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void set_material(in Material material)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("SurfaceTool", "set_material");
		const(void*)[1] _GODOT_args = [cast(void*)(material), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void clear()
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("SurfaceTool", "clear");
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null);
	}
	void create_from(in Mesh existing, in int surface)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("SurfaceTool", "create_from");
		const(void*)[2] _GODOT_args = [cast(void*)(existing), cast(void*)(&surface), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void append_from(in Mesh existing, in int surface, in Transform transform)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("SurfaceTool", "append_from");
		const(void*)[3] _GODOT_args = [cast(void*)(existing), cast(void*)(&surface), cast(void*)(&transform), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	Mesh commit(in Mesh existing = Mesh.init)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("SurfaceTool", "commit");
		Mesh _GODOT_ret = Mesh.init;
		const(void*)[1] _GODOT_args = [cast(void*)(existing), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
}
