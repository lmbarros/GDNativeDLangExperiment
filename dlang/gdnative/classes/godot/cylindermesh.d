module godot.cylindermesh;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.object;
import godot.classdb;
import godot.primitivemesh;
@GodotBaseClass struct CylinderMesh
{
	static immutable string _GODOT_internal_name = "CylinderMesh";
public:
	union { godot_object _godot_object; PrimitiveMesh base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	package(godot) void* opCast(T : void*)() const { return cast(void*)_godot_object.ptr; }
	godot_object opCast(T : godot_object)() const { return cast(godot_object)_godot_object; }
	bool opEquals(in CylinderMesh other) const { return _godot_object.ptr is other._godot_object.ptr; }
	CylinderMesh opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	bool opCast(T : bool)() const { return _godot_object.ptr !is null; }
	inout(T) opCast(T)() inout if(isGodotBaseClass!T)
	{
		static assert(staticIndexOf!(CylinderMesh, T.BaseClasses) != -1, "Godot class "~T.stringof~" does not inherit CylinderMesh");
		if(_godot_object.ptr is null) return T.init;
		String c = String(T._GODOT_internal_name);
		if(is_class(c)) return inout(T)(_godot_object);
		return T.init;
	}
	inout(T) opCast(T)() inout if(extendsGodotBaseClass!T)
	{
		static assert(is(typeof(T.owner) : CylinderMesh) || staticIndexOf!(CylinderMesh, typeof(T.owner).BaseClasses) != -1, "D class "~T.stringof~" does not extend CylinderMesh");
		if(_godot_object.ptr is null) return null;
		if(has_method(String(`_GDNATIVE_D_typeid`)))
		{
			Object o = cast(Object)godot_nativescript_get_userdata(opCast!godot_object);
			return cast(inout(T))o;
		}
		return null;
	}
	static CylinderMesh _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("CylinderMesh");
		if(constructor is null) return typeof(this).init;
		return cast(CylinderMesh)(constructor());
	}
	void set_top_radius(in float radius)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("CylinderMesh", "set_top_radius");
		const(void*)[1] _GODOT_args = [cast(void*)(&radius), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	float get_top_radius() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("CylinderMesh", "get_top_radius");
		float _GODOT_ret = float.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_bottom_radius(in float radius)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("CylinderMesh", "set_bottom_radius");
		const(void*)[1] _GODOT_args = [cast(void*)(&radius), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	float get_bottom_radius() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("CylinderMesh", "get_bottom_radius");
		float _GODOT_ret = float.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_height(in float height)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("CylinderMesh", "set_height");
		const(void*)[1] _GODOT_args = [cast(void*)(&height), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	float get_height() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("CylinderMesh", "get_height");
		float _GODOT_ret = float.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_radial_segments(in int segments)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("CylinderMesh", "set_radial_segments");
		const(void*)[1] _GODOT_args = [cast(void*)(&segments), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	int get_radial_segments() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("CylinderMesh", "get_radial_segments");
		int _GODOT_ret = int.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_rings(in int rings)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("CylinderMesh", "set_rings");
		const(void*)[1] _GODOT_args = [cast(void*)(&rings), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	int get_rings() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("CylinderMesh", "get_rings");
		int _GODOT_ret = int.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
}
