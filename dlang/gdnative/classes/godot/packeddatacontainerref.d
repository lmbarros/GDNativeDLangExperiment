module godot.packeddatacontainerref;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.object;
import godot.reference;
@GodotBaseClass struct PackedDataContainerRef
{
	static immutable string _GODOT_internal_name = "PackedDataContainerRef";
public:
	union { godot_object _godot_object; Reference base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	package(godot) void* opCast(T : void*)() const { return cast(void*)_godot_object.ptr; }
	godot_object opCast(T : godot_object)() const { return cast(godot_object)_godot_object; }
	bool opEquals(in PackedDataContainerRef other) const { return _godot_object.ptr is other._godot_object.ptr; }
	PackedDataContainerRef opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	bool opCast(T : bool)() const { return _godot_object.ptr !is null; }
	inout(T) opCast(T)() inout if(isGodotBaseClass!T)
	{
		static assert(staticIndexOf!(PackedDataContainerRef, T.BaseClasses) != -1, "Godot class "~T.stringof~" does not inherit PackedDataContainerRef");
		if(_godot_object.ptr is null) return T.init;
		String c = String(T._GODOT_internal_name);
		if(is_class(c)) return inout(T)(_godot_object);
		return T.init;
	}
	inout(T) opCast(T)() inout if(extendsGodotBaseClass!T)
	{
		static assert(is(typeof(T.owner) : PackedDataContainerRef) || staticIndexOf!(PackedDataContainerRef, typeof(T.owner).BaseClasses) != -1, "D class "~T.stringof~" does not extend PackedDataContainerRef");
		if(_godot_object.ptr is null) return null;
		if(has_method(String(`_GDNATIVE_D_typeid`)))
		{
			Object o = cast(Object)godot_nativescript_get_userdata(opCast!godot_object);
			return cast(inout(T))o;
		}
		return null;
	}
	static PackedDataContainerRef _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("PackedDataContainerRef");
		if(constructor is null) return typeof(this).init;
		return cast(PackedDataContainerRef)(constructor());
	}
	int size() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("PackedDataContainerRef", "size");
		int _GODOT_ret = int.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void _iter_init(in Array arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_iter_init");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	void _iter_get(in Variant arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_iter_get");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	void _iter_next(in Array arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_iter_next");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	bool _is_dictionary() const
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_is_dictionary");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(bool);
	}
}
