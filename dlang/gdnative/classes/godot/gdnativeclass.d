module godot.gdnativeclass;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.object;
import godot.reference;
@GodotBaseClass struct GDNativeClass
{
	static immutable string _GODOT_internal_name = "GDNativeClass";
public:
	union { godot_object _godot_object; Reference base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	package(godot) void* opCast(T : void*)() const { return cast(void*)_godot_object.ptr; }
	godot_object opCast(T : godot_object)() const { return cast(godot_object)_godot_object; }
	bool opEquals(in GDNativeClass other) const { return _godot_object.ptr is other._godot_object.ptr; }
	GDNativeClass opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	bool opCast(T : bool)() const { return _godot_object.ptr !is null; }
	inout(T) opCast(T)() inout if(isGodotBaseClass!T)
	{
		static assert(staticIndexOf!(GDNativeClass, T.BaseClasses) != -1, "Godot class "~T.stringof~" does not inherit GDNativeClass");
		if(_godot_object.ptr is null) return T.init;
		String c = String(T._GODOT_internal_name);
		if(is_class(c)) return inout(T)(_godot_object);
		return T.init;
	}
	inout(T) opCast(T)() inout if(extendsGodotBaseClass!T)
	{
		static assert(is(typeof(T.owner) : GDNativeClass) || staticIndexOf!(GDNativeClass, typeof(T.owner).BaseClasses) != -1, "D class "~T.stringof~" does not extend GDNativeClass");
		if(_godot_object.ptr is null) return null;
		if(has_method(String(`_GDNATIVE_D_typeid`)))
		{
			Object o = cast(Object)godot_nativescript_get_userdata(opCast!godot_object);
			return cast(inout(T))o;
		}
		return null;
	}
	static GDNativeClass _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("GDNativeClass");
		if(constructor is null) return typeof(this).init;
		return cast(GDNativeClass)(constructor());
	}
	void _new()
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("GDNativeClass", "new");
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null);
	}
}
