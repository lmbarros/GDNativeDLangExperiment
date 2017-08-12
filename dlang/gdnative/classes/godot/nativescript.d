module godot.nativescript;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.object;
import godot.classdb;
import godot.script;
import godot.gdnativelibrary;
@GodotBaseClass struct NativeScript
{
	static immutable string _GODOT_internal_name = "NativeScript";
public:
	union { godot_object _godot_object; Script base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	package(godot) void* opCast(T : void*)() const { return cast(void*)_godot_object.ptr; }
	godot_object opCast(T : godot_object)() const { return cast(godot_object)_godot_object; }
	bool opEquals(in NativeScript other) const { return _godot_object.ptr is other._godot_object.ptr; }
	NativeScript opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	bool opCast(T : bool)() const { return _godot_object.ptr !is null; }
	inout(T) opCast(T)() inout if(isGodotBaseClass!T)
	{
		static assert(staticIndexOf!(NativeScript, T.BaseClasses) != -1, "Godot class "~T.stringof~" does not inherit NativeScript");
		if(_godot_object.ptr is null) return T.init;
		String c = String(T._GODOT_internal_name);
		if(is_class(c)) return inout(T)(_godot_object);
		return T.init;
	}
	inout(T) opCast(T)() inout if(extendsGodotBaseClass!T)
	{
		static assert(is(typeof(T.owner) : NativeScript) || staticIndexOf!(NativeScript, typeof(T.owner).BaseClasses) != -1, "D class "~T.stringof~" does not extend NativeScript");
		if(_godot_object.ptr is null) return null;
		if(has_method(String(`_GDNATIVE_D_typeid`)))
		{
			Object o = cast(Object)godot_nativescript_get_userdata(opCast!godot_object);
			return cast(inout(T))o;
		}
		return null;
	}
	static NativeScript _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("NativeScript");
		if(constructor is null) return typeof(this).init;
		return cast(NativeScript)(constructor());
	}
	void set_class_name(in String class_name)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("NativeScript", "set_class_name");
		const(void*)[1] _GODOT_args = [cast(void*)(&class_name), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	String get_class_name() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("NativeScript", "get_class_name");
		String _GODOT_ret = String.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_library(in GDNativeLibrary library)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("NativeScript", "set_library");
		const(void*)[1] _GODOT_args = [cast(void*)(library), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	GDNativeLibrary get_library() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("NativeScript", "get_library");
		GDNativeLibrary _GODOT_ret = GDNativeLibrary.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	GodotObject _new(Args...)(Args _GODOT_var_args)
	{
		Array _GODOT_args = Array.empty_array;
		foreach(vai, VA; Args)
		{
			_GODOT_args.append(_GODOT_var_args[vai]);
		}
		String _GODOT_method_name = String("new");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(GodotObject);
	}
}
