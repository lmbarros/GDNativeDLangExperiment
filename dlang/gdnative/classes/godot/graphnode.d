module godot.graphnode;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.object;
import godot.classdb;
import godot.container;
@GodotBaseClass struct GraphNode
{
	static immutable string _GODOT_internal_name = "GraphNode";
public:
	union { godot_object _godot_object; Container base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	package(godot) void* opCast(T : void*)() const { return cast(void*)_godot_object.ptr; }
	godot_object opCast(T : godot_object)() const { return cast(godot_object)_godot_object; }
	bool opEquals(in GraphNode other) const { return _godot_object.ptr is other._godot_object.ptr; }
	GraphNode opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	bool opCast(T : bool)() const { return _godot_object.ptr !is null; }
	inout(T) opCast(T)() inout if(isGodotBaseClass!T)
	{
		static assert(staticIndexOf!(GraphNode, T.BaseClasses) != -1, "Godot class "~T.stringof~" does not inherit GraphNode");
		if(_godot_object.ptr is null) return T.init;
		String c = String(T._GODOT_internal_name);
		if(is_class(c)) return inout(T)(_godot_object);
		return T.init;
	}
	inout(T) opCast(T)() inout if(extendsGodotBaseClass!T)
	{
		static assert(is(typeof(T.owner) : GraphNode) || staticIndexOf!(GraphNode, typeof(T.owner).BaseClasses) != -1, "D class "~T.stringof~" does not extend GraphNode");
		if(_godot_object.ptr is null) return null;
		if(has_method(String(`_GDNATIVE_D_typeid`)))
		{
			Object o = cast(Object)godot_nativescript_get_userdata(opCast!godot_object);
			return cast(inout(T))o;
		}
		return null;
	}
	static GraphNode _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("GraphNode");
		if(constructor is null) return typeof(this).init;
		return cast(GraphNode)(constructor());
	}
	enum int OVERLAY_BREAKPOINT = 1;
	enum int OVERLAY_POSITION = 2;
	enum int OVERLAY_DISABLED = 0;
	void set_title(in String title)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("GraphNode", "set_title");
		const(void*)[1] _GODOT_args = [cast(void*)(&title), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	String get_title() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("GraphNode", "get_title");
		String _GODOT_ret = String.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void _gui_input(in GodotObject arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_gui_input");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	void set_slot(in int idx, in bool enable_left, in int type_left, in Color color_left, in bool enable_right, in int type_right, in Color color_right, in GodotObject custom_left = GodotObject.init, in GodotObject custom_right = GodotObject.init)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("GraphNode", "set_slot");
		const(void*)[9] _GODOT_args = [cast(void*)(&idx), cast(void*)(&enable_left), cast(void*)(&type_left), cast(void*)(&color_left), cast(void*)(&enable_right), cast(void*)(&type_right), cast(void*)(&color_right), cast(void*)(custom_left), cast(void*)(custom_right), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void clear_slot(in int idx)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("GraphNode", "clear_slot");
		const(void*)[1] _GODOT_args = [cast(void*)(&idx), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void clear_all_slots()
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("GraphNode", "clear_all_slots");
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null);
	}
	bool is_slot_enabled_left(in int idx) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("GraphNode", "is_slot_enabled_left");
		bool _GODOT_ret = bool.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&idx), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	int get_slot_type_left(in int idx) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("GraphNode", "get_slot_type_left");
		int _GODOT_ret = int.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&idx), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	Color get_slot_color_left(in int idx) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("GraphNode", "get_slot_color_left");
		Color _GODOT_ret = Color.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&idx), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	bool is_slot_enabled_right(in int idx) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("GraphNode", "is_slot_enabled_right");
		bool _GODOT_ret = bool.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&idx), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	int get_slot_type_right(in int idx) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("GraphNode", "get_slot_type_right");
		int _GODOT_ret = int.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&idx), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	Color get_slot_color_right(in int idx) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("GraphNode", "get_slot_color_right");
		Color _GODOT_ret = Color.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&idx), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_offset(in Vector2 offset)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("GraphNode", "set_offset");
		const(void*)[1] _GODOT_args = [cast(void*)(&offset), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	Vector2 get_offset() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("GraphNode", "get_offset");
		Vector2 _GODOT_ret = Vector2.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_comment(in bool comment)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("GraphNode", "set_comment");
		const(void*)[1] _GODOT_args = [cast(void*)(&comment), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	bool is_comment() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("GraphNode", "is_comment");
		bool _GODOT_ret = bool.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_resizeable(in bool resizeable)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("GraphNode", "set_resizeable");
		const(void*)[1] _GODOT_args = [cast(void*)(&resizeable), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	bool is_resizeable() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("GraphNode", "is_resizeable");
		bool _GODOT_ret = bool.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_selected(in bool selected)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("GraphNode", "set_selected");
		const(void*)[1] _GODOT_args = [cast(void*)(&selected), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	bool is_selected()
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("GraphNode", "is_selected");
		bool _GODOT_ret = bool.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	int get_connection_output_count()
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("GraphNode", "get_connection_output_count");
		int _GODOT_ret = int.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	int get_connection_input_count()
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("GraphNode", "get_connection_input_count");
		int _GODOT_ret = int.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	Vector2 get_connection_output_pos(in int idx)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("GraphNode", "get_connection_output_pos");
		Vector2 _GODOT_ret = Vector2.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&idx), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	int get_connection_output_type(in int idx)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("GraphNode", "get_connection_output_type");
		int _GODOT_ret = int.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&idx), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	Color get_connection_output_color(in int idx)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("GraphNode", "get_connection_output_color");
		Color _GODOT_ret = Color.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&idx), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	Vector2 get_connection_input_pos(in int idx)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("GraphNode", "get_connection_input_pos");
		Vector2 _GODOT_ret = Vector2.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&idx), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	int get_connection_input_type(in int idx)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("GraphNode", "get_connection_input_type");
		int _GODOT_ret = int.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&idx), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	Color get_connection_input_color(in int idx)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("GraphNode", "get_connection_input_color");
		Color _GODOT_ret = Color.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&idx), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_show_close_button(in bool show)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("GraphNode", "set_show_close_button");
		const(void*)[1] _GODOT_args = [cast(void*)(&show), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	bool is_close_button_visible() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("GraphNode", "is_close_button_visible");
		bool _GODOT_ret = bool.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_overlay(in int overlay)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("GraphNode", "set_overlay");
		const(void*)[1] _GODOT_args = [cast(void*)(&overlay), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	int get_overlay() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("GraphNode", "get_overlay");
		int _GODOT_ret = int.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
}
