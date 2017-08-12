module godot.packetpeerudp;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.object;
import godot.classdb;
import godot.packetpeer;
@GodotBaseClass struct PacketPeerUDP
{
	static immutable string _GODOT_internal_name = "PacketPeerUDP";
public:
	union { godot_object _godot_object; PacketPeer base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	package(godot) void* opCast(T : void*)() const { return cast(void*)_godot_object.ptr; }
	godot_object opCast(T : godot_object)() const { return cast(godot_object)_godot_object; }
	bool opEquals(in PacketPeerUDP other) const { return _godot_object.ptr is other._godot_object.ptr; }
	PacketPeerUDP opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	bool opCast(T : bool)() const { return _godot_object.ptr !is null; }
	inout(T) opCast(T)() inout if(isGodotBaseClass!T)
	{
		static assert(staticIndexOf!(PacketPeerUDP, T.BaseClasses) != -1, "Godot class "~T.stringof~" does not inherit PacketPeerUDP");
		if(_godot_object.ptr is null) return T.init;
		String c = String(T._GODOT_internal_name);
		if(is_class(c)) return inout(T)(_godot_object);
		return T.init;
	}
	inout(T) opCast(T)() inout if(extendsGodotBaseClass!T)
	{
		static assert(is(typeof(T.owner) : PacketPeerUDP) || staticIndexOf!(PacketPeerUDP, typeof(T.owner).BaseClasses) != -1, "D class "~T.stringof~" does not extend PacketPeerUDP");
		if(_godot_object.ptr is null) return null;
		if(has_method(String(`_GDNATIVE_D_typeid`)))
		{
			Object o = cast(Object)godot_nativescript_get_userdata(opCast!godot_object);
			return cast(inout(T))o;
		}
		return null;
	}
	static PacketPeerUDP _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("PacketPeerUDP");
		if(constructor is null) return typeof(this).init;
		return cast(PacketPeerUDP)(constructor());
	}
	GodotError listen(in int port, in String bind_address = "*", in int recv_buf_size = 65536)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("PacketPeerUDP", "listen");
		GodotError _GODOT_ret = GodotError.init;
		const(void*)[3] _GODOT_args = [cast(void*)(&port), cast(void*)(&bind_address), cast(void*)(&recv_buf_size), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void close()
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("PacketPeerUDP", "close");
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null);
	}
	GodotError wait()
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("PacketPeerUDP", "wait");
		GodotError _GODOT_ret = GodotError.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	bool is_listening() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("PacketPeerUDP", "is_listening");
		bool _GODOT_ret = bool.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	String get_packet_ip() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("PacketPeerUDP", "get_packet_ip");
		String _GODOT_ret = String.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	int get_packet_port() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("PacketPeerUDP", "get_packet_port");
		int _GODOT_ret = int.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	int set_dest_address(in String host, in int port)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("PacketPeerUDP", "set_dest_address");
		int _GODOT_ret = int.init;
		const(void*)[2] _GODOT_args = [cast(void*)(&host), cast(void*)(&port), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
}
