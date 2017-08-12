module godot.navigationpolygoninstance;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.object;
import godot.classdb;
import godot.node2d;
import godot.navigationpolygon;
@GodotBaseClass struct NavigationPolygonInstance
{
	static immutable string _GODOT_internal_name = "NavigationPolygonInstance";
public:
	union { godot_object _godot_object; Node2D base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	package(godot) void* opCast(T : void*)() const { return cast(void*)_godot_object.ptr; }
	godot_object opCast(T : godot_object)() const { return cast(godot_object)_godot_object; }
	bool opEquals(in NavigationPolygonInstance other) const { return _godot_object.ptr is other._godot_object.ptr; }
	NavigationPolygonInstance opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	bool opCast(T : bool)() const { return _godot_object.ptr !is null; }
	inout(T) opCast(T)() inout if(isGodotBaseClass!T)
	{
		static assert(staticIndexOf!(NavigationPolygonInstance, T.BaseClasses) != -1, "Godot class "~T.stringof~" does not inherit NavigationPolygonInstance");
		if(_godot_object.ptr is null) return T.init;
		String c = String(T._GODOT_internal_name);
		if(is_class(c)) return inout(T)(_godot_object);
		return T.init;
	}
	inout(T) opCast(T)() inout if(extendsGodotBaseClass!T)
	{
		static assert(is(typeof(T.owner) : NavigationPolygonInstance) || staticIndexOf!(NavigationPolygonInstance, typeof(T.owner).BaseClasses) != -1, "D class "~T.stringof~" does not extend NavigationPolygonInstance");
		if(_godot_object.ptr is null) return null;
		if(has_method(String(`_GDNATIVE_D_typeid`)))
		{
			Object o = cast(Object)godot_nativescript_get_userdata(opCast!godot_object);
			return cast(inout(T))o;
		}
		return null;
	}
	static NavigationPolygonInstance _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("NavigationPolygonInstance");
		if(constructor is null) return typeof(this).init;
		return cast(NavigationPolygonInstance)(constructor());
	}
	void set_navigation_polygon(in NavigationPolygon navpoly)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("NavigationPolygonInstance", "set_navigation_polygon");
		const(void*)[1] _GODOT_args = [cast(void*)(navpoly), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	NavigationPolygon get_navigation_polygon() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("NavigationPolygonInstance", "get_navigation_polygon");
		NavigationPolygon _GODOT_ret = NavigationPolygon.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_enabled(in bool enabled)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("NavigationPolygonInstance", "set_enabled");
		const(void*)[1] _GODOT_args = [cast(void*)(&enabled), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	bool is_enabled() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("NavigationPolygonInstance", "is_enabled");
		bool _GODOT_ret = bool.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void _navpoly_changed()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_navpoly_changed");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
}
