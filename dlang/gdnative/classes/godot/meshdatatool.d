module godot.meshdatatool;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.object;
import godot.classdb;
import godot.reference;
import godot.arraymesh;
import godot.material;
@GodotBaseClass struct MeshDataTool
{
	static immutable string _GODOT_internal_name = "MeshDataTool";
public:
	union { godot_object _godot_object; Reference base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	package(godot) void* opCast(T : void*)() const { return cast(void*)_godot_object.ptr; }
	godot_object opCast(T : godot_object)() const { return cast(godot_object)_godot_object; }
	bool opEquals(in MeshDataTool other) const { return _godot_object.ptr is other._godot_object.ptr; }
	MeshDataTool opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	bool opCast(T : bool)() const { return _godot_object.ptr !is null; }
	inout(T) opCast(T)() inout if(isGodotBaseClass!T)
	{
		static assert(staticIndexOf!(MeshDataTool, T.BaseClasses) != -1, "Godot class "~T.stringof~" does not inherit MeshDataTool");
		if(_godot_object.ptr is null) return T.init;
		String c = String(T._GODOT_internal_name);
		if(is_class(c)) return inout(T)(_godot_object);
		return T.init;
	}
	inout(T) opCast(T)() inout if(extendsGodotBaseClass!T)
	{
		static assert(is(typeof(T.owner) : MeshDataTool) || staticIndexOf!(MeshDataTool, typeof(T.owner).BaseClasses) != -1, "D class "~T.stringof~" does not extend MeshDataTool");
		if(_godot_object.ptr is null) return null;
		if(has_method(String(`_GDNATIVE_D_typeid`)))
		{
			Object o = cast(Object)godot_nativescript_get_userdata(opCast!godot_object);
			return cast(inout(T))o;
		}
		return null;
	}
	static MeshDataTool _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("MeshDataTool");
		if(constructor is null) return typeof(this).init;
		return cast(MeshDataTool)(constructor());
	}
	void clear()
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("MeshDataTool", "clear");
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null);
	}
	int create_from_surface(in ArrayMesh mesh, in int surface)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("MeshDataTool", "create_from_surface");
		int _GODOT_ret = int.init;
		const(void*)[2] _GODOT_args = [cast(void*)(mesh), cast(void*)(&surface), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	int commit_to_surface(in ArrayMesh mesh)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("MeshDataTool", "commit_to_surface");
		int _GODOT_ret = int.init;
		const(void*)[1] _GODOT_args = [cast(void*)(mesh), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	int get_format() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("MeshDataTool", "get_format");
		int _GODOT_ret = int.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	int get_vertex_count() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("MeshDataTool", "get_vertex_count");
		int _GODOT_ret = int.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	int get_edge_count() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("MeshDataTool", "get_edge_count");
		int _GODOT_ret = int.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	int get_face_count() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("MeshDataTool", "get_face_count");
		int _GODOT_ret = int.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_vertex(in int idx, in Vector3 vertex)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("MeshDataTool", "set_vertex");
		const(void*)[2] _GODOT_args = [cast(void*)(&idx), cast(void*)(&vertex), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	Vector3 get_vertex(in int idx) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("MeshDataTool", "get_vertex");
		Vector3 _GODOT_ret = Vector3.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&idx), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_vertex_normal(in int idx, in Vector3 normal)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("MeshDataTool", "set_vertex_normal");
		const(void*)[2] _GODOT_args = [cast(void*)(&idx), cast(void*)(&normal), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	Vector3 get_vertex_normal(in int idx) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("MeshDataTool", "get_vertex_normal");
		Vector3 _GODOT_ret = Vector3.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&idx), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_vertex_tangent(in int idx, in Plane tangent)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("MeshDataTool", "set_vertex_tangent");
		const(void*)[2] _GODOT_args = [cast(void*)(&idx), cast(void*)(&tangent), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	Plane get_vertex_tangent(in int idx) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("MeshDataTool", "get_vertex_tangent");
		Plane _GODOT_ret = Plane.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&idx), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_vertex_uv(in int idx, in Vector2 uv)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("MeshDataTool", "set_vertex_uv");
		const(void*)[2] _GODOT_args = [cast(void*)(&idx), cast(void*)(&uv), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	Vector2 get_vertex_uv(in int idx) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("MeshDataTool", "get_vertex_uv");
		Vector2 _GODOT_ret = Vector2.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&idx), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_vertex_uv2(in int idx, in Vector2 uv2)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("MeshDataTool", "set_vertex_uv2");
		const(void*)[2] _GODOT_args = [cast(void*)(&idx), cast(void*)(&uv2), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	Vector2 get_vertex_uv2(in int idx) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("MeshDataTool", "get_vertex_uv2");
		Vector2 _GODOT_ret = Vector2.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&idx), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_vertex_color(in int idx, in Color color)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("MeshDataTool", "set_vertex_color");
		const(void*)[2] _GODOT_args = [cast(void*)(&idx), cast(void*)(&color), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	Color get_vertex_color(in int idx) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("MeshDataTool", "get_vertex_color");
		Color _GODOT_ret = Color.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&idx), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_vertex_bones(in int idx, in PoolIntArray bones)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("MeshDataTool", "set_vertex_bones");
		const(void*)[2] _GODOT_args = [cast(void*)(&idx), cast(void*)(&bones), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	PoolIntArray get_vertex_bones(in int idx) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("MeshDataTool", "get_vertex_bones");
		PoolIntArray _GODOT_ret = PoolIntArray.empty;
		const(void*)[1] _GODOT_args = [cast(void*)(&idx), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_vertex_weights(in int idx, in PoolRealArray weights)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("MeshDataTool", "set_vertex_weights");
		const(void*)[2] _GODOT_args = [cast(void*)(&idx), cast(void*)(&weights), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	PoolRealArray get_vertex_weights(in int idx) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("MeshDataTool", "get_vertex_weights");
		PoolRealArray _GODOT_ret = PoolRealArray.empty;
		const(void*)[1] _GODOT_args = [cast(void*)(&idx), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_vertex_meta(in int idx, in Variant meta)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("MeshDataTool", "set_vertex_meta");
		const(void*)[2] _GODOT_args = [cast(void*)(&idx), cast(void*)(&meta), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	Variant get_vertex_meta(in int idx) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("MeshDataTool", "get_vertex_meta");
		Variant _GODOT_ret = Variant.nil;
		const(void*)[1] _GODOT_args = [cast(void*)(&idx), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	PoolIntArray get_vertex_edges(in int idx) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("MeshDataTool", "get_vertex_edges");
		PoolIntArray _GODOT_ret = PoolIntArray.empty;
		const(void*)[1] _GODOT_args = [cast(void*)(&idx), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	PoolIntArray get_vertex_faces(in int idx) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("MeshDataTool", "get_vertex_faces");
		PoolIntArray _GODOT_ret = PoolIntArray.empty;
		const(void*)[1] _GODOT_args = [cast(void*)(&idx), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	int get_edge_vertex(in int idx, in int vertex) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("MeshDataTool", "get_edge_vertex");
		int _GODOT_ret = int.init;
		const(void*)[2] _GODOT_args = [cast(void*)(&idx), cast(void*)(&vertex), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	PoolIntArray get_edge_faces(in int idx) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("MeshDataTool", "get_edge_faces");
		PoolIntArray _GODOT_ret = PoolIntArray.empty;
		const(void*)[1] _GODOT_args = [cast(void*)(&idx), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_edge_meta(in int idx, in Variant meta)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("MeshDataTool", "set_edge_meta");
		const(void*)[2] _GODOT_args = [cast(void*)(&idx), cast(void*)(&meta), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	Variant get_edge_meta(in int idx) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("MeshDataTool", "get_edge_meta");
		Variant _GODOT_ret = Variant.nil;
		const(void*)[1] _GODOT_args = [cast(void*)(&idx), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	int get_face_vertex(in int idx, in int vertex) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("MeshDataTool", "get_face_vertex");
		int _GODOT_ret = int.init;
		const(void*)[2] _GODOT_args = [cast(void*)(&idx), cast(void*)(&vertex), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	int get_face_edge(in int idx, in int edge) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("MeshDataTool", "get_face_edge");
		int _GODOT_ret = int.init;
		const(void*)[2] _GODOT_args = [cast(void*)(&idx), cast(void*)(&edge), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_face_meta(in int idx, in Variant meta)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("MeshDataTool", "set_face_meta");
		const(void*)[2] _GODOT_args = [cast(void*)(&idx), cast(void*)(&meta), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	Variant get_face_meta(in int idx) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("MeshDataTool", "get_face_meta");
		Variant _GODOT_ret = Variant.nil;
		const(void*)[1] _GODOT_args = [cast(void*)(&idx), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	Vector3 get_face_normal(in int idx) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("MeshDataTool", "get_face_normal");
		Vector3 _GODOT_ret = Vector3.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&idx), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_material(in Material material)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("MeshDataTool", "set_material");
		const(void*)[1] _GODOT_args = [cast(void*)(material), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	Material get_material() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("MeshDataTool", "get_material");
		Material _GODOT_ret = Material.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
}
