module godot.marshalls;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.object;
import godot.reference;
@GodotBaseClass struct MarshallsSingleton
{
	static immutable string _GODOT_internal_name = "_Marshalls";
public:
	static typeof(this) _GODOT_singleton()
	{
		static immutable char* _GODOT_singleton_name = "_Marshalls";
		static typeof(this) _GODOT_singleton_ptr;
		if(_GODOT_singleton_ptr == null)
			_GODOT_singleton_ptr = cast(typeof(this))godot_global_get_singleton(cast(char*)_GODOT_singleton_name);
		return _GODOT_singleton_ptr;
	}
	union { godot_object _godot_object; Reference base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	package(godot) void* opCast(T : void*)() const { return cast(void*)_godot_object.ptr; }
	godot_object opCast(T : godot_object)() const { return cast(godot_object)_godot_object; }
	bool opEquals(in MarshallsSingleton other) const { return _godot_object.ptr is other._godot_object.ptr; }
	MarshallsSingleton opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	bool opCast(T : bool)() const { return _godot_object.ptr !is null; }
	inout(T) opCast(T)() inout if(isGodotBaseClass!T)
	{
		static assert(staticIndexOf!(MarshallsSingleton, T.BaseClasses) != -1, "Godot class "~T.stringof~" does not inherit MarshallsSingleton");
		if(_godot_object.ptr is null) return T.init;
		String c = String(T._GODOT_internal_name);
		if(is_class(c)) return inout(T)(_godot_object);
		return T.init;
	}
	inout(T) opCast(T)() inout if(extendsGodotBaseClass!T)
	{
		static assert(is(typeof(T.owner) : MarshallsSingleton) || staticIndexOf!(MarshallsSingleton, typeof(T.owner).BaseClasses) != -1, "D class "~T.stringof~" does not extend MarshallsSingleton");
		if(_godot_object.ptr is null) return null;
		if(has_method(String(`_GDNATIVE_D_typeid`)))
		{
			Object o = cast(Object)godot_nativescript_get_userdata(opCast!godot_object);
			return cast(inout(T))o;
		}
		return null;
	}
	static MarshallsSingleton _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("_Marshalls");
		if(constructor is null) return typeof(this).init;
		return cast(MarshallsSingleton)(constructor());
	}
	String variant_to_base64(in Variant variant)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("_Marshalls", "variant_to_base64");
		String _GODOT_ret = String.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&variant), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	Variant base64_to_variant(in String base64_str)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("_Marshalls", "base64_to_variant");
		Variant _GODOT_ret = Variant.nil;
		const(void*)[1] _GODOT_args = [cast(void*)(&base64_str), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	String raw_to_base64(in PoolByteArray array)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("_Marshalls", "raw_to_base64");
		String _GODOT_ret = String.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&array), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	PoolByteArray base64_to_raw(in String base64_str)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("_Marshalls", "base64_to_raw");
		PoolByteArray _GODOT_ret = PoolByteArray.empty;
		const(void*)[1] _GODOT_args = [cast(void*)(&base64_str), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	String utf8_to_base64(in String utf8_str)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("_Marshalls", "utf8_to_base64");
		String _GODOT_ret = String.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&utf8_str), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	String base64_to_utf8(in String base64_str)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("_Marshalls", "base64_to_utf8");
		String _GODOT_ret = String.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&base64_str), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
}
@property pragma(inline, true)
MarshallsSingleton Marshalls()
{
	return MarshallsSingleton._GODOT_singleton();
}
