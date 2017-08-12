module godot.control;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.object;
import godot.classdb;
import godot.canvasitem;
import godot.inputevent;
import godot.theme;
import godot.texture;
import godot.shader;
import godot.stylebox;
import godot.font;
@GodotBaseClass struct Control
{
	static immutable string _GODOT_internal_name = "Control";
public:
	union { godot_object _godot_object; CanvasItem base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	package(godot) void* opCast(T : void*)() const { return cast(void*)_godot_object.ptr; }
	godot_object opCast(T : godot_object)() const { return cast(godot_object)_godot_object; }
	bool opEquals(in Control other) const { return _godot_object.ptr is other._godot_object.ptr; }
	Control opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	bool opCast(T : bool)() const { return _godot_object.ptr !is null; }
	inout(T) opCast(T)() inout if(isGodotBaseClass!T)
	{
		static assert(staticIndexOf!(Control, T.BaseClasses) != -1, "Godot class "~T.stringof~" does not inherit Control");
		if(_godot_object.ptr is null) return T.init;
		String c = String(T._GODOT_internal_name);
		if(is_class(c)) return inout(T)(_godot_object);
		return T.init;
	}
	inout(T) opCast(T)() inout if(extendsGodotBaseClass!T)
	{
		static assert(is(typeof(T.owner) : Control) || staticIndexOf!(Control, typeof(T.owner).BaseClasses) != -1, "D class "~T.stringof~" does not extend Control");
		if(_godot_object.ptr is null) return null;
		if(has_method(String(`_GDNATIVE_D_typeid`)))
		{
			Object o = cast(Object)godot_nativescript_get_userdata(opCast!godot_object);
			return cast(inout(T))o;
		}
		return null;
	}
	static Control _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("Control");
		if(constructor is null) return typeof(this).init;
		return cast(Control)(constructor());
	}
	enum int FOCUS_ALL = 2;
	enum int CURSOR_HSPLIT = 15;
	enum int CURSOR_FDIAGSIZE = 12;
	enum int NOTIFICATION_THEME_CHANGED = 45;
	enum int NOTIFICATION_MODAL_CLOSE = 46;
	enum int CURSOR_VSIZE = 9;
	enum int CURSOR_IBEAM = 1;
	enum int SIZE_SHRINK_END = 8;
	enum int SIZE_FILL = 1;
	enum int SIZE_SHRINK_CENTER = 4;
	enum int CURSOR_ARROW = 0;
	enum int CURSOR_DRAG = 6;
	enum int CURSOR_BDIAGSIZE = 11;
	enum int GROW_DIRECTION_BEGIN = 0;
	enum int ANCHOR_BEGIN = 0;
	enum int CURSOR_FORBIDDEN = 8;
	enum int FOCUS_CLICK = 1;
	enum int CURSOR_CROSS = 3;
	enum int SIZE_EXPAND_FILL = 3;
	enum int SIZE_EXPAND = 2;
	enum int NOTIFICATION_FOCUS_ENTER = 43;
	enum int CURSOR_WAIT = 4;
	enum int NOTIFICATION_RESIZED = 40;
	enum int NOTIFICATION_MOUSE_ENTER = 41;
	enum int CURSOR_POINTING_HAND = 2;
	enum int CURSOR_HSIZE = 10;
	enum int CURSOR_BUSY = 5;
	enum int NOTIFICATION_MOUSE_EXIT = 42;
	enum int ANCHOR_END = 1;
	enum int CURSOR_VSPLIT = 14;
	enum int NOTIFICATION_FOCUS_EXIT = 44;
	enum int GROW_DIRECTION_END = 1;
	enum int FOCUS_NONE = 0;
	enum int ANCHOR_CENTER = 2;
	enum int MOUSE_FILTER_STOP = 0;
	enum int CURSOR_CAN_DROP = 7;
	enum int MOUSE_FILTER_IGNORE = 2;
	enum int CURSOR_HELP = 16;
	enum int CURSOR_MOVE = 13;
	enum int MOUSE_FILTER_PASS = 1;
	void _gui_input(in InputEvent event)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(event);
		String _GODOT_method_name = String("_gui_input");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	Vector2 _get_minimum_size()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_get_minimum_size");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(Vector2);
	}
	GodotObject get_drag_data(in Vector2 pos)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(pos);
		String _GODOT_method_name = String("get_drag_data");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(GodotObject);
	}
	bool can_drop_data(in Vector2 pos, in Variant data)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(pos);
		_GODOT_args.append(data);
		String _GODOT_method_name = String("can_drop_data");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(bool);
	}
	void drop_data(in Vector2 pos, in Variant data)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(pos);
		_GODOT_args.append(data);
		String _GODOT_method_name = String("drop_data");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	void has_point(in Vector2 point)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(point);
		String _GODOT_method_name = String("has_point");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	void _size_changed()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_size_changed");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	void _update_minimum_size()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_update_minimum_size");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	void accept_event()
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Control", "accept_event");
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null);
	}
	Vector2 get_minimum_size() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Control", "get_minimum_size");
		Vector2 _GODOT_ret = Vector2.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	Vector2 get_combined_minimum_size() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Control", "get_combined_minimum_size");
		Vector2 _GODOT_ret = Vector2.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_anchor(in int margin, in int anchor_mode, in bool keep_margin = false)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Control", "set_anchor");
		const(void*)[3] _GODOT_args = [cast(void*)(&margin), cast(void*)(&anchor_mode), cast(void*)(&keep_margin), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void _set_anchor(in int margin, in int anchor_mode)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(margin);
		_GODOT_args.append(anchor_mode);
		String _GODOT_method_name = String("_set_anchor");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	int get_anchor(in int margin) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Control", "get_anchor");
		int _GODOT_ret = int.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&margin), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_margin(in int margin, in float offset)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Control", "set_margin");
		const(void*)[2] _GODOT_args = [cast(void*)(&margin), cast(void*)(&offset), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void set_anchor_and_margin(in int margin, in int anchor_mode, in float offset)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Control", "set_anchor_and_margin");
		const(void*)[3] _GODOT_args = [cast(void*)(&margin), cast(void*)(&anchor_mode), cast(void*)(&offset), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void set_begin(in Vector2 pos)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Control", "set_begin");
		const(void*)[1] _GODOT_args = [cast(void*)(&pos), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void set_end(in Vector2 pos)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Control", "set_end");
		const(void*)[1] _GODOT_args = [cast(void*)(&pos), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void set_position(in Vector2 pos)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Control", "set_position");
		const(void*)[1] _GODOT_args = [cast(void*)(&pos), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void set_size(in Vector2 size)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Control", "set_size");
		const(void*)[1] _GODOT_args = [cast(void*)(&size), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void set_custom_minimum_size(in Vector2 size)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Control", "set_custom_minimum_size");
		const(void*)[1] _GODOT_args = [cast(void*)(&size), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void set_global_position(in Vector2 pos)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Control", "set_global_position");
		const(void*)[1] _GODOT_args = [cast(void*)(&pos), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void set_rotation(in float radians)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Control", "set_rotation");
		const(void*)[1] _GODOT_args = [cast(void*)(&radians), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void set_rotation_deg(in float degrees)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Control", "set_rotation_deg");
		const(void*)[1] _GODOT_args = [cast(void*)(&degrees), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void _set_rotation_deg(in float degrees)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(degrees);
		String _GODOT_method_name = String("_set_rotation_deg");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	void set_scale(in Vector2 scale)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Control", "set_scale");
		const(void*)[1] _GODOT_args = [cast(void*)(&scale), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void set_pivot_offset(in Vector2 pivot_offset)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Control", "set_pivot_offset");
		const(void*)[1] _GODOT_args = [cast(void*)(&pivot_offset), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	float get_margin(in int margin) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Control", "get_margin");
		float _GODOT_ret = float.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&margin), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	Vector2 get_begin() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Control", "get_begin");
		Vector2 _GODOT_ret = Vector2.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	Vector2 get_end() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Control", "get_end");
		Vector2 _GODOT_ret = Vector2.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	Vector2 get_position() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Control", "get_position");
		Vector2 _GODOT_ret = Vector2.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	Vector2 get_size() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Control", "get_size");
		Vector2 _GODOT_ret = Vector2.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	float get_rotation() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Control", "get_rotation");
		float _GODOT_ret = float.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	float get_rotation_deg() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Control", "get_rotation_deg");
		float _GODOT_ret = float.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	float _get_rotation_deg() const
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_get_rotation_deg");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(float);
	}
	Vector2 get_scale() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Control", "get_scale");
		Vector2 _GODOT_ret = Vector2.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	Vector2 get_pivot_offset() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Control", "get_pivot_offset");
		Vector2 _GODOT_ret = Vector2.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	Vector2 get_custom_minimum_size() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Control", "get_custom_minimum_size");
		Vector2 _GODOT_ret = Vector2.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	Vector2 get_parent_area_size() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Control", "get_parent_area_size");
		Vector2 _GODOT_ret = Vector2.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	Vector2 get_global_position() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Control", "get_global_position");
		Vector2 _GODOT_ret = Vector2.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	Rect2 get_rect() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Control", "get_rect");
		Rect2 _GODOT_ret = Rect2.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	Rect2 get_global_rect() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Control", "get_global_rect");
		Rect2 _GODOT_ret = Rect2.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_area_as_parent_rect(in int margin = 0)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Control", "set_area_as_parent_rect");
		const(void*)[1] _GODOT_args = [cast(void*)(&margin), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void show_modal(in bool exclusive = false)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Control", "show_modal");
		const(void*)[1] _GODOT_args = [cast(void*)(&exclusive), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void set_focus_mode(in int mode)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Control", "set_focus_mode");
		const(void*)[1] _GODOT_args = [cast(void*)(&mode), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	int get_focus_mode() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Control", "get_focus_mode");
		int _GODOT_ret = int.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	bool has_focus() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Control", "has_focus");
		bool _GODOT_ret = bool.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void grab_focus()
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Control", "grab_focus");
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null);
	}
	void release_focus()
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Control", "release_focus");
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null);
	}
	Control get_focus_owner() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Control", "get_focus_owner");
		Control _GODOT_ret = Control.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_h_size_flags(in int flags)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Control", "set_h_size_flags");
		const(void*)[1] _GODOT_args = [cast(void*)(&flags), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	int get_h_size_flags() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Control", "get_h_size_flags");
		int _GODOT_ret = int.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_stretch_ratio(in float ratio)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Control", "set_stretch_ratio");
		const(void*)[1] _GODOT_args = [cast(void*)(&ratio), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	float get_stretch_ratio() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Control", "get_stretch_ratio");
		float _GODOT_ret = float.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_v_size_flags(in int flags)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Control", "set_v_size_flags");
		const(void*)[1] _GODOT_args = [cast(void*)(&flags), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	int get_v_size_flags() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Control", "get_v_size_flags");
		int _GODOT_ret = int.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_theme(in Theme theme)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Control", "set_theme");
		const(void*)[1] _GODOT_args = [cast(void*)(theme), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	Theme get_theme() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Control", "get_theme");
		Theme _GODOT_ret = Theme.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void add_icon_override(in String name, in Texture texture)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Control", "add_icon_override");
		const(void*)[2] _GODOT_args = [cast(void*)(&name), cast(void*)(texture), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void add_shader_override(in String name, in Shader shader)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Control", "add_shader_override");
		const(void*)[2] _GODOT_args = [cast(void*)(&name), cast(void*)(shader), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void add_style_override(in String name, in StyleBox stylebox)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Control", "add_style_override");
		const(void*)[2] _GODOT_args = [cast(void*)(&name), cast(void*)(stylebox), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void add_font_override(in String name, in Font font)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Control", "add_font_override");
		const(void*)[2] _GODOT_args = [cast(void*)(&name), cast(void*)(font), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void add_color_override(in String name, in Color color)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Control", "add_color_override");
		const(void*)[2] _GODOT_args = [cast(void*)(&name), cast(void*)(&color), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void add_constant_override(in String name, in int constant)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Control", "add_constant_override");
		const(void*)[2] _GODOT_args = [cast(void*)(&name), cast(void*)(&constant), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	Texture get_icon(in String name, in String type = String.init) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Control", "get_icon");
		Texture _GODOT_ret = Texture.init;
		const(void*)[2] _GODOT_args = [cast(void*)(&name), cast(void*)(&type), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	StyleBox get_stylebox(in String name, in String type = String.init) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Control", "get_stylebox");
		StyleBox _GODOT_ret = StyleBox.init;
		const(void*)[2] _GODOT_args = [cast(void*)(&name), cast(void*)(&type), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	Font get_font(in String name, in String type = String.init) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Control", "get_font");
		Font _GODOT_ret = Font.init;
		const(void*)[2] _GODOT_args = [cast(void*)(&name), cast(void*)(&type), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	Color get_color(in String name, in String type = String.init) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Control", "get_color");
		Color _GODOT_ret = Color.init;
		const(void*)[2] _GODOT_args = [cast(void*)(&name), cast(void*)(&type), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	int get_constant(in String name, in String type = String.init) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Control", "get_constant");
		int _GODOT_ret = int.init;
		const(void*)[2] _GODOT_args = [cast(void*)(&name), cast(void*)(&type), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	bool has_icon_override(in String name) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Control", "has_icon_override");
		bool _GODOT_ret = bool.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&name), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	bool has_stylebox_override(in String name) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Control", "has_stylebox_override");
		bool _GODOT_ret = bool.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&name), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	bool has_font_override(in String name) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Control", "has_font_override");
		bool _GODOT_ret = bool.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&name), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	bool has_color_override(in String name) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Control", "has_color_override");
		bool _GODOT_ret = bool.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&name), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	bool has_constant_override(in String name) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Control", "has_constant_override");
		bool _GODOT_ret = bool.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&name), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	bool has_icon(in String name, in String type = String.init) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Control", "has_icon");
		bool _GODOT_ret = bool.init;
		const(void*)[2] _GODOT_args = [cast(void*)(&name), cast(void*)(&type), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	bool has_stylebox(in String name, in String type = String.init) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Control", "has_stylebox");
		bool _GODOT_ret = bool.init;
		const(void*)[2] _GODOT_args = [cast(void*)(&name), cast(void*)(&type), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	bool has_font(in String name, in String type = String.init) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Control", "has_font");
		bool _GODOT_ret = bool.init;
		const(void*)[2] _GODOT_args = [cast(void*)(&name), cast(void*)(&type), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	bool has_color(in String name, in String type = String.init) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Control", "has_color");
		bool _GODOT_ret = bool.init;
		const(void*)[2] _GODOT_args = [cast(void*)(&name), cast(void*)(&type), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	bool has_constant(in String name, in String type = String.init) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Control", "has_constant");
		bool _GODOT_ret = bool.init;
		const(void*)[2] _GODOT_args = [cast(void*)(&name), cast(void*)(&type), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	Control get_parent_control() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Control", "get_parent_control");
		Control _GODOT_ret = Control.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_h_grow_direction(in int direction)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Control", "set_h_grow_direction");
		const(void*)[1] _GODOT_args = [cast(void*)(&direction), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	int get_h_grow_direction() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Control", "get_h_grow_direction");
		int _GODOT_ret = int.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_v_grow_direction(in int direction)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Control", "set_v_grow_direction");
		const(void*)[1] _GODOT_args = [cast(void*)(&direction), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	int get_v_grow_direction() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Control", "get_v_grow_direction");
		int _GODOT_ret = int.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_tooltip(in String tooltip)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Control", "set_tooltip");
		const(void*)[1] _GODOT_args = [cast(void*)(&tooltip), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	String get_tooltip(in Vector2 atpos = Vector2(0, 0)) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Control", "get_tooltip");
		String _GODOT_ret = String.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&atpos), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	String _get_tooltip() const
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_get_tooltip");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(String);
	}
	void set_default_cursor_shape(in int shape)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Control", "set_default_cursor_shape");
		const(void*)[1] _GODOT_args = [cast(void*)(&shape), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	int get_default_cursor_shape() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Control", "get_default_cursor_shape");
		int _GODOT_ret = int.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	int get_cursor_shape(in Vector2 pos = Vector2(0, 0)) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Control", "get_cursor_shape");
		int _GODOT_ret = int.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&pos), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_focus_neighbour(in int margin, in NodePath neighbour)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Control", "set_focus_neighbour");
		const(void*)[2] _GODOT_args = [cast(void*)(&margin), cast(void*)(&neighbour), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	NodePath get_focus_neighbour(in int margin) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Control", "get_focus_neighbour");
		NodePath _GODOT_ret = NodePath.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&margin), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void force_drag(in Variant data, in Control preview)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Control", "force_drag");
		const(void*)[2] _GODOT_args = [cast(void*)(&data), cast(void*)(preview), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void set_mouse_filter(in int filter)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Control", "set_mouse_filter");
		const(void*)[1] _GODOT_args = [cast(void*)(&filter), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	int get_mouse_filter() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Control", "get_mouse_filter");
		int _GODOT_ret = int.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_clip_contents(in bool enable)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Control", "set_clip_contents");
		const(void*)[1] _GODOT_args = [cast(void*)(&enable), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	bool is_clipping_contents()
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Control", "is_clipping_contents");
		bool _GODOT_ret = bool.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void grab_click_focus()
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Control", "grab_click_focus");
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null);
	}
	void set_drag_forwarding(in Control target)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Control", "set_drag_forwarding");
		const(void*)[1] _GODOT_args = [cast(void*)(target), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void set_drag_preview(in Control control)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Control", "set_drag_preview");
		const(void*)[1] _GODOT_args = [cast(void*)(control), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void warp_mouse(in Vector2 to_pos)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Control", "warp_mouse");
		const(void*)[1] _GODOT_args = [cast(void*)(&to_pos), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void minimum_size_changed()
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Control", "minimum_size_changed");
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null);
	}
	void _theme_changed()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_theme_changed");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	void _font_changed()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_font_changed");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
}
