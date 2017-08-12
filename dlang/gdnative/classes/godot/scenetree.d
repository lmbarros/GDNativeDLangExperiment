module godot.scenetree;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.object;
import godot.classdb;
import godot.mainloop;
import godot.viewport;
import godot.node;
import godot.scenetreetimer;
import godot.packedscene;
import godot.networkedmultiplayerpeer;
@GodotBaseClass struct SceneTree
{
	static immutable string _GODOT_internal_name = "SceneTree";
public:
	union { godot_object _godot_object; MainLoop base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	package(godot) void* opCast(T : void*)() const { return cast(void*)_godot_object.ptr; }
	godot_object opCast(T : godot_object)() const { return cast(godot_object)_godot_object; }
	bool opEquals(in SceneTree other) const { return _godot_object.ptr is other._godot_object.ptr; }
	SceneTree opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	bool opCast(T : bool)() const { return _godot_object.ptr !is null; }
	inout(T) opCast(T)() inout if(isGodotBaseClass!T)
	{
		static assert(staticIndexOf!(SceneTree, T.BaseClasses) != -1, "Godot class "~T.stringof~" does not inherit SceneTree");
		if(_godot_object.ptr is null) return T.init;
		String c = String(T._GODOT_internal_name);
		if(is_class(c)) return inout(T)(_godot_object);
		return T.init;
	}
	inout(T) opCast(T)() inout if(extendsGodotBaseClass!T)
	{
		static assert(is(typeof(T.owner) : SceneTree) || staticIndexOf!(SceneTree, typeof(T.owner).BaseClasses) != -1, "D class "~T.stringof~" does not extend SceneTree");
		if(_godot_object.ptr is null) return null;
		if(has_method(String(`_GDNATIVE_D_typeid`)))
		{
			Object o = cast(Object)godot_nativescript_get_userdata(opCast!godot_object);
			return cast(inout(T))o;
		}
		return null;
	}
	static SceneTree _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("SceneTree");
		if(constructor is null) return typeof(this).init;
		return cast(SceneTree)(constructor());
	}
	enum int STRETCH_MODE_2D = 1;
	enum int STRETCH_ASPECT_KEEP = 1;
	enum int STRETCH_MODE_DISABLED = 0;
	enum int STRETCH_MODE_VIEWPORT = 2;
	enum int STRETCH_ASPECT_IGNORE = 0;
	enum int STRETCH_ASPECT_KEEP_WIDTH = 2;
	enum int STRETCH_ASPECT_KEEP_HEIGHT = 3;
	enum int GROUP_CALL_DEFAULT = 0;
	enum int GROUP_CALL_UNIQUE = 4;
	enum int GROUP_CALL_REALTIME = 2;
	enum int GROUP_CALL_REVERSE = 1;
	Viewport get_root() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("SceneTree", "get_root");
		Viewport _GODOT_ret = Viewport.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	bool has_group(in String name) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("SceneTree", "has_group");
		bool _GODOT_ret = bool.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&name), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_auto_accept_quit(in bool enabled)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("SceneTree", "set_auto_accept_quit");
		const(void*)[1] _GODOT_args = [cast(void*)(&enabled), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void set_editor_hint(in bool enable)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("SceneTree", "set_editor_hint");
		const(void*)[1] _GODOT_args = [cast(void*)(&enable), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	bool is_editor_hint() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("SceneTree", "is_editor_hint");
		bool _GODOT_ret = bool.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_debug_collisions_hint(in bool enable)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("SceneTree", "set_debug_collisions_hint");
		const(void*)[1] _GODOT_args = [cast(void*)(&enable), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	bool is_debugging_collisions_hint() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("SceneTree", "is_debugging_collisions_hint");
		bool _GODOT_ret = bool.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_debug_navigation_hint(in bool enable)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("SceneTree", "set_debug_navigation_hint");
		const(void*)[1] _GODOT_args = [cast(void*)(&enable), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	bool is_debugging_navigation_hint() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("SceneTree", "is_debugging_navigation_hint");
		bool _GODOT_ret = bool.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_edited_scene_root(in Node scene)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("SceneTree", "set_edited_scene_root");
		const(void*)[1] _GODOT_args = [cast(void*)(scene), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	Node get_edited_scene_root() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("SceneTree", "get_edited_scene_root");
		Node _GODOT_ret = Node.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_pause(in bool enable)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("SceneTree", "set_pause");
		const(void*)[1] _GODOT_args = [cast(void*)(&enable), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	bool is_paused() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("SceneTree", "is_paused");
		bool _GODOT_ret = bool.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_input_as_handled()
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("SceneTree", "set_input_as_handled");
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null);
	}
	bool is_input_handled()
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("SceneTree", "is_input_handled");
		bool _GODOT_ret = bool.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	SceneTreeTimer create_timer(in float time_sec, in bool pause_mode_process = true)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("SceneTree", "create_timer");
		SceneTreeTimer _GODOT_ret = SceneTreeTimer.init;
		const(void*)[2] _GODOT_args = [cast(void*)(&time_sec), cast(void*)(&pause_mode_process), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	int get_node_count() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("SceneTree", "get_node_count");
		int _GODOT_ret = int.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	int get_frame() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("SceneTree", "get_frame");
		int _GODOT_ret = int.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void quit()
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("SceneTree", "quit");
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null);
	}
	void set_screen_stretch(in int mode, in int aspect, in Vector2 minsize, in int shrink = 1)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("SceneTree", "set_screen_stretch");
		const(void*)[4] _GODOT_args = [cast(void*)(&mode), cast(void*)(&aspect), cast(void*)(&minsize), cast(void*)(&shrink), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void queue_delete(in GodotObject obj)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("SceneTree", "queue_delete");
		const(void*)[1] _GODOT_args = [cast(void*)(obj), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void call_group_flags(Args...)(in int flags, in String group, in String method, Args _GODOT_var_args)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(flags);
		_GODOT_args.append(group);
		_GODOT_args.append(method);
		foreach(vai, VA; Args)
		{
			_GODOT_args.append(_GODOT_var_args[vai]);
		}
		String _GODOT_method_name = String("call_group_flags");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	void notify_group_flags(in int call_flags, in String group, in int notification)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("SceneTree", "notify_group_flags");
		const(void*)[3] _GODOT_args = [cast(void*)(&call_flags), cast(void*)(&group), cast(void*)(&notification), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void set_group_flags(in int call_flags, in String group, in String property, in Variant value)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("SceneTree", "set_group_flags");
		const(void*)[4] _GODOT_args = [cast(void*)(&call_flags), cast(void*)(&group), cast(void*)(&property), cast(void*)(&value), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void call_group(Args...)(in String group, in String method, Args _GODOT_var_args)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(group);
		_GODOT_args.append(method);
		foreach(vai, VA; Args)
		{
			_GODOT_args.append(_GODOT_var_args[vai]);
		}
		String _GODOT_method_name = String("call_group");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	void notify_group(in String call_flags, in int group)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("SceneTree", "notify_group");
		const(void*)[2] _GODOT_args = [cast(void*)(&call_flags), cast(void*)(&group), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void set_group(in String call_flags, in String group, in Variant property)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("SceneTree", "set_group");
		const(void*)[3] _GODOT_args = [cast(void*)(&call_flags), cast(void*)(&group), cast(void*)(&property), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	Array get_nodes_in_group(in String group)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("SceneTree", "get_nodes_in_group");
		Array _GODOT_ret = Array.empty_array;
		const(void*)[1] _GODOT_args = [cast(void*)(&group), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_current_scene(in Node child_node)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("SceneTree", "set_current_scene");
		const(void*)[1] _GODOT_args = [cast(void*)(child_node), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	Node get_current_scene() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("SceneTree", "get_current_scene");
		Node _GODOT_ret = Node.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	int change_scene(in String path)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("SceneTree", "change_scene");
		int _GODOT_ret = int.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&path), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	int change_scene_to(in PackedScene packed_scene)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("SceneTree", "change_scene_to");
		int _GODOT_ret = int.init;
		const(void*)[1] _GODOT_args = [cast(void*)(packed_scene), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	int reload_current_scene()
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("SceneTree", "reload_current_scene");
		int _GODOT_ret = int.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void _change_scene(in GodotObject arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_change_scene");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	void set_network_peer(in NetworkedMultiplayerPeer peer)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("SceneTree", "set_network_peer");
		const(void*)[1] _GODOT_args = [cast(void*)(peer), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	bool is_network_server() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("SceneTree", "is_network_server");
		bool _GODOT_ret = bool.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	bool has_network_peer() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("SceneTree", "has_network_peer");
		bool _GODOT_ret = bool.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	PoolIntArray get_network_connected_peers() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("SceneTree", "get_network_connected_peers");
		PoolIntArray _GODOT_ret = PoolIntArray.empty;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	int get_network_unique_id() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("SceneTree", "get_network_unique_id");
		int _GODOT_ret = int.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_refuse_new_network_connections(in bool refuse)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("SceneTree", "set_refuse_new_network_connections");
		const(void*)[1] _GODOT_args = [cast(void*)(&refuse), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	bool is_refusing_new_network_connections() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("SceneTree", "is_refusing_new_network_connections");
		bool _GODOT_ret = bool.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void _network_peer_connected(in int arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_network_peer_connected");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	void _network_peer_disconnected(in int arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_network_peer_disconnected");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	void _connected_to_server()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_connected_to_server");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	void _connection_failed()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_connection_failed");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	void _server_disconnected()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_server_disconnected");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
}
