module godot.graphedit;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.object;
import godot.classdb;
import godot.control;
import godot.node;
@GodotBaseClass struct GraphEdit
{
	static immutable string _GODOT_internal_name = "GraphEdit";
public:
	union { godot_object _godot_object; Control base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	package(godot) void* opCast(T : void*)() const { return cast(void*)_godot_object.ptr; }
	godot_object opCast(T : godot_object)() const { return cast(godot_object)_godot_object; }
	bool opEquals(in GraphEdit other) const { return _godot_object.ptr is other._godot_object.ptr; }
	GraphEdit opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	bool opCast(T : bool)() const { return _godot_object.ptr !is null; }
	inout(T) opCast(T)() inout if(isGodotBaseClass!T)
	{
		static assert(staticIndexOf!(GraphEdit, T.BaseClasses) != -1, "Godot class "~T.stringof~" does not inherit GraphEdit");
		if(_godot_object.ptr is null) return T.init;
		String c = String(T._GODOT_internal_name);
		if(is_class(c)) return inout(T)(_godot_object);
		return T.init;
	}
	inout(T) opCast(T)() inout if(extendsGodotBaseClass!T)
	{
		static assert(is(typeof(T.owner) : GraphEdit) || staticIndexOf!(GraphEdit, typeof(T.owner).BaseClasses) != -1, "D class "~T.stringof~" does not extend GraphEdit");
		if(_godot_object.ptr is null) return null;
		if(has_method(String(`_GDNATIVE_D_typeid`)))
		{
			Object o = cast(Object)godot_nativescript_get_userdata(opCast!godot_object);
			return cast(inout(T))o;
		}
		return null;
	}
	static GraphEdit _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("GraphEdit");
		if(constructor is null) return typeof(this).init;
		return cast(GraphEdit)(constructor());
	}
	GodotError connect_node(in String from, in int from_port, in String to, in int to_port)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("GraphEdit", "connect_node");
		GodotError _GODOT_ret = GodotError.init;
		const(void*)[4] _GODOT_args = [cast(void*)(&from), cast(void*)(&from_port), cast(void*)(&to), cast(void*)(&to_port), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	bool is_node_connected(in String from, in int from_port, in String to, in int to_port)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("GraphEdit", "is_node_connected");
		bool _GODOT_ret = bool.init;
		const(void*)[4] _GODOT_args = [cast(void*)(&from), cast(void*)(&from_port), cast(void*)(&to), cast(void*)(&to_port), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void disconnect_node(in String from, in int from_port, in String to, in int to_port)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("GraphEdit", "disconnect_node");
		const(void*)[4] _GODOT_args = [cast(void*)(&from), cast(void*)(&from_port), cast(void*)(&to), cast(void*)(&to_port), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	Array get_connection_list() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("GraphEdit", "get_connection_list");
		Array _GODOT_ret = Array.empty_array;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	Vector2 get_scroll_ofs() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("GraphEdit", "get_scroll_ofs");
		Vector2 _GODOT_ret = Vector2.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_scroll_ofs(in Vector2 ofs)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("GraphEdit", "set_scroll_ofs");
		const(void*)[1] _GODOT_args = [cast(void*)(&ofs), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void set_zoom(in float p_zoom)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("GraphEdit", "set_zoom");
		const(void*)[1] _GODOT_args = [cast(void*)(&p_zoom), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	float get_zoom() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("GraphEdit", "get_zoom");
		float _GODOT_ret = float.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_snap(in int pixels)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("GraphEdit", "set_snap");
		const(void*)[1] _GODOT_args = [cast(void*)(&pixels), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	int get_snap() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("GraphEdit", "get_snap");
		int _GODOT_ret = int.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_use_snap(in bool enable)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("GraphEdit", "set_use_snap");
		const(void*)[1] _GODOT_args = [cast(void*)(&enable), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	bool is_using_snap() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("GraphEdit", "is_using_snap");
		bool _GODOT_ret = bool.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_right_disconnects(in bool enable)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("GraphEdit", "set_right_disconnects");
		const(void*)[1] _GODOT_args = [cast(void*)(&enable), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	bool is_right_disconnects_enabled() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("GraphEdit", "is_right_disconnects_enabled");
		bool _GODOT_ret = bool.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void _graph_node_moved(in GodotObject arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_graph_node_moved");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	void _graph_node_raised(in GodotObject arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_graph_node_raised");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	void _top_layer_input(in GodotObject arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_top_layer_input");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	void _top_layer_draw()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_top_layer_draw");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	void _scroll_moved(in float arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_scroll_moved");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	void _zoom_minus()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_zoom_minus");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	void _zoom_reset()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_zoom_reset");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	void _zoom_plus()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_zoom_plus");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	void _snap_toggled()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_snap_toggled");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	void _snap_value_changed(in float arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_snap_value_changed");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	void _gui_input(in GodotObject arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_gui_input");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	void _update_scroll_offset()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_update_scroll_offset");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	void _connections_layer_draw()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_connections_layer_draw");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	void set_selected(in Node node)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("GraphEdit", "set_selected");
		const(void*)[1] _GODOT_args = [cast(void*)(node), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
}
