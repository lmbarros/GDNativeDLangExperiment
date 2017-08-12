module godot.object;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.classdb;
import godot.script;
@GodotBaseClass struct GodotObject
{
	static immutable string _GODOT_internal_name = "Object";
public:
	godot_object _godot_object;
	alias BaseClasses = AliasSeq!();
	package(godot) void* opCast(T : void*)() const { return cast(void*)_godot_object.ptr; }
	godot_object opCast(T : godot_object)() const { return cast(godot_object)_godot_object; }
	bool opEquals(in GodotObject other) const { return _godot_object.ptr is other._godot_object.ptr; }
	GodotObject opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	bool opCast(T : bool)() const { return _godot_object.ptr !is null; }
	inout(T) opCast(T)() inout if(isGodotBaseClass!T)
	{
		static assert(staticIndexOf!(GodotObject, T.BaseClasses) != -1, "Godot class "~T.stringof~" does not inherit GodotObject");
		if(_godot_object.ptr is null) return T.init;
		String c = String(T._GODOT_internal_name);
		if(is_class(c)) return inout(T)(_godot_object);
		return T.init;
	}
	inout(T) opCast(T)() inout if(extendsGodotBaseClass!T)
	{
		static assert(is(typeof(T.owner) : GodotObject) || staticIndexOf!(GodotObject, typeof(T.owner).BaseClasses) != -1, "D class "~T.stringof~" does not extend GodotObject");
		if(_godot_object.ptr is null) return null;
		if(has_method(String(`_GDNATIVE_D_typeid`)))
		{
			Object o = cast(Object)godot_nativescript_get_userdata(opCast!godot_object);
			return cast(inout(T))o;
		}
		return null;
	}
	static GodotObject _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("Object");
		if(constructor is null) return typeof(this).init;
		return cast(GodotObject)(constructor());
	}
	enum int NOTIFICATION_POSTINITIALIZE = 0;
	enum int CONNECT_DEFERRED = 1;
	enum int CONNECT_PERSIST = 2;
	enum int CONNECT_ONESHOT = 4;
	enum int NOTIFICATION_PREDELETE = 1;
	void free()
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Object", "free");
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null);
	}
	void _notification(in int what)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(what);
		String _GODOT_method_name = String("_notification");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	void _set(in String property, in Variant value)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(property);
		_GODOT_args.append(value);
		String _GODOT_method_name = String("_set");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	Variant _get(in String property)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(property);
		String _GODOT_method_name = String("_get");
		return this.callv(_GODOT_method_name, _GODOT_args);
	}
	Array _get_property_list()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_get_property_list");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(Array);
	}
	void _init()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_init");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	String get_class() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Object", "get_class");
		String _GODOT_ret = String.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	bool is_class(in String type) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Object", "is_class");
		bool _GODOT_ret = bool.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&type), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set(in String property, in Variant value)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Object", "set");
		const(void*)[2] _GODOT_args = [cast(void*)(&property), cast(void*)(&value), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	Variant get(in String property) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Object", "get");
		Variant _GODOT_ret = Variant.nil;
		const(void*)[1] _GODOT_args = [cast(void*)(&property), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	Array get_property_list() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Object", "get_property_list");
		Array _GODOT_ret = Array.empty_array;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	Array get_method_list() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Object", "get_method_list");
		Array _GODOT_ret = Array.empty_array;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void notification(in int what, in bool reversed = false)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Object", "notification");
		const(void*)[2] _GODOT_args = [cast(void*)(&what), cast(void*)(&reversed), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	int get_instance_ID() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Object", "get_instance_ID");
		int _GODOT_ret = int.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_script(in Script script)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Object", "set_script");
		const(void*)[1] _GODOT_args = [cast(void*)(script), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	Script get_script() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Object", "get_script");
		Script _GODOT_ret = Script.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_meta(in String name, in Variant value)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Object", "set_meta");
		const(void*)[2] _GODOT_args = [cast(void*)(&name), cast(void*)(&value), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	Variant get_meta(in String name) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Object", "get_meta");
		Variant _GODOT_ret = Variant.nil;
		const(void*)[1] _GODOT_args = [cast(void*)(&name), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	bool has_meta(in String name) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Object", "has_meta");
		bool _GODOT_ret = bool.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&name), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	PoolStringArray get_meta_list() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Object", "get_meta_list");
		PoolStringArray _GODOT_ret = PoolStringArray.empty;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void add_user_signal(in String signal, in Array arguments = Array.empty_array)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Object", "add_user_signal");
		const(void*)[2] _GODOT_args = [cast(void*)(&signal), cast(void*)(&arguments), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	bool has_user_signal(in String signal) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Object", "has_user_signal");
		bool _GODOT_ret = bool.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&signal), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void emit_signal(Args...)(in String signal, Args _GODOT_var_args)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(signal);
		foreach(vai, VA; Args)
		{
			_GODOT_args.append(_GODOT_var_args[vai]);
		}
		String _GODOT_method_name = String("emit_signal");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	Variant call(Args...)(in String method, Args _GODOT_var_args)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(method);
		foreach(vai, VA; Args)
		{
			_GODOT_args.append(_GODOT_var_args[vai]);
		}
		String _GODOT_method_name = String("call");
		return this.callv(_GODOT_method_name, _GODOT_args);
	}
	void call_deferred(Args...)(in String method, Args _GODOT_var_args)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(method);
		foreach(vai, VA; Args)
		{
			_GODOT_args.append(_GODOT_var_args[vai]);
		}
		String _GODOT_method_name = String("call_deferred");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	Variant callv(in String method, in Array arg_array) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Object", "callv");
		Variant _GODOT_ret = Variant.nil;
		const(void*)[2] _GODOT_args = [cast(void*)(&method), cast(void*)(&arg_array), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	bool has_method(in String method) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Object", "has_method");
		bool _GODOT_ret = bool.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&method), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	Array get_signal_list() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Object", "get_signal_list");
		Array _GODOT_ret = Array.empty_array;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	Array get_signal_connection_list(in String signal) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Object", "get_signal_connection_list");
		Array _GODOT_ret = Array.empty_array;
		const(void*)[1] _GODOT_args = [cast(void*)(&signal), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	Array get_incoming_connections() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Object", "get_incoming_connections");
		Array _GODOT_ret = Array.empty_array;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	int connect(in String signal, in GodotObject target, in String method, in Array binds = Array.empty_array, in int flags = 0)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Object", "connect");
		int _GODOT_ret = int.init;
		const(void*)[5] _GODOT_args = [cast(void*)(&signal), cast(void*)(target), cast(void*)(&method), cast(void*)(&binds), cast(void*)(&flags), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void disconnect(in String signal, in GodotObject target, in String method)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Object", "disconnect");
		const(void*)[3] _GODOT_args = [cast(void*)(&signal), cast(void*)(target), cast(void*)(&method), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	bool is_connected(in String signal, in GodotObject target, in String method) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Object", "is_connected");
		bool _GODOT_ret = bool.init;
		const(void*)[3] _GODOT_args = [cast(void*)(&signal), cast(void*)(target), cast(void*)(&method), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_block_signals(in bool enable)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Object", "set_block_signals");
		const(void*)[1] _GODOT_args = [cast(void*)(&enable), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	bool is_blocking_signals() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Object", "is_blocking_signals");
		bool _GODOT_ret = bool.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_message_translation(in bool enable)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Object", "set_message_translation");
		const(void*)[1] _GODOT_args = [cast(void*)(&enable), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	bool can_translate_messages() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Object", "can_translate_messages");
		bool _GODOT_ret = bool.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void property_list_changed_notify()
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Object", "property_list_changed_notify");
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null);
	}
	String XL_MESSAGE(in String message) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Object", "XL_MESSAGE");
		String _GODOT_ret = String.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&message), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	String tr(in String message) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Object", "tr");
		String _GODOT_ret = String.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&message), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	bool is_queued_for_deletion() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Object", "is_queued_for_deletion");
		bool _GODOT_ret = bool.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
}
