module godot.meshinstance;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.object;
import godot.classdb;
import godot.geometryinstance;
import godot.mesh;
import godot.material;
@GodotBaseClass struct MeshInstance
{
	static immutable string _GODOT_internal_name = "MeshInstance";
public:
	union { godot_object _godot_object; GeometryInstance base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	package(godot) void* opCast(T : void*)() const { return cast(void*)_godot_object.ptr; }
	godot_object opCast(T : godot_object)() const { return cast(godot_object)_godot_object; }
	bool opEquals(in MeshInstance other) const { return _godot_object.ptr is other._godot_object.ptr; }
	MeshInstance opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	bool opCast(T : bool)() const { return _godot_object.ptr !is null; }
	inout(T) opCast(T)() inout if(isGodotBaseClass!T)
	{
		static assert(staticIndexOf!(MeshInstance, T.BaseClasses) != -1, "Godot class "~T.stringof~" does not inherit MeshInstance");
		if(_godot_object.ptr is null) return T.init;
		String c = String(T._GODOT_internal_name);
		if(is_class(c)) return inout(T)(_godot_object);
		return T.init;
	}
	inout(T) opCast(T)() inout if(extendsGodotBaseClass!T)
	{
		static assert(is(typeof(T.owner) : MeshInstance) || staticIndexOf!(MeshInstance, typeof(T.owner).BaseClasses) != -1, "D class "~T.stringof~" does not extend MeshInstance");
		if(_godot_object.ptr is null) return null;
		if(has_method(String(`_GDNATIVE_D_typeid`)))
		{
			Object o = cast(Object)godot_nativescript_get_userdata(opCast!godot_object);
			return cast(inout(T))o;
		}
		return null;
	}
	static MeshInstance _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("MeshInstance");
		if(constructor is null) return typeof(this).init;
		return cast(MeshInstance)(constructor());
	}
	void set_mesh(in Mesh mesh)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("MeshInstance", "set_mesh");
		const(void*)[1] _GODOT_args = [cast(void*)(mesh), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	Mesh get_mesh() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("MeshInstance", "get_mesh");
		Mesh _GODOT_ret = Mesh.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_skeleton_path(in NodePath skeleton_path)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("MeshInstance", "set_skeleton_path");
		const(void*)[1] _GODOT_args = [cast(void*)(&skeleton_path), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	NodePath get_skeleton_path()
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("MeshInstance", "get_skeleton_path");
		NodePath _GODOT_ret = NodePath.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_surface_material(in int surface, in Material material)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("MeshInstance", "set_surface_material");
		const(void*)[2] _GODOT_args = [cast(void*)(&surface), cast(void*)(material), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	Material get_surface_material(in int surface) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("MeshInstance", "get_surface_material");
		Material _GODOT_ret = Material.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&surface), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void create_trimesh_collision()
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("MeshInstance", "create_trimesh_collision");
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null);
	}
	void create_convex_collision()
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("MeshInstance", "create_convex_collision");
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null);
	}
	void _mesh_changed()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_mesh_changed");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	void create_debug_tangents()
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("MeshInstance", "create_debug_tangents");
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null);
	}
}
