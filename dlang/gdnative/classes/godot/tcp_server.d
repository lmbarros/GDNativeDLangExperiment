module godot.tcp_server;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.object;
import godot.classdb;
import godot.reference;
import godot.streampeertcp;
@GodotBaseClass struct TCP_Server
{
	static immutable string _GODOT_internal_name = "TCP_Server";
public:
	union { godot_object _godot_object; Reference base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	package(godot) void* opCast(T : void*)() const { return cast(void*)_godot_object.ptr; }
	godot_object opCast(T : godot_object)() const { return cast(godot_object)_godot_object; }
	bool opEquals(in TCP_Server other) const { return _godot_object.ptr is other._godot_object.ptr; }
	TCP_Server opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	bool opCast(T : bool)() const { return _godot_object.ptr !is null; }
	inout(T) opCast(T)() inout if(isGodotBaseClass!T)
	{
		static assert(staticIndexOf!(TCP_Server, T.BaseClasses) != -1, "Godot class "~T.stringof~" does not inherit TCP_Server");
		if(_godot_object.ptr is null) return T.init;
		String c = String(T._GODOT_internal_name);
		if(is_class(c)) return inout(T)(_godot_object);
		return T.init;
	}
	inout(T) opCast(T)() inout if(extendsGodotBaseClass!T)
	{
		static assert(is(typeof(T.owner) : TCP_Server) || staticIndexOf!(TCP_Server, typeof(T.owner).BaseClasses) != -1, "D class "~T.stringof~" does not extend TCP_Server");
		if(_godot_object.ptr is null) return null;
		if(has_method(String(`_GDNATIVE_D_typeid`)))
		{
			Object o = cast(Object)godot_nativescript_get_userdata(opCast!godot_object);
			return cast(inout(T))o;
		}
		return null;
	}
	static TCP_Server _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("TCP_Server");
		if(constructor is null) return typeof(this).init;
		return cast(TCP_Server)(constructor());
	}
	int listen(in int port, in String bind_address = "*")
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("TCP_Server", "listen");
		int _GODOT_ret = int.init;
		const(void*)[2] _GODOT_args = [cast(void*)(&port), cast(void*)(&bind_address), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	bool is_connection_available() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("TCP_Server", "is_connection_available");
		bool _GODOT_ret = bool.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	StreamPeerTCP take_connection()
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("TCP_Server", "take_connection");
		StreamPeerTCP _GODOT_ret = StreamPeerTCP.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void stop()
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("TCP_Server", "stop");
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null);
	}
}
