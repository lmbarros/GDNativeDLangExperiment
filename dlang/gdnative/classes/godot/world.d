module godot.world;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.object;
import godot.classdb;
import godot.resource;
import godot.environment;
import godot.physicsdirectspacestate;
@GodotBaseClass struct World
{
	static immutable string _GODOT_internal_name = "World";
public:
	union { godot_object _godot_object; Resource base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	package(godot) void* opCast(T : void*)() const { return cast(void*)_godot_object.ptr; }
	godot_object opCast(T : godot_object)() const { return cast(godot_object)_godot_object; }
	bool opEquals(in World other) const { return _godot_object.ptr is other._godot_object.ptr; }
	World opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	bool opCast(T : bool)() const { return _godot_object.ptr !is null; }
	inout(T) opCast(T)() inout if(isGodotBaseClass!T)
	{
		static assert(staticIndexOf!(World, T.BaseClasses) != -1, "Godot class "~T.stringof~" does not inherit World");
		if(_godot_object.ptr is null) return T.init;
		String c = String(T._GODOT_internal_name);
		if(is_class(c)) return inout(T)(_godot_object);
		return T.init;
	}
	inout(T) opCast(T)() inout if(extendsGodotBaseClass!T)
	{
		static assert(is(typeof(T.owner) : World) || staticIndexOf!(World, typeof(T.owner).BaseClasses) != -1, "D class "~T.stringof~" does not extend World");
		if(_godot_object.ptr is null) return null;
		if(has_method(String(`_GDNATIVE_D_typeid`)))
		{
			Object o = cast(Object)godot_nativescript_get_userdata(opCast!godot_object);
			return cast(inout(T))o;
		}
		return null;
	}
	static World _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("World");
		if(constructor is null) return typeof(this).init;
		return cast(World)(constructor());
	}
	RID get_space() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("World", "get_space");
		RID _GODOT_ret = RID.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	RID get_scenario() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("World", "get_scenario");
		RID _GODOT_ret = RID.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_environment(in Environment env)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("World", "set_environment");
		const(void*)[1] _GODOT_args = [cast(void*)(env), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	Environment get_environment() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("World", "get_environment");
		Environment _GODOT_ret = Environment.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_fallback_environment(in Environment env)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("World", "set_fallback_environment");
		const(void*)[1] _GODOT_args = [cast(void*)(env), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	Environment get_fallback_environment() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("World", "get_fallback_environment");
		Environment _GODOT_ret = Environment.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	PhysicsDirectSpaceState get_direct_space_state()
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("World", "get_direct_space_state");
		PhysicsDirectSpaceState _GODOT_ret = PhysicsDirectSpaceState.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
}
