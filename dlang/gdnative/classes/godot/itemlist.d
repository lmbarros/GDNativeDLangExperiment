module godot.itemlist;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.object;
import godot.classdb;
import godot.control;
import godot.texture;
import godot.vscrollbar;
@GodotBaseClass struct ItemList
{
	static immutable string _GODOT_internal_name = "ItemList";
public:
	union { godot_object _godot_object; Control base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	package(godot) void* opCast(T : void*)() const { return cast(void*)_godot_object.ptr; }
	godot_object opCast(T : godot_object)() const { return cast(godot_object)_godot_object; }
	bool opEquals(in ItemList other) const { return _godot_object.ptr is other._godot_object.ptr; }
	ItemList opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	bool opCast(T : bool)() const { return _godot_object.ptr !is null; }
	inout(T) opCast(T)() inout if(isGodotBaseClass!T)
	{
		static assert(staticIndexOf!(ItemList, T.BaseClasses) != -1, "Godot class "~T.stringof~" does not inherit ItemList");
		if(_godot_object.ptr is null) return T.init;
		String c = String(T._GODOT_internal_name);
		if(is_class(c)) return inout(T)(_godot_object);
		return T.init;
	}
	inout(T) opCast(T)() inout if(extendsGodotBaseClass!T)
	{
		static assert(is(typeof(T.owner) : ItemList) || staticIndexOf!(ItemList, typeof(T.owner).BaseClasses) != -1, "D class "~T.stringof~" does not extend ItemList");
		if(_godot_object.ptr is null) return null;
		if(has_method(String(`_GDNATIVE_D_typeid`)))
		{
			Object o = cast(Object)godot_nativescript_get_userdata(opCast!godot_object);
			return cast(inout(T))o;
		}
		return null;
	}
	static ItemList _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("ItemList");
		if(constructor is null) return typeof(this).init;
		return cast(ItemList)(constructor());
	}
	enum int SELECT_MULTI = 1;
	enum int ICON_MODE_LEFT = 1;
	enum int ICON_MODE_TOP = 0;
	enum int SELECT_SINGLE = 0;
	void add_item(in String text, in Texture icon = Texture.init, in bool selectable = true)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("ItemList", "add_item");
		const(void*)[3] _GODOT_args = [cast(void*)(&text), cast(void*)(icon), cast(void*)(&selectable), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void add_icon_item(in Texture icon, in bool selectable = true)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("ItemList", "add_icon_item");
		const(void*)[2] _GODOT_args = [cast(void*)(icon), cast(void*)(&selectable), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void set_item_text(in int idx, in String text)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("ItemList", "set_item_text");
		const(void*)[2] _GODOT_args = [cast(void*)(&idx), cast(void*)(&text), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	String get_item_text(in int idx) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("ItemList", "get_item_text");
		String _GODOT_ret = String.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&idx), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_item_icon(in int idx, in Texture icon)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("ItemList", "set_item_icon");
		const(void*)[2] _GODOT_args = [cast(void*)(&idx), cast(void*)(icon), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	Texture get_item_icon(in int idx) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("ItemList", "get_item_icon");
		Texture _GODOT_ret = Texture.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&idx), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_item_icon_region(in int idx, in Rect2 rect)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("ItemList", "set_item_icon_region");
		const(void*)[2] _GODOT_args = [cast(void*)(&idx), cast(void*)(&rect), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	Rect2 get_item_icon_region(in int idx) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("ItemList", "get_item_icon_region");
		Rect2 _GODOT_ret = Rect2.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&idx), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_item_selectable(in int idx, in bool selectable)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("ItemList", "set_item_selectable");
		const(void*)[2] _GODOT_args = [cast(void*)(&idx), cast(void*)(&selectable), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	bool is_item_selectable(in int idx) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("ItemList", "is_item_selectable");
		bool _GODOT_ret = bool.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&idx), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_item_disabled(in int idx, in bool disabled)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("ItemList", "set_item_disabled");
		const(void*)[2] _GODOT_args = [cast(void*)(&idx), cast(void*)(&disabled), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	bool is_item_disabled(in int idx) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("ItemList", "is_item_disabled");
		bool _GODOT_ret = bool.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&idx), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_item_metadata(in int idx, in Variant metadata)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("ItemList", "set_item_metadata");
		const(void*)[2] _GODOT_args = [cast(void*)(&idx), cast(void*)(&metadata), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	Variant get_item_metadata(in int idx) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("ItemList", "get_item_metadata");
		Variant _GODOT_ret = Variant.nil;
		const(void*)[1] _GODOT_args = [cast(void*)(&idx), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_item_custom_bg_color(in int idx, in Color custom_bg_color)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("ItemList", "set_item_custom_bg_color");
		const(void*)[2] _GODOT_args = [cast(void*)(&idx), cast(void*)(&custom_bg_color), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	Color get_item_custom_bg_color(in int idx) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("ItemList", "get_item_custom_bg_color");
		Color _GODOT_ret = Color.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&idx), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_item_tooltip_enabled(in int idx, in bool enable)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("ItemList", "set_item_tooltip_enabled");
		const(void*)[2] _GODOT_args = [cast(void*)(&idx), cast(void*)(&enable), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	bool is_item_tooltip_enabled(in int idx) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("ItemList", "is_item_tooltip_enabled");
		bool _GODOT_ret = bool.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&idx), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_item_tooltip(in int idx, in String tooltip)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("ItemList", "set_item_tooltip");
		const(void*)[2] _GODOT_args = [cast(void*)(&idx), cast(void*)(&tooltip), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	String get_item_tooltip(in int idx) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("ItemList", "get_item_tooltip");
		String _GODOT_ret = String.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&idx), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void select(in int idx, in bool single = true)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("ItemList", "select");
		const(void*)[2] _GODOT_args = [cast(void*)(&idx), cast(void*)(&single), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void unselect(in int idx)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("ItemList", "unselect");
		const(void*)[1] _GODOT_args = [cast(void*)(&idx), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	bool is_selected(in int idx) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("ItemList", "is_selected");
		bool _GODOT_ret = bool.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&idx), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	PoolIntArray get_selected_items()
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("ItemList", "get_selected_items");
		PoolIntArray _GODOT_ret = PoolIntArray.empty;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	int get_item_count() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("ItemList", "get_item_count");
		int _GODOT_ret = int.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void remove_item(in int idx)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("ItemList", "remove_item");
		const(void*)[1] _GODOT_args = [cast(void*)(&idx), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void clear()
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("ItemList", "clear");
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null);
	}
	void sort_items_by_text()
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("ItemList", "sort_items_by_text");
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null);
	}
	void set_fixed_column_width(in int width)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("ItemList", "set_fixed_column_width");
		const(void*)[1] _GODOT_args = [cast(void*)(&width), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	int get_fixed_column_width() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("ItemList", "get_fixed_column_width");
		int _GODOT_ret = int.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_same_column_width(in bool enable)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("ItemList", "set_same_column_width");
		const(void*)[1] _GODOT_args = [cast(void*)(&enable), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	int is_same_column_width() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("ItemList", "is_same_column_width");
		int _GODOT_ret = int.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_max_text_lines(in int lines)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("ItemList", "set_max_text_lines");
		const(void*)[1] _GODOT_args = [cast(void*)(&lines), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	int get_max_text_lines() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("ItemList", "get_max_text_lines");
		int _GODOT_ret = int.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_max_columns(in int amount)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("ItemList", "set_max_columns");
		const(void*)[1] _GODOT_args = [cast(void*)(&amount), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	int get_max_columns() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("ItemList", "get_max_columns");
		int _GODOT_ret = int.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_select_mode(in int mode)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("ItemList", "set_select_mode");
		const(void*)[1] _GODOT_args = [cast(void*)(&mode), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	int get_select_mode() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("ItemList", "get_select_mode");
		int _GODOT_ret = int.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_icon_mode(in int mode)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("ItemList", "set_icon_mode");
		const(void*)[1] _GODOT_args = [cast(void*)(&mode), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	int get_icon_mode() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("ItemList", "get_icon_mode");
		int _GODOT_ret = int.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_fixed_icon_size(in Vector2 size)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("ItemList", "set_fixed_icon_size");
		const(void*)[1] _GODOT_args = [cast(void*)(&size), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	Vector2 get_fixed_icon_size() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("ItemList", "get_fixed_icon_size");
		Vector2 _GODOT_ret = Vector2.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_icon_scale(in float scale)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("ItemList", "set_icon_scale");
		const(void*)[1] _GODOT_args = [cast(void*)(&scale), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	float get_icon_scale() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("ItemList", "get_icon_scale");
		float _GODOT_ret = float.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_allow_rmb_select(in bool allow)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("ItemList", "set_allow_rmb_select");
		const(void*)[1] _GODOT_args = [cast(void*)(&allow), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	bool get_allow_rmb_select() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("ItemList", "get_allow_rmb_select");
		bool _GODOT_ret = bool.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_auto_height(in bool enable)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("ItemList", "set_auto_height");
		const(void*)[1] _GODOT_args = [cast(void*)(&enable), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	bool has_auto_height() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("ItemList", "has_auto_height");
		bool _GODOT_ret = bool.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	int get_item_at_pos(in Vector2 pos, in bool exact = false) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("ItemList", "get_item_at_pos");
		int _GODOT_ret = int.init;
		const(void*)[2] _GODOT_args = [cast(void*)(&pos), cast(void*)(&exact), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void ensure_current_is_visible()
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("ItemList", "ensure_current_is_visible");
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null);
	}
	VScrollBar get_v_scroll()
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("ItemList", "get_v_scroll");
		VScrollBar _GODOT_ret = VScrollBar.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void _scroll_changed(in float arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_scroll_changed");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	void _gui_input(in GodotObject arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_gui_input");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	void _set_items(in Array arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_set_items");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	Array _get_items() const
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_get_items");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(Array);
	}
}
