module godot.classdb;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.object;
@GodotBaseClass struct ClassDBSingleton
{
	static immutable string _GODOT_internal_name = "_ClassDB";
public:
	static typeof(this) _GODOT_singleton()
	{
		static immutable char* _GODOT_singleton_name = "_ClassDB";
		static typeof(this) _GODOT_singleton_ptr;
		if(_GODOT_singleton_ptr == null)
			_GODOT_singleton_ptr = cast(typeof(this))godot_global_get_singleton(cast(char*)_GODOT_singleton_name);
		return _GODOT_singleton_ptr;
	}
	union { godot_object _godot_object; GodotObject base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	package(godot) void* opCast(T : void*)() const { return cast(void*)_godot_object.ptr; }
	godot_object opCast(T : godot_object)() const { return cast(godot_object)_godot_object; }
	bool opEquals(in ClassDBSingleton other) const { return _godot_object.ptr is other._godot_object.ptr; }
	ClassDBSingleton opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	bool opCast(T : bool)() const { return _godot_object.ptr !is null; }
	inout(T) opCast(T)() inout if(isGodotBaseClass!T)
	{
		static assert(staticIndexOf!(ClassDBSingleton, T.BaseClasses) != -1, "Godot class "~T.stringof~" does not inherit ClassDBSingleton");
		if(_godot_object.ptr is null) return T.init;
		String c = String(T._GODOT_internal_name);
		if(is_class(c)) return inout(T)(_godot_object);
		return T.init;
	}
	inout(T) opCast(T)() inout if(extendsGodotBaseClass!T)
	{
		static assert(is(typeof(T.owner) : ClassDBSingleton) || staticIndexOf!(ClassDBSingleton, typeof(T.owner).BaseClasses) != -1, "D class "~T.stringof~" does not extend ClassDBSingleton");
		if(_godot_object.ptr is null) return null;
		if(has_method(String(`_GDNATIVE_D_typeid`)))
		{
			Object o = cast(Object)godot_nativescript_get_userdata(opCast!godot_object);
			return cast(inout(T))o;
		}
		return null;
	}
	static ClassDBSingleton _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("_ClassDB");
		if(constructor is null) return typeof(this).init;
		return cast(ClassDBSingleton)(constructor());
	}
	PoolStringArray get_class_list() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("_ClassDB", "get_class_list");
		PoolStringArray _GODOT_ret = PoolStringArray.empty;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	PoolStringArray get_inheriters_from_class(in String _class) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("_ClassDB", "get_inheriters_from_class");
		PoolStringArray _GODOT_ret = PoolStringArray.empty;
		const(void*)[1] _GODOT_args = [cast(void*)(&_class), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	String get_parent_class(in String _class) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("_ClassDB", "get_parent_class");
		String _GODOT_ret = String.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&_class), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	bool class_exists(in String _class) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("_ClassDB", "class_exists");
		bool _GODOT_ret = bool.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&_class), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	bool is_parent_class(in String _class, in String inherits) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("_ClassDB", "is_parent_class");
		bool _GODOT_ret = bool.init;
		const(void*)[2] _GODOT_args = [cast(void*)(&_class), cast(void*)(&inherits), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	bool can_instance(in String _class) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("_ClassDB", "can_instance");
		bool _GODOT_ret = bool.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&_class), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	Variant instance(in String _class) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("_ClassDB", "instance");
		Variant _GODOT_ret = Variant.nil;
		const(void*)[1] _GODOT_args = [cast(void*)(&_class), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	bool class_has_signal(in String _class, in String signal) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("_ClassDB", "class_has_signal");
		bool _GODOT_ret = bool.init;
		const(void*)[2] _GODOT_args = [cast(void*)(&_class), cast(void*)(&signal), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	Dictionary class_get_signal(in String _class, in String signal) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("_ClassDB", "class_get_signal");
		Dictionary _GODOT_ret = Dictionary.empty_dictionary;
		const(void*)[2] _GODOT_args = [cast(void*)(&_class), cast(void*)(&signal), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	Array class_get_signal_list(in String _class, in bool no_inheritance = false) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("_ClassDB", "class_get_signal_list");
		Array _GODOT_ret = Array.empty_array;
		const(void*)[2] _GODOT_args = [cast(void*)(&_class), cast(void*)(&no_inheritance), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	Array class_get_property_list(in String _class, in bool no_inheritance = false) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("_ClassDB", "class_get_property_list");
		Array _GODOT_ret = Array.empty_array;
		const(void*)[2] _GODOT_args = [cast(void*)(&_class), cast(void*)(&no_inheritance), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	Variant class_get_property(in GodotObject object, in String property) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("_ClassDB", "class_get_property");
		Variant _GODOT_ret = Variant.nil;
		const(void*)[2] _GODOT_args = [cast(void*)(object), cast(void*)(&property), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	GodotError class_set_property(in GodotObject object, in String property, in Variant value) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("_ClassDB", "class_set_property");
		GodotError _GODOT_ret = GodotError.init;
		const(void*)[3] _GODOT_args = [cast(void*)(object), cast(void*)(&property), cast(void*)(&value), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	bool class_has_method(in String _class, in String method, in bool no_inheritance = false) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("_ClassDB", "class_has_method");
		bool _GODOT_ret = bool.init;
		const(void*)[3] _GODOT_args = [cast(void*)(&_class), cast(void*)(&method), cast(void*)(&no_inheritance), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	Array class_get_method_list(in String _class, in bool no_inheritance = false) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("_ClassDB", "class_get_method_list");
		Array _GODOT_ret = Array.empty_array;
		const(void*)[2] _GODOT_args = [cast(void*)(&_class), cast(void*)(&no_inheritance), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	PoolStringArray class_get_integer_constant_list(in String _class, in bool no_inheritance = false) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("_ClassDB", "class_get_integer_constant_list");
		PoolStringArray _GODOT_ret = PoolStringArray.empty;
		const(void*)[2] _GODOT_args = [cast(void*)(&_class), cast(void*)(&no_inheritance), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	bool class_has_integer_constant(in String _class, in String name) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("_ClassDB", "class_has_integer_constant");
		bool _GODOT_ret = bool.init;
		const(void*)[2] _GODOT_args = [cast(void*)(&_class), cast(void*)(&name), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	int class_get_integer_constant(in String _class, in String name) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("_ClassDB", "class_get_integer_constant");
		int _GODOT_ret = int.init;
		const(void*)[2] _GODOT_args = [cast(void*)(&_class), cast(void*)(&name), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	String class_get_category(in String _class) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("_ClassDB", "class_get_category");
		String _GODOT_ret = String.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&_class), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	bool is_class_enabled(in String _class) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("_ClassDB", "is_class_enabled");
		bool _GODOT_ret = bool.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&_class), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
}
@property pragma(inline, true)
ClassDBSingleton ClassDB()
{
	return ClassDBSingleton._GODOT_singleton();
}
