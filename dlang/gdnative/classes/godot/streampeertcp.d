module godot.streampeertcp;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.object;
import godot.classdb;
import godot.streampeer;
@GodotBaseClass struct StreamPeerTCP
{
	static immutable string _GODOT_internal_name = "StreamPeerTCP";
public:
	union { godot_object _godot_object; StreamPeer base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	package(godot) void* opCast(T : void*)() const { return cast(void*)_godot_object.ptr; }
	godot_object opCast(T : godot_object)() const { return cast(godot_object)_godot_object; }
	bool opEquals(in StreamPeerTCP other) const { return _godot_object.ptr is other._godot_object.ptr; }
	StreamPeerTCP opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	bool opCast(T : bool)() const { return _godot_object.ptr !is null; }
	inout(T) opCast(T)() inout if(isGodotBaseClass!T)
	{
		static assert(staticIndexOf!(StreamPeerTCP, T.BaseClasses) != -1, "Godot class "~T.stringof~" does not inherit StreamPeerTCP");
		if(_godot_object.ptr is null) return T.init;
		String c = String(T._GODOT_internal_name);
		if(is_class(c)) return inout(T)(_godot_object);
		return T.init;
	}
	inout(T) opCast(T)() inout if(extendsGodotBaseClass!T)
	{
		static assert(is(typeof(T.owner) : StreamPeerTCP) || staticIndexOf!(StreamPeerTCP, typeof(T.owner).BaseClasses) != -1, "D class "~T.stringof~" does not extend StreamPeerTCP");
		if(_godot_object.ptr is null) return null;
		if(has_method(String(`_GDNATIVE_D_typeid`)))
		{
			Object o = cast(Object)godot_nativescript_get_userdata(opCast!godot_object);
			return cast(inout(T))o;
		}
		return null;
	}
	static StreamPeerTCP _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("StreamPeerTCP");
		if(constructor is null) return typeof(this).init;
		return cast(StreamPeerTCP)(constructor());
	}
	enum int STATUS_CONNECTED = 2;
	enum int STATUS_ERROR = 3;
	enum int STATUS_CONNECTING = 1;
	enum int STATUS_NONE = 0;
	int connect_to_host(in String host, in int port)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("StreamPeerTCP", "connect_to_host");
		int _GODOT_ret = int.init;
		const(void*)[2] _GODOT_args = [cast(void*)(&host), cast(void*)(&port), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	bool is_connected_to_host() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("StreamPeerTCP", "is_connected_to_host");
		bool _GODOT_ret = bool.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	int get_status() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("StreamPeerTCP", "get_status");
		int _GODOT_ret = int.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	String get_connected_host() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("StreamPeerTCP", "get_connected_host");
		String _GODOT_ret = String.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	int get_connected_port() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("StreamPeerTCP", "get_connected_port");
		int _GODOT_ret = int.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void disconnect_from_host()
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("StreamPeerTCP", "disconnect_from_host");
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null);
	}
}
