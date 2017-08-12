module godot.gdnative;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.object;
import godot.classdb;
import godot.reference;
import godot.gdnativelibrary;
@GodotBaseClass struct GDNative
{
	static immutable string _GODOT_internal_name = "GDNative";
public:
	union { godot_object _godot_object; Reference base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	package(godot) void* opCast(T : void*)() const { return cast(void*)_godot_object.ptr; }
	godot_object opCast(T : godot_object)() const { return cast(godot_object)_godot_object; }
	bool opEquals(in GDNative other) const { return _godot_object.ptr is other._godot_object.ptr; }
	GDNative opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	bool opCast(T : bool)() const { return _godot_object.ptr !is null; }
	inout(T) opCast(T)() inout if(isGodotBaseClass!T)
	{
		static assert(staticIndexOf!(GDNative, T.BaseClasses) != -1, "Godot class "~T.stringof~" does not inherit GDNative");
		if(_godot_object.ptr is null) return T.init;
		String c = String(T._GODOT_internal_name);
		if(is_class(c)) return inout(T)(_godot_object);
		return T.init;
	}
	inout(T) opCast(T)() inout if(extendsGodotBaseClass!T)
	{
		static assert(is(typeof(T.owner) : GDNative) || staticIndexOf!(GDNative, typeof(T.owner).BaseClasses) != -1, "D class "~T.stringof~" does not extend GDNative");
		if(_godot_object.ptr is null) return null;
		if(has_method(String(`_GDNATIVE_D_typeid`)))
		{
			Object o = cast(Object)godot_nativescript_get_userdata(opCast!godot_object);
			return cast(inout(T))o;
		}
		return null;
	}
	static GDNative _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("GDNative");
		if(constructor is null) return typeof(this).init;
		return cast(GDNative)(constructor());
	}
	void set_library(in GDNativeLibrary library)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("GDNative", "set_library");
		const(void*)[1] _GODOT_args = [cast(void*)(library), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	GDNativeLibrary get_library()
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("GDNative", "get_library");
		GDNativeLibrary _GODOT_ret = GDNativeLibrary.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	bool initialize()
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("GDNative", "initialize");
		bool _GODOT_ret = bool.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	bool terminate()
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("GDNative", "terminate");
		bool _GODOT_ret = bool.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	Variant call_native(in String procedure_name, in Array arguments, in Array arg2)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("GDNative", "call_native");
		Variant _GODOT_ret = Variant.nil;
		const(void*)[3] _GODOT_args = [cast(void*)(&procedure_name), cast(void*)(&arguments), cast(void*)(&arg2), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
}
