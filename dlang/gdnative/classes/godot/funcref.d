module godot.funcref;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.object;
import godot.classdb;
import godot.reference;
@GodotBaseClass struct FuncRef
{
	static immutable string _GODOT_internal_name = "FuncRef";
public:
	union { godot_object _godot_object; Reference base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	package(godot) void* opCast(T : void*)() const { return cast(void*)_godot_object.ptr; }
	godot_object opCast(T : godot_object)() const { return cast(godot_object)_godot_object; }
	bool opEquals(in FuncRef other) const { return _godot_object.ptr is other._godot_object.ptr; }
	FuncRef opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	bool opCast(T : bool)() const { return _godot_object.ptr !is null; }
	inout(T) opCast(T)() inout if(isGodotBaseClass!T)
	{
		static assert(staticIndexOf!(FuncRef, T.BaseClasses) != -1, "Godot class "~T.stringof~" does not inherit FuncRef");
		if(_godot_object.ptr is null) return T.init;
		String c = String(T._GODOT_internal_name);
		if(is_class(c)) return inout(T)(_godot_object);
		return T.init;
	}
	inout(T) opCast(T)() inout if(extendsGodotBaseClass!T)
	{
		static assert(is(typeof(T.owner) : FuncRef) || staticIndexOf!(FuncRef, typeof(T.owner).BaseClasses) != -1, "D class "~T.stringof~" does not extend FuncRef");
		if(_godot_object.ptr is null) return null;
		if(has_method(String(`_GDNATIVE_D_typeid`)))
		{
			Object o = cast(Object)godot_nativescript_get_userdata(opCast!godot_object);
			return cast(inout(T))o;
		}
		return null;
	}
	static FuncRef _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("FuncRef");
		if(constructor is null) return typeof(this).init;
		return cast(FuncRef)(constructor());
	}
	Variant call_func(Args...)(Args _GODOT_var_args)
	{
		Array _GODOT_args = Array.empty_array;
		foreach(vai, VA; Args)
		{
			_GODOT_args.append(_GODOT_var_args[vai]);
		}
		String _GODOT_method_name = String("call_func");
		return this.callv(_GODOT_method_name, _GODOT_args);
	}
	void set_instance(in GodotObject instance)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("FuncRef", "set_instance");
		const(void*)[1] _GODOT_args = [cast(void*)(instance), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void set_function(in String name)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("FuncRef", "set_function");
		const(void*)[1] _GODOT_args = [cast(void*)(&name), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
}
