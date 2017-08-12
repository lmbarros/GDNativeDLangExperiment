module godot.resourcesaver;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.object;
import godot.resource;
@GodotBaseClass struct ResourceSaverSingleton
{
	static immutable string _GODOT_internal_name = "_ResourceSaver";
public:
	static typeof(this) _GODOT_singleton()
	{
		static immutable char* _GODOT_singleton_name = "_ResourceSaver";
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
	bool opEquals(in ResourceSaverSingleton other) const { return _godot_object.ptr is other._godot_object.ptr; }
	ResourceSaverSingleton opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	bool opCast(T : bool)() const { return _godot_object.ptr !is null; }
	inout(T) opCast(T)() inout if(isGodotBaseClass!T)
	{
		static assert(staticIndexOf!(ResourceSaverSingleton, T.BaseClasses) != -1, "Godot class "~T.stringof~" does not inherit ResourceSaverSingleton");
		if(_godot_object.ptr is null) return T.init;
		String c = String(T._GODOT_internal_name);
		if(is_class(c)) return inout(T)(_godot_object);
		return T.init;
	}
	inout(T) opCast(T)() inout if(extendsGodotBaseClass!T)
	{
		static assert(is(typeof(T.owner) : ResourceSaverSingleton) || staticIndexOf!(ResourceSaverSingleton, typeof(T.owner).BaseClasses) != -1, "D class "~T.stringof~" does not extend ResourceSaverSingleton");
		if(_godot_object.ptr is null) return null;
		if(has_method(String(`_GDNATIVE_D_typeid`)))
		{
			Object o = cast(Object)godot_nativescript_get_userdata(opCast!godot_object);
			return cast(inout(T))o;
		}
		return null;
	}
	static ResourceSaverSingleton _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("_ResourceSaver");
		if(constructor is null) return typeof(this).init;
		return cast(ResourceSaverSingleton)(constructor());
	}
	enum int FLAG_CHANGE_PATH = 4;
	enum int FLAG_RELATIVE_PATHS = 1;
	enum int FLAG_BUNDLE_RESOURCES = 2;
	enum int FLAG_OMIT_EDITOR_PROPERTIES = 8;
	enum int FLAG_COMPRESS = 32;
	enum int FLAG_SAVE_BIG_ENDIAN = 16;
	int save(in String path, in Resource resource, in int flags = 0)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("_ResourceSaver", "save");
		int _GODOT_ret = int.init;
		const(void*)[3] _GODOT_args = [cast(void*)(&path), cast(void*)(resource), cast(void*)(&flags), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	PoolStringArray get_recognized_extensions(in Resource type)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("_ResourceSaver", "get_recognized_extensions");
		PoolStringArray _GODOT_ret = PoolStringArray.empty;
		const(void*)[1] _GODOT_args = [cast(void*)(type), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
}
@property pragma(inline, true)
ResourceSaverSingleton ResourceSaver()
{
	return ResourceSaverSingleton._GODOT_singleton();
}
