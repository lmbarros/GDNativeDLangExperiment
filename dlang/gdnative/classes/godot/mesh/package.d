module godot.mesh;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.object;
import godot.resource;
import godot.shape;
import godot.arraymesh;
import godot.trianglemesh;
@GodotBaseClass struct Mesh
{
	static immutable string _GODOT_internal_name = "Mesh";
public:
	union { godot_object _godot_object; Resource base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	package(godot) void* opCast(T : void*)() const { return cast(void*)_godot_object.ptr; }
	godot_object opCast(T : godot_object)() const { return cast(godot_object)_godot_object; }
	bool opEquals(in Mesh other) const { return _godot_object.ptr is other._godot_object.ptr; }
	Mesh opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	bool opCast(T : bool)() const { return _godot_object.ptr !is null; }
	inout(T) opCast(T)() inout if(isGodotBaseClass!T)
	{
		static assert(staticIndexOf!(Mesh, T.BaseClasses) != -1, "Godot class "~T.stringof~" does not inherit Mesh");
		if(_godot_object.ptr is null) return T.init;
		String c = String(T._GODOT_internal_name);
		if(is_class(c)) return inout(T)(_godot_object);
		return T.init;
	}
	inout(T) opCast(T)() inout if(extendsGodotBaseClass!T)
	{
		static assert(is(typeof(T.owner) : Mesh) || staticIndexOf!(Mesh, typeof(T.owner).BaseClasses) != -1, "D class "~T.stringof~" does not extend Mesh");
		if(_godot_object.ptr is null) return null;
		if(has_method(String(`_GDNATIVE_D_typeid`)))
		{
			Object o = cast(Object)godot_nativescript_get_userdata(opCast!godot_object);
			return cast(inout(T))o;
		}
		return null;
	}
	static Mesh _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("Mesh");
		if(constructor is null) return typeof(this).init;
		return cast(Mesh)(constructor());
	}
	enum int PRIMITIVE_TRIANGLES = 4;
	enum int PRIMITIVE_TRIANGLE_STRIP = 5;
	enum int PRIMITIVE_LINES = 1;
	enum int PRIMITIVE_TRIANGLE_FAN = 6;
	enum int PRIMITIVE_LINE_LOOP = 3;
	enum int PRIMITIVE_LINE_STRIP = 2;
	enum int PRIMITIVE_POINTS = 0;
	Shape create_trimesh_shape() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Mesh", "create_trimesh_shape");
		Shape _GODOT_ret = Shape.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	Shape create_convex_shape() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Mesh", "create_convex_shape");
		Shape _GODOT_ret = Shape.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	ArrayMesh create_outline(in float margin) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Mesh", "create_outline");
		ArrayMesh _GODOT_ret = ArrayMesh.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&margin), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	PoolVector3Array get_faces() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Mesh", "get_faces");
		PoolVector3Array _GODOT_ret = PoolVector3Array.empty;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	TriangleMesh generate_triangle_mesh() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Mesh", "generate_triangle_mesh");
		TriangleMesh _GODOT_ret = TriangleMesh.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
}
