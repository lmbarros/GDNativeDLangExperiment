module godot.editorspatialgizmo;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.object;
import godot.classdb;
import godot.spatialgizmo;
import godot.camera;
import godot.material;
import godot.mesh;
import godot.trianglemesh;
import godot.spatial;
@GodotBaseClass struct EditorSpatialGizmo
{
	static immutable string _GODOT_internal_name = "EditorSpatialGizmo";
public:
	union { godot_object _godot_object; SpatialGizmo base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	package(godot) void* opCast(T : void*)() const { return cast(void*)_godot_object.ptr; }
	godot_object opCast(T : godot_object)() const { return cast(godot_object)_godot_object; }
	bool opEquals(in EditorSpatialGizmo other) const { return _godot_object.ptr is other._godot_object.ptr; }
	EditorSpatialGizmo opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	bool opCast(T : bool)() const { return _godot_object.ptr !is null; }
	inout(T) opCast(T)() inout if(isGodotBaseClass!T)
	{
		static assert(staticIndexOf!(EditorSpatialGizmo, T.BaseClasses) != -1, "Godot class "~T.stringof~" does not inherit EditorSpatialGizmo");
		if(_godot_object.ptr is null) return T.init;
		String c = String(T._GODOT_internal_name);
		if(is_class(c)) return inout(T)(_godot_object);
		return T.init;
	}
	inout(T) opCast(T)() inout if(extendsGodotBaseClass!T)
	{
		static assert(is(typeof(T.owner) : EditorSpatialGizmo) || staticIndexOf!(EditorSpatialGizmo, typeof(T.owner).BaseClasses) != -1, "D class "~T.stringof~" does not extend EditorSpatialGizmo");
		if(_godot_object.ptr is null) return null;
		if(has_method(String(`_GDNATIVE_D_typeid`)))
		{
			Object o = cast(Object)godot_nativescript_get_userdata(opCast!godot_object);
			return cast(inout(T))o;
		}
		return null;
	}
	static EditorSpatialGizmo _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("EditorSpatialGizmo");
		if(constructor is null) return typeof(this).init;
		return cast(EditorSpatialGizmo)(constructor());
	}
	void redraw()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("redraw");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	String get_handle_name(in int index)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(index);
		String _GODOT_method_name = String("get_handle_name");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(String);
	}
	Variant get_handle_value(in int index)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(index);
		String _GODOT_method_name = String("get_handle_value");
		return this.callv(_GODOT_method_name, _GODOT_args);
	}
	void set_handle(in int index, in Camera camera, in Vector2 point)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(index);
		_GODOT_args.append(camera);
		_GODOT_args.append(point);
		String _GODOT_method_name = String("set_handle");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	void commit_handle(in int index, in Variant restore, in bool cancel)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(index);
		_GODOT_args.append(restore);
		_GODOT_args.append(cancel);
		String _GODOT_method_name = String("commit_handle");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	void add_lines(in PoolVector3Array lines, in Material material, in bool billboard = false)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("EditorSpatialGizmo", "add_lines");
		const(void*)[3] _GODOT_args = [cast(void*)(&lines), cast(void*)(material), cast(void*)(&billboard), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void add_mesh(in Mesh mesh, in bool billboard = false, in RID skeleton = RID.init)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("EditorSpatialGizmo", "add_mesh");
		const(void*)[3] _GODOT_args = [cast(void*)(mesh), cast(void*)(&billboard), cast(void*)(&skeleton), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void add_collision_segments(in PoolVector3Array segments)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("EditorSpatialGizmo", "add_collision_segments");
		const(void*)[1] _GODOT_args = [cast(void*)(&segments), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void add_collision_triangles(in TriangleMesh triangles)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("EditorSpatialGizmo", "add_collision_triangles");
		const(void*)[1] _GODOT_args = [cast(void*)(triangles), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void add_unscaled_billboard(in Material material, in float default_scale = 1)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("EditorSpatialGizmo", "add_unscaled_billboard");
		const(void*)[2] _GODOT_args = [cast(void*)(material), cast(void*)(&default_scale), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void add_handles(in PoolVector3Array handles, in bool billboard = false, in bool secondary = false)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("EditorSpatialGizmo", "add_handles");
		const(void*)[3] _GODOT_args = [cast(void*)(&handles), cast(void*)(&billboard), cast(void*)(&secondary), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void set_spatial_node(in Spatial node)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("EditorSpatialGizmo", "set_spatial_node");
		const(void*)[1] _GODOT_args = [cast(void*)(node), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void clear()
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("EditorSpatialGizmo", "clear");
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null);
	}
}
