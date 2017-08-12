module godot.planemesh;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.object;
import godot.classdb;
import godot.primitivemesh;
@GodotBaseClass struct PlaneMesh
{
	static immutable string _GODOT_internal_name = "PlaneMesh";
public:
	union { godot_object _godot_object; PrimitiveMesh base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	package(godot) void* opCast(T : void*)() const { return cast(void*)_godot_object.ptr; }
	godot_object opCast(T : godot_object)() const { return cast(godot_object)_godot_object; }
	bool opEquals(in PlaneMesh other) const { return _godot_object.ptr is other._godot_object.ptr; }
	PlaneMesh opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	bool opCast(T : bool)() const { return _godot_object.ptr !is null; }
	inout(T) opCast(T)() inout if(isGodotBaseClass!T)
	{
		static assert(staticIndexOf!(PlaneMesh, T.BaseClasses) != -1, "Godot class "~T.stringof~" does not inherit PlaneMesh");
		if(_godot_object.ptr is null) return T.init;
		String c = String(T._GODOT_internal_name);
		if(is_class(c)) return inout(T)(_godot_object);
		return T.init;
	}
	inout(T) opCast(T)() inout if(extendsGodotBaseClass!T)
	{
		static assert(is(typeof(T.owner) : PlaneMesh) || staticIndexOf!(PlaneMesh, typeof(T.owner).BaseClasses) != -1, "D class "~T.stringof~" does not extend PlaneMesh");
		if(_godot_object.ptr is null) return null;
		if(has_method(String(`_GDNATIVE_D_typeid`)))
		{
			Object o = cast(Object)godot_nativescript_get_userdata(opCast!godot_object);
			return cast(inout(T))o;
		}
		return null;
	}
	static PlaneMesh _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("PlaneMesh");
		if(constructor is null) return typeof(this).init;
		return cast(PlaneMesh)(constructor());
	}
	void set_size(in Vector2 size)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("PlaneMesh", "set_size");
		const(void*)[1] _GODOT_args = [cast(void*)(&size), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	Vector2 get_size() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("PlaneMesh", "get_size");
		Vector2 _GODOT_ret = Vector2.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_subdivide_width(in int subdivide)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("PlaneMesh", "set_subdivide_width");
		const(void*)[1] _GODOT_args = [cast(void*)(&subdivide), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	int get_subdivide_width() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("PlaneMesh", "get_subdivide_width");
		int _GODOT_ret = int.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_subdivide_depth(in int subdivide)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("PlaneMesh", "set_subdivide_depth");
		const(void*)[1] _GODOT_args = [cast(void*)(&subdivide), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	int get_subdivide_depth() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("PlaneMesh", "get_subdivide_depth");
		int _GODOT_ret = int.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
}
