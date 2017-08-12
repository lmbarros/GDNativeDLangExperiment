module godot.streampeerssl;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.object;
import godot.classdb;
import godot.streampeer;
@GodotBaseClass struct StreamPeerSSL
{
	static immutable string _GODOT_internal_name = "StreamPeerSSL";
public:
	union { godot_object _godot_object; StreamPeer base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	package(godot) void* opCast(T : void*)() const { return cast(void*)_godot_object.ptr; }
	godot_object opCast(T : godot_object)() const { return cast(godot_object)_godot_object; }
	bool opEquals(in StreamPeerSSL other) const { return _godot_object.ptr is other._godot_object.ptr; }
	StreamPeerSSL opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	bool opCast(T : bool)() const { return _godot_object.ptr !is null; }
	inout(T) opCast(T)() inout if(isGodotBaseClass!T)
	{
		static assert(staticIndexOf!(StreamPeerSSL, T.BaseClasses) != -1, "Godot class "~T.stringof~" does not inherit StreamPeerSSL");
		if(_godot_object.ptr is null) return T.init;
		String c = String(T._GODOT_internal_name);
		if(is_class(c)) return inout(T)(_godot_object);
		return T.init;
	}
	inout(T) opCast(T)() inout if(extendsGodotBaseClass!T)
	{
		static assert(is(typeof(T.owner) : StreamPeerSSL) || staticIndexOf!(StreamPeerSSL, typeof(T.owner).BaseClasses) != -1, "D class "~T.stringof~" does not extend StreamPeerSSL");
		if(_godot_object.ptr is null) return null;
		if(has_method(String(`_GDNATIVE_D_typeid`)))
		{
			Object o = cast(Object)godot_nativescript_get_userdata(opCast!godot_object);
			return cast(inout(T))o;
		}
		return null;
	}
	static StreamPeerSSL _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("StreamPeerSSL");
		if(constructor is null) return typeof(this).init;
		return cast(StreamPeerSSL)(constructor());
	}
	enum int STATUS_ERROR_HOSTNAME_MISMATCH = 3;
	enum int STATUS_DISCONNECTED = 0;
	enum int STATUS_CONNECTED = 1;
	enum int STATUS_ERROR_NO_CERTIFICATE = 2;
	GodotError accept_stream(in StreamPeer stream)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("StreamPeerSSL", "accept_stream");
		GodotError _GODOT_ret = GodotError.init;
		const(void*)[1] _GODOT_args = [cast(void*)(stream), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	GodotError connect_to_stream(in StreamPeer stream, in bool validate_certs = false, in String for_hostname = String.init)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("StreamPeerSSL", "connect_to_stream");
		GodotError _GODOT_ret = GodotError.init;
		const(void*)[3] _GODOT_args = [cast(void*)(stream), cast(void*)(&validate_certs), cast(void*)(&for_hostname), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	int get_status() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("StreamPeerSSL", "get_status");
		int _GODOT_ret = int.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void disconnect_from_stream()
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("StreamPeerSSL", "disconnect_from_stream");
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null);
	}
}
