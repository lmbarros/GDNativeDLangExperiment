module godot.navigation2d;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.object;
import godot.classdb;
import godot.node2d;
import godot.navigationpolygon;
@GodotBaseClass struct Navigation2D
{
	static immutable string _GODOT_internal_name = "Navigation2D";
public:
	union { godot_object _godot_object; Node2D base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	package(godot) void* opCast(T : void*)() const { return cast(void*)_godot_object.ptr; }
	godot_object opCast(T : godot_object)() const { return cast(godot_object)_godot_object; }
	bool opEquals(in Navigation2D other) const { return _godot_object.ptr is other._godot_object.ptr; }
	Navigation2D opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	bool opCast(T : bool)() const { return _godot_object.ptr !is null; }
	inout(T) opCast(T)() inout if(isGodotBaseClass!T)
	{
		static assert(staticIndexOf!(Navigation2D, T.BaseClasses) != -1, "Godot class "~T.stringof~" does not inherit Navigation2D");
		if(_godot_object.ptr is null) return T.init;
		String c = String(T._GODOT_internal_name);
		if(is_class(c)) return inout(T)(_godot_object);
		return T.init;
	}
	inout(T) opCast(T)() inout if(extendsGodotBaseClass!T)
	{
		static assert(is(typeof(T.owner) : Navigation2D) || staticIndexOf!(Navigation2D, typeof(T.owner).BaseClasses) != -1, "D class "~T.stringof~" does not extend Navigation2D");
		if(_godot_object.ptr is null) return null;
		if(has_method(String(`_GDNATIVE_D_typeid`)))
		{
			Object o = cast(Object)godot_nativescript_get_userdata(opCast!godot_object);
			return cast(inout(T))o;
		}
		return null;
	}
	static Navigation2D _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("Navigation2D");
		if(constructor is null) return typeof(this).init;
		return cast(Navigation2D)(constructor());
	}
	int navpoly_create(in NavigationPolygon mesh, in Transform2D xform, in GodotObject owner = GodotObject.init)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Navigation2D", "navpoly_create");
		int _GODOT_ret = int.init;
		const(void*)[3] _GODOT_args = [cast(void*)(mesh), cast(void*)(&xform), cast(void*)(owner), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void navpoly_set_transform(in int id, in Transform2D xform)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Navigation2D", "navpoly_set_transform");
		const(void*)[2] _GODOT_args = [cast(void*)(&id), cast(void*)(&xform), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void navpoly_remove(in int id)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Navigation2D", "navpoly_remove");
		const(void*)[1] _GODOT_args = [cast(void*)(&id), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	PoolVector2Array get_simple_path(in Vector2 start, in Vector2 end, in bool optimize = true)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Navigation2D", "get_simple_path");
		PoolVector2Array _GODOT_ret = PoolVector2Array.empty;
		const(void*)[3] _GODOT_args = [cast(void*)(&start), cast(void*)(&end), cast(void*)(&optimize), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	Vector2 get_closest_point(in Vector2 to_point)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Navigation2D", "get_closest_point");
		Vector2 _GODOT_ret = Vector2.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&to_point), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	GodotObject get_closest_point_owner(in Vector2 to_point)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Navigation2D", "get_closest_point_owner");
		GodotObject _GODOT_ret = GodotObject.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&to_point), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
}
