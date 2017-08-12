module godot.world2d;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.object;
import godot.classdb;
import godot.resource;
import godot.physics2ddirectspacestate;
@GodotBaseClass struct World2D
{
	static immutable string _GODOT_internal_name = "World2D";
public:
	union { godot_object _godot_object; Resource base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	package(godot) void* opCast(T : void*)() const { return cast(void*)_godot_object.ptr; }
	godot_object opCast(T : godot_object)() const { return cast(godot_object)_godot_object; }
	bool opEquals(in World2D other) const { return _godot_object.ptr is other._godot_object.ptr; }
	World2D opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	bool opCast(T : bool)() const { return _godot_object.ptr !is null; }
	inout(T) opCast(T)() inout if(isGodotBaseClass!T)
	{
		static assert(staticIndexOf!(World2D, T.BaseClasses) != -1, "Godot class "~T.stringof~" does not inherit World2D");
		if(_godot_object.ptr is null) return T.init;
		String c = String(T._GODOT_internal_name);
		if(is_class(c)) return inout(T)(_godot_object);
		return T.init;
	}
	inout(T) opCast(T)() inout if(extendsGodotBaseClass!T)
	{
		static assert(is(typeof(T.owner) : World2D) || staticIndexOf!(World2D, typeof(T.owner).BaseClasses) != -1, "D class "~T.stringof~" does not extend World2D");
		if(_godot_object.ptr is null) return null;
		if(has_method(String(`_GDNATIVE_D_typeid`)))
		{
			Object o = cast(Object)godot_nativescript_get_userdata(opCast!godot_object);
			return cast(inout(T))o;
		}
		return null;
	}
	static World2D _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("World2D");
		if(constructor is null) return typeof(this).init;
		return cast(World2D)(constructor());
	}
	RID get_canvas()
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("World2D", "get_canvas");
		RID _GODOT_ret = RID.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	RID get_space()
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("World2D", "get_space");
		RID _GODOT_ret = RID.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	Physics2DDirectSpaceState get_direct_space_state()
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("World2D", "get_direct_space_state");
		Physics2DDirectSpaceState _GODOT_ret = Physics2DDirectSpaceState.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
}
