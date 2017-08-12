module godot.resourceloader;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.object;
import godot.resourceinteractiveloader;
import godot.resource;
@GodotBaseClass struct ResourceLoaderSingleton
{
	static immutable string _GODOT_internal_name = "_ResourceLoader";
public:
	static typeof(this) _GODOT_singleton()
	{
		static immutable char* _GODOT_singleton_name = "_ResourceLoader";
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
	bool opEquals(in ResourceLoaderSingleton other) const { return _godot_object.ptr is other._godot_object.ptr; }
	ResourceLoaderSingleton opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	bool opCast(T : bool)() const { return _godot_object.ptr !is null; }
	inout(T) opCast(T)() inout if(isGodotBaseClass!T)
	{
		static assert(staticIndexOf!(ResourceLoaderSingleton, T.BaseClasses) != -1, "Godot class "~T.stringof~" does not inherit ResourceLoaderSingleton");
		if(_godot_object.ptr is null) return T.init;
		String c = String(T._GODOT_internal_name);
		if(is_class(c)) return inout(T)(_godot_object);
		return T.init;
	}
	inout(T) opCast(T)() inout if(extendsGodotBaseClass!T)
	{
		static assert(is(typeof(T.owner) : ResourceLoaderSingleton) || staticIndexOf!(ResourceLoaderSingleton, typeof(T.owner).BaseClasses) != -1, "D class "~T.stringof~" does not extend ResourceLoaderSingleton");
		if(_godot_object.ptr is null) return null;
		if(has_method(String(`_GDNATIVE_D_typeid`)))
		{
			Object o = cast(Object)godot_nativescript_get_userdata(opCast!godot_object);
			return cast(inout(T))o;
		}
		return null;
	}
	static ResourceLoaderSingleton _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("_ResourceLoader");
		if(constructor is null) return typeof(this).init;
		return cast(ResourceLoaderSingleton)(constructor());
	}
	ResourceInteractiveLoader load_interactive(in String path, in String type_hint = String.init)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("_ResourceLoader", "load_interactive");
		ResourceInteractiveLoader _GODOT_ret = ResourceInteractiveLoader.init;
		const(void*)[2] _GODOT_args = [cast(void*)(&path), cast(void*)(&type_hint), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	Resource load(in String path, in String type_hint = String.init, in bool p_no_cache = false)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("_ResourceLoader", "load");
		Resource _GODOT_ret = Resource.init;
		const(void*)[3] _GODOT_args = [cast(void*)(&path), cast(void*)(&type_hint), cast(void*)(&p_no_cache), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	PoolStringArray get_recognized_extensions_for_type(in String type)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("_ResourceLoader", "get_recognized_extensions_for_type");
		PoolStringArray _GODOT_ret = PoolStringArray.empty;
		const(void*)[1] _GODOT_args = [cast(void*)(&type), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_abort_on_missing_resources(in bool abort)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("_ResourceLoader", "set_abort_on_missing_resources");
		const(void*)[1] _GODOT_args = [cast(void*)(&abort), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	PoolStringArray get_dependencies(in String path)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("_ResourceLoader", "get_dependencies");
		PoolStringArray _GODOT_ret = PoolStringArray.empty;
		const(void*)[1] _GODOT_args = [cast(void*)(&path), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	bool has(in String path)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("_ResourceLoader", "has");
		bool _GODOT_ret = bool.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&path), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
}
@property pragma(inline, true)
ResourceLoaderSingleton ResourceLoader()
{
	return ResourceLoaderSingleton._GODOT_singleton();
}
