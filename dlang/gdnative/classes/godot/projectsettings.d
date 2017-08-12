module godot.projectsettings;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.object;
@GodotBaseClass struct ProjectSettingsSingleton
{
	static immutable string _GODOT_internal_name = "ProjectSettings";
public:
	static typeof(this) _GODOT_singleton()
	{
		static immutable char* _GODOT_singleton_name = "ProjectSettings";
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
	bool opEquals(in ProjectSettingsSingleton other) const { return _godot_object.ptr is other._godot_object.ptr; }
	ProjectSettingsSingleton opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	bool opCast(T : bool)() const { return _godot_object.ptr !is null; }
	inout(T) opCast(T)() inout if(isGodotBaseClass!T)
	{
		static assert(staticIndexOf!(ProjectSettingsSingleton, T.BaseClasses) != -1, "Godot class "~T.stringof~" does not inherit ProjectSettingsSingleton");
		if(_godot_object.ptr is null) return T.init;
		String c = String(T._GODOT_internal_name);
		if(is_class(c)) return inout(T)(_godot_object);
		return T.init;
	}
	inout(T) opCast(T)() inout if(extendsGodotBaseClass!T)
	{
		static assert(is(typeof(T.owner) : ProjectSettingsSingleton) || staticIndexOf!(ProjectSettingsSingleton, typeof(T.owner).BaseClasses) != -1, "D class "~T.stringof~" does not extend ProjectSettingsSingleton");
		if(_godot_object.ptr is null) return null;
		if(has_method(String(`_GDNATIVE_D_typeid`)))
		{
			Object o = cast(Object)godot_nativescript_get_userdata(opCast!godot_object);
			return cast(inout(T))o;
		}
		return null;
	}
	static ProjectSettingsSingleton _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("ProjectSettings");
		if(constructor is null) return typeof(this).init;
		return cast(ProjectSettingsSingleton)(constructor());
	}
	bool has(in String name) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("ProjectSettings", "has");
		bool _GODOT_ret = bool.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&name), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_order(in String name, in int pos)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("ProjectSettings", "set_order");
		const(void*)[2] _GODOT_args = [cast(void*)(&name), cast(void*)(&pos), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	int get_order(in String name) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("ProjectSettings", "get_order");
		int _GODOT_ret = int.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&name), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_initial_value(in String name, in Variant value)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("ProjectSettings", "set_initial_value");
		const(void*)[2] _GODOT_args = [cast(void*)(&name), cast(void*)(&value), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void add_property_info(in Dictionary hint)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("ProjectSettings", "add_property_info");
		const(void*)[1] _GODOT_args = [cast(void*)(&hint), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void clear(in String name)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("ProjectSettings", "clear");
		const(void*)[1] _GODOT_args = [cast(void*)(&name), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	String localize_path(in String path) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("ProjectSettings", "localize_path");
		String _GODOT_ret = String.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&path), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	String globalize_path(in String path) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("ProjectSettings", "globalize_path");
		String _GODOT_ret = String.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&path), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	int save()
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("ProjectSettings", "save");
		int _GODOT_ret = int.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	bool has_singleton(in String name) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("ProjectSettings", "has_singleton");
		bool _GODOT_ret = bool.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&name), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	GodotObject get_singleton(in String name) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("ProjectSettings", "get_singleton");
		GodotObject _GODOT_ret = GodotObject.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&name), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	bool load_resource_pack(in String pack)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("ProjectSettings", "load_resource_pack");
		bool _GODOT_ret = bool.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&pack), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	bool property_can_revert(in String name)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("ProjectSettings", "property_can_revert");
		bool _GODOT_ret = bool.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&name), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	Variant property_get_revert(in String name)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("ProjectSettings", "property_get_revert");
		Variant _GODOT_ret = Variant.nil;
		const(void*)[1] _GODOT_args = [cast(void*)(&name), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	int save_custom(in String file)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("ProjectSettings", "save_custom");
		int _GODOT_ret = int.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&file), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
}
@property pragma(inline, true)
ProjectSettingsSingleton ProjectSettings()
{
	return ProjectSettingsSingleton._GODOT_singleton();
}
