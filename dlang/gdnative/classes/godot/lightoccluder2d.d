module godot.lightoccluder2d;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.object;
import godot.classdb;
import godot.node2d;
import godot.occluderpolygon2d;
@GodotBaseClass struct LightOccluder2D
{
	static immutable string _GODOT_internal_name = "LightOccluder2D";
public:
	union { godot_object _godot_object; Node2D base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	package(godot) void* opCast(T : void*)() const { return cast(void*)_godot_object.ptr; }
	godot_object opCast(T : godot_object)() const { return cast(godot_object)_godot_object; }
	bool opEquals(in LightOccluder2D other) const { return _godot_object.ptr is other._godot_object.ptr; }
	LightOccluder2D opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	bool opCast(T : bool)() const { return _godot_object.ptr !is null; }
	inout(T) opCast(T)() inout if(isGodotBaseClass!T)
	{
		static assert(staticIndexOf!(LightOccluder2D, T.BaseClasses) != -1, "Godot class "~T.stringof~" does not inherit LightOccluder2D");
		if(_godot_object.ptr is null) return T.init;
		String c = String(T._GODOT_internal_name);
		if(is_class(c)) return inout(T)(_godot_object);
		return T.init;
	}
	inout(T) opCast(T)() inout if(extendsGodotBaseClass!T)
	{
		static assert(is(typeof(T.owner) : LightOccluder2D) || staticIndexOf!(LightOccluder2D, typeof(T.owner).BaseClasses) != -1, "D class "~T.stringof~" does not extend LightOccluder2D");
		if(_godot_object.ptr is null) return null;
		if(has_method(String(`_GDNATIVE_D_typeid`)))
		{
			Object o = cast(Object)godot_nativescript_get_userdata(opCast!godot_object);
			return cast(inout(T))o;
		}
		return null;
	}
	static LightOccluder2D _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("LightOccluder2D");
		if(constructor is null) return typeof(this).init;
		return cast(LightOccluder2D)(constructor());
	}
	void set_occluder_polygon(in OccluderPolygon2D polygon)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("LightOccluder2D", "set_occluder_polygon");
		const(void*)[1] _GODOT_args = [cast(void*)(polygon), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	OccluderPolygon2D get_occluder_polygon() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("LightOccluder2D", "get_occluder_polygon");
		OccluderPolygon2D _GODOT_ret = OccluderPolygon2D.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_occluder_light_mask(in int mask)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("LightOccluder2D", "set_occluder_light_mask");
		const(void*)[1] _GODOT_args = [cast(void*)(&mask), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	int get_occluder_light_mask() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("LightOccluder2D", "get_occluder_light_mask");
		int _GODOT_ret = int.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void _poly_changed()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_poly_changed");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
}
