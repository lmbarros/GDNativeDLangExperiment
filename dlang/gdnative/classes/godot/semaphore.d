module godot.semaphore;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.object;
import godot.classdb;
import godot.reference;
@GodotBaseClass struct Semaphore
{
	static immutable string _GODOT_internal_name = "_Semaphore";
public:
	union { godot_object _godot_object; Reference base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	package(godot) void* opCast(T : void*)() const { return cast(void*)_godot_object.ptr; }
	godot_object opCast(T : godot_object)() const { return cast(godot_object)_godot_object; }
	bool opEquals(in Semaphore other) const { return _godot_object.ptr is other._godot_object.ptr; }
	Semaphore opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	bool opCast(T : bool)() const { return _godot_object.ptr !is null; }
	inout(T) opCast(T)() inout if(isGodotBaseClass!T)
	{
		static assert(staticIndexOf!(Semaphore, T.BaseClasses) != -1, "Godot class "~T.stringof~" does not inherit Semaphore");
		if(_godot_object.ptr is null) return T.init;
		String c = String(T._GODOT_internal_name);
		if(is_class(c)) return inout(T)(_godot_object);
		return T.init;
	}
	inout(T) opCast(T)() inout if(extendsGodotBaseClass!T)
	{
		static assert(is(typeof(T.owner) : Semaphore) || staticIndexOf!(Semaphore, typeof(T.owner).BaseClasses) != -1, "D class "~T.stringof~" does not extend Semaphore");
		if(_godot_object.ptr is null) return null;
		if(has_method(String(`_GDNATIVE_D_typeid`)))
		{
			Object o = cast(Object)godot_nativescript_get_userdata(opCast!godot_object);
			return cast(inout(T))o;
		}
		return null;
	}
	static Semaphore _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("_Semaphore");
		if(constructor is null) return typeof(this).init;
		return cast(Semaphore)(constructor());
	}
	GodotError wait()
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("_Semaphore", "wait");
		GodotError _GODOT_ret = GodotError.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	GodotError post()
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("_Semaphore", "post");
		GodotError _GODOT_ret = GodotError.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
}
