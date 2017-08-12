module godot.gdfunctionstate;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.object;
import godot.reference;
@GodotBaseClass struct GDFunctionState
{
	static immutable string _GODOT_internal_name = "GDFunctionState";
public:
	union { godot_object _godot_object; Reference base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	package(godot) void* opCast(T : void*)() const { return cast(void*)_godot_object.ptr; }
	godot_object opCast(T : godot_object)() const { return cast(godot_object)_godot_object; }
	bool opEquals(in GDFunctionState other) const { return _godot_object.ptr is other._godot_object.ptr; }
	GDFunctionState opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	bool opCast(T : bool)() const { return _godot_object.ptr !is null; }
	inout(T) opCast(T)() inout if(isGodotBaseClass!T)
	{
		static assert(staticIndexOf!(GDFunctionState, T.BaseClasses) != -1, "Godot class "~T.stringof~" does not inherit GDFunctionState");
		if(_godot_object.ptr is null) return T.init;
		String c = String(T._GODOT_internal_name);
		if(is_class(c)) return inout(T)(_godot_object);
		return T.init;
	}
	inout(T) opCast(T)() inout if(extendsGodotBaseClass!T)
	{
		static assert(is(typeof(T.owner) : GDFunctionState) || staticIndexOf!(GDFunctionState, typeof(T.owner).BaseClasses) != -1, "D class "~T.stringof~" does not extend GDFunctionState");
		if(_godot_object.ptr is null) return null;
		if(has_method(String(`_GDNATIVE_D_typeid`)))
		{
			Object o = cast(Object)godot_nativescript_get_userdata(opCast!godot_object);
			return cast(inout(T))o;
		}
		return null;
	}
	static GDFunctionState _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("GDFunctionState");
		if(constructor is null) return typeof(this).init;
		return cast(GDFunctionState)(constructor());
	}
	Variant resume(in Variant arg = Variant.nil)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("GDFunctionState", "resume");
		Variant _GODOT_ret = Variant.nil;
		const(void*)[1] _GODOT_args = [cast(void*)(&arg), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	bool is_valid(in bool extended_check = false) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("GDFunctionState", "is_valid");
		bool _GODOT_ret = bool.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&extended_check), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void _signal_callback(Args...)(Args _GODOT_var_args)
	{
		Array _GODOT_args = Array.empty_array;
		foreach(vai, VA; Args)
		{
			_GODOT_args.append(_GODOT_var_args[vai]);
		}
		String _GODOT_method_name = String("_signal_callback");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
}
