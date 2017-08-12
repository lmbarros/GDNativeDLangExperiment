module godot.immediategeometry;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.object;
import godot.classdb;
import godot.geometryinstance;
import godot.texture;
@GodotBaseClass struct ImmediateGeometry
{
	static immutable string _GODOT_internal_name = "ImmediateGeometry";
public:
	union { godot_object _godot_object; GeometryInstance base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	package(godot) void* opCast(T : void*)() const { return cast(void*)_godot_object.ptr; }
	godot_object opCast(T : godot_object)() const { return cast(godot_object)_godot_object; }
	bool opEquals(in ImmediateGeometry other) const { return _godot_object.ptr is other._godot_object.ptr; }
	ImmediateGeometry opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	bool opCast(T : bool)() const { return _godot_object.ptr !is null; }
	inout(T) opCast(T)() inout if(isGodotBaseClass!T)
	{
		static assert(staticIndexOf!(ImmediateGeometry, T.BaseClasses) != -1, "Godot class "~T.stringof~" does not inherit ImmediateGeometry");
		if(_godot_object.ptr is null) return T.init;
		String c = String(T._GODOT_internal_name);
		if(is_class(c)) return inout(T)(_godot_object);
		return T.init;
	}
	inout(T) opCast(T)() inout if(extendsGodotBaseClass!T)
	{
		static assert(is(typeof(T.owner) : ImmediateGeometry) || staticIndexOf!(ImmediateGeometry, typeof(T.owner).BaseClasses) != -1, "D class "~T.stringof~" does not extend ImmediateGeometry");
		if(_godot_object.ptr is null) return null;
		if(has_method(String(`_GDNATIVE_D_typeid`)))
		{
			Object o = cast(Object)godot_nativescript_get_userdata(opCast!godot_object);
			return cast(inout(T))o;
		}
		return null;
	}
	static ImmediateGeometry _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("ImmediateGeometry");
		if(constructor is null) return typeof(this).init;
		return cast(ImmediateGeometry)(constructor());
	}
	void begin(in int primitive, in Texture texture = Texture.init)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("ImmediateGeometry", "begin");
		const(void*)[2] _GODOT_args = [cast(void*)(&primitive), cast(void*)(texture), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void set_normal(in Vector3 normal)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("ImmediateGeometry", "set_normal");
		const(void*)[1] _GODOT_args = [cast(void*)(&normal), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void set_tangent(in Plane tangent)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("ImmediateGeometry", "set_tangent");
		const(void*)[1] _GODOT_args = [cast(void*)(&tangent), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void set_color(in Color color)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("ImmediateGeometry", "set_color");
		const(void*)[1] _GODOT_args = [cast(void*)(&color), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void set_uv(in Vector2 uv)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("ImmediateGeometry", "set_uv");
		const(void*)[1] _GODOT_args = [cast(void*)(&uv), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void set_uv2(in Vector2 uv)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("ImmediateGeometry", "set_uv2");
		const(void*)[1] _GODOT_args = [cast(void*)(&uv), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void add_vertex(in Vector3 pos)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("ImmediateGeometry", "add_vertex");
		const(void*)[1] _GODOT_args = [cast(void*)(&pos), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void add_sphere(in int lats, in int lons, in float radius, in bool add_uv = true)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("ImmediateGeometry", "add_sphere");
		const(void*)[4] _GODOT_args = [cast(void*)(&lats), cast(void*)(&lons), cast(void*)(&radius), cast(void*)(&add_uv), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void end()
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("ImmediateGeometry", "end");
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null);
	}
	void clear()
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("ImmediateGeometry", "clear");
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null);
	}
}
