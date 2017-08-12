module godot.networkedmultiplayerpeer;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.object;
import godot.packetpeer;
@GodotBaseClass struct NetworkedMultiplayerPeer
{
	static immutable string _GODOT_internal_name = "NetworkedMultiplayerPeer";
public:
	union { godot_object _godot_object; PacketPeer base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	package(godot) void* opCast(T : void*)() const { return cast(void*)_godot_object.ptr; }
	godot_object opCast(T : godot_object)() const { return cast(godot_object)_godot_object; }
	bool opEquals(in NetworkedMultiplayerPeer other) const { return _godot_object.ptr is other._godot_object.ptr; }
	NetworkedMultiplayerPeer opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	bool opCast(T : bool)() const { return _godot_object.ptr !is null; }
	inout(T) opCast(T)() inout if(isGodotBaseClass!T)
	{
		static assert(staticIndexOf!(NetworkedMultiplayerPeer, T.BaseClasses) != -1, "Godot class "~T.stringof~" does not inherit NetworkedMultiplayerPeer");
		if(_godot_object.ptr is null) return T.init;
		String c = String(T._GODOT_internal_name);
		if(is_class(c)) return inout(T)(_godot_object);
		return T.init;
	}
	inout(T) opCast(T)() inout if(extendsGodotBaseClass!T)
	{
		static assert(is(typeof(T.owner) : NetworkedMultiplayerPeer) || staticIndexOf!(NetworkedMultiplayerPeer, typeof(T.owner).BaseClasses) != -1, "D class "~T.stringof~" does not extend NetworkedMultiplayerPeer");
		if(_godot_object.ptr is null) return null;
		if(has_method(String(`_GDNATIVE_D_typeid`)))
		{
			Object o = cast(Object)godot_nativescript_get_userdata(opCast!godot_object);
			return cast(inout(T))o;
		}
		return null;
	}
	static NetworkedMultiplayerPeer _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("NetworkedMultiplayerPeer");
		if(constructor is null) return typeof(this).init;
		return cast(NetworkedMultiplayerPeer)(constructor());
	}
	enum int CONNECTION_CONNECTED = 2;
	enum int TRANSFER_MODE_RELIABLE = 2;
	enum int CONNECTION_CONNECTING = 1;
	enum int TRANSFER_MODE_UNRELIABLE = 0;
	enum int CONNECTION_DISCONNECTED = 0;
	enum int TARGET_PEER_BROADCAST = 0;
	enum int TARGET_PEER_SERVER = 1;
	enum int TRANSFER_MODE_UNRELIABLE_ORDERED = 1;
	void set_transfer_mode(in int mode)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("NetworkedMultiplayerPeer", "set_transfer_mode");
		const(void*)[1] _GODOT_args = [cast(void*)(&mode), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void set_target_peer(in int id)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("NetworkedMultiplayerPeer", "set_target_peer");
		const(void*)[1] _GODOT_args = [cast(void*)(&id), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	int get_packet_peer() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("NetworkedMultiplayerPeer", "get_packet_peer");
		int _GODOT_ret = int.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void poll()
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("NetworkedMultiplayerPeer", "poll");
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null);
	}
	int get_connection_status() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("NetworkedMultiplayerPeer", "get_connection_status");
		int _GODOT_ret = int.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	int get_unique_id() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("NetworkedMultiplayerPeer", "get_unique_id");
		int _GODOT_ret = int.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_refuse_new_connections(in bool enable)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("NetworkedMultiplayerPeer", "set_refuse_new_connections");
		const(void*)[1] _GODOT_args = [cast(void*)(&enable), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	bool is_refusing_new_connections() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("NetworkedMultiplayerPeer", "is_refusing_new_connections");
		bool _GODOT_ret = bool.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
}
