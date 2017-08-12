module godot.occluderpolygon2d;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.object;
import godot.classdb;
import godot.resource;
@GodotBaseClass struct OccluderPolygon2D
{
	static immutable string _GODOT_internal_name = "OccluderPolygon2D";
public:
	union { godot_object _godot_object; Resource base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	package(godot) void* opCast(T : void*)() const { return cast(void*)_godot_object.ptr; }
	godot_object opCast(T : godot_object)() const { return cast(godot_object)_godot_object; }
	bool opEquals(in OccluderPolygon2D other) const { return _godot_object.ptr is other._godot_object.ptr; }
	OccluderPolygon2D opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	bool opCast(T : bool)() const { return _godot_object.ptr !is null; }
	inout(T) opCast(T)() inout if(isGodotBaseClass!T)
	{
		static assert(staticIndexOf!(OccluderPolygon2D, T.BaseClasses) != -1, "Godot class "~T.stringof~" does not inherit OccluderPolygon2D");
		if(_godot_object.ptr is null) return T.init;
		String c = String(T._GODOT_internal_name);
		if(is_class(c)) return inout(T)(_godot_object);
		return T.init;
	}
	inout(T) opCast(T)() inout if(extendsGodotBaseClass!T)
	{
		static assert(is(typeof(T.owner) : OccluderPolygon2D) || staticIndexOf!(OccluderPolygon2D, typeof(T.owner).BaseClasses) != -1, "D class "~T.stringof~" does not extend OccluderPolygon2D");
		if(_godot_object.ptr is null) return null;
		if(has_method(String(`_GDNATIVE_D_typeid`)))
		{
			Object o = cast(Object)godot_nativescript_get_userdata(opCast!godot_object);
			return cast(inout(T))o;
		}
		return null;
	}
	static OccluderPolygon2D _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("OccluderPolygon2D");
		if(constructor is null) return typeof(this).init;
		return cast(OccluderPolygon2D)(constructor());
	}
	enum int CULL_COUNTER_CLOCKWISE = 2;
	enum int CULL_DISABLED = 0;
	enum int CULL_CLOCKWISE = 1;
	void set_closed(in bool closed)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("OccluderPolygon2D", "set_closed");
		const(void*)[1] _GODOT_args = [cast(void*)(&closed), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	bool is_closed() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("OccluderPolygon2D", "is_closed");
		bool _GODOT_ret = bool.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_cull_mode(in int cull_mode)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("OccluderPolygon2D", "set_cull_mode");
		const(void*)[1] _GODOT_args = [cast(void*)(&cull_mode), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	int get_cull_mode() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("OccluderPolygon2D", "get_cull_mode");
		int _GODOT_ret = int.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_polygon(in PoolVector2Array polygon)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("OccluderPolygon2D", "set_polygon");
		const(void*)[1] _GODOT_args = [cast(void*)(&polygon), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	PoolVector2Array get_polygon() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("OccluderPolygon2D", "get_polygon");
		PoolVector2Array _GODOT_ret = PoolVector2Array.empty;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
}
