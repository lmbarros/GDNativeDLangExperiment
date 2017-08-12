module godot.convexpolygonshape2d;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.object;
import godot.classdb;
import godot.shape2d;
@GodotBaseClass struct ConvexPolygonShape2D
{
	static immutable string _GODOT_internal_name = "ConvexPolygonShape2D";
public:
	union { godot_object _godot_object; Shape2D base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	package(godot) void* opCast(T : void*)() const { return cast(void*)_godot_object.ptr; }
	godot_object opCast(T : godot_object)() const { return cast(godot_object)_godot_object; }
	bool opEquals(in ConvexPolygonShape2D other) const { return _godot_object.ptr is other._godot_object.ptr; }
	ConvexPolygonShape2D opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	bool opCast(T : bool)() const { return _godot_object.ptr !is null; }
	inout(T) opCast(T)() inout if(isGodotBaseClass!T)
	{
		static assert(staticIndexOf!(ConvexPolygonShape2D, T.BaseClasses) != -1, "Godot class "~T.stringof~" does not inherit ConvexPolygonShape2D");
		if(_godot_object.ptr is null) return T.init;
		String c = String(T._GODOT_internal_name);
		if(is_class(c)) return inout(T)(_godot_object);
		return T.init;
	}
	inout(T) opCast(T)() inout if(extendsGodotBaseClass!T)
	{
		static assert(is(typeof(T.owner) : ConvexPolygonShape2D) || staticIndexOf!(ConvexPolygonShape2D, typeof(T.owner).BaseClasses) != -1, "D class "~T.stringof~" does not extend ConvexPolygonShape2D");
		if(_godot_object.ptr is null) return null;
		if(has_method(String(`_GDNATIVE_D_typeid`)))
		{
			Object o = cast(Object)godot_nativescript_get_userdata(opCast!godot_object);
			return cast(inout(T))o;
		}
		return null;
	}
	static ConvexPolygonShape2D _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("ConvexPolygonShape2D");
		if(constructor is null) return typeof(this).init;
		return cast(ConvexPolygonShape2D)(constructor());
	}
	void set_point_cloud(in PoolVector2Array point_cloud)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("ConvexPolygonShape2D", "set_point_cloud");
		const(void*)[1] _GODOT_args = [cast(void*)(&point_cloud), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void set_points(in PoolVector2Array points)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("ConvexPolygonShape2D", "set_points");
		const(void*)[1] _GODOT_args = [cast(void*)(&points), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	PoolVector2Array get_points() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("ConvexPolygonShape2D", "get_points");
		PoolVector2Array _GODOT_ret = PoolVector2Array.empty;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
}
