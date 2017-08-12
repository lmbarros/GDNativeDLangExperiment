module godot.ip;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.object;
@GodotBaseClass struct IPSingleton
{
	static immutable string _GODOT_internal_name = "IP";
public:
	static typeof(this) _GODOT_singleton()
	{
		static immutable char* _GODOT_singleton_name = "IP";
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
	bool opEquals(in IPSingleton other) const { return _godot_object.ptr is other._godot_object.ptr; }
	IPSingleton opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	bool opCast(T : bool)() const { return _godot_object.ptr !is null; }
	inout(T) opCast(T)() inout if(isGodotBaseClass!T)
	{
		static assert(staticIndexOf!(IPSingleton, T.BaseClasses) != -1, "Godot class "~T.stringof~" does not inherit IPSingleton");
		if(_godot_object.ptr is null) return T.init;
		String c = String(T._GODOT_internal_name);
		if(is_class(c)) return inout(T)(_godot_object);
		return T.init;
	}
	inout(T) opCast(T)() inout if(extendsGodotBaseClass!T)
	{
		static assert(is(typeof(T.owner) : IPSingleton) || staticIndexOf!(IPSingleton, typeof(T.owner).BaseClasses) != -1, "D class "~T.stringof~" does not extend IPSingleton");
		if(_godot_object.ptr is null) return null;
		if(has_method(String(`_GDNATIVE_D_typeid`)))
		{
			Object o = cast(Object)godot_nativescript_get_userdata(opCast!godot_object);
			return cast(inout(T))o;
		}
		return null;
	}
	static IPSingleton _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("IP");
		if(constructor is null) return typeof(this).init;
		return cast(IPSingleton)(constructor());
	}
	enum int RESOLVER_STATUS_ERROR = 3;
	enum int TYPE_NONE = 0;
	enum int RESOLVER_MAX_QUERIES = 32;
	enum int TYPE_IPV4 = 1;
	enum int TYPE_IPV6 = 2;
	enum int RESOLVER_STATUS_WAITING = 1;
	enum int RESOLVER_STATUS_DONE = 2;
	enum int RESOLVER_INVALID_ID = -1;
	enum int TYPE_ANY = 3;
	enum int RESOLVER_STATUS_NONE = 0;
	String resolve_hostname(in String host, in int ip_type = 3)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("IP", "resolve_hostname");
		String _GODOT_ret = String.init;
		const(void*)[2] _GODOT_args = [cast(void*)(&host), cast(void*)(&ip_type), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	int resolve_hostname_queue_item(in String host, in int ip_type = 3)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("IP", "resolve_hostname_queue_item");
		int _GODOT_ret = int.init;
		const(void*)[2] _GODOT_args = [cast(void*)(&host), cast(void*)(&ip_type), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	int get_resolve_item_status(in int id) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("IP", "get_resolve_item_status");
		int _GODOT_ret = int.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&id), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	String get_resolve_item_address(in int id) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("IP", "get_resolve_item_address");
		String _GODOT_ret = String.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&id), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void erase_resolve_item(in int id)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("IP", "erase_resolve_item");
		const(void*)[1] _GODOT_args = [cast(void*)(&id), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	Array get_local_addresses() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("IP", "get_local_addresses");
		Array _GODOT_ret = Array.empty_array;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void clear_cache(in String hostname = String.init)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("IP", "clear_cache");
		const(void*)[1] _GODOT_args = [cast(void*)(&hostname), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
}
@property pragma(inline, true)
IPSingleton IP()
{
	return IPSingleton._GODOT_singleton();
}
