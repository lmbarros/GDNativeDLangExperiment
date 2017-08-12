module godot.treeitem;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.object;
import godot.texture;
@GodotBaseClass struct TreeItem
{
	static immutable string _GODOT_internal_name = "TreeItem";
public:
	union { godot_object _godot_object; GodotObject base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	package(godot) void* opCast(T : void*)() const { return cast(void*)_godot_object.ptr; }
	godot_object opCast(T : godot_object)() const { return cast(godot_object)_godot_object; }
	bool opEquals(in TreeItem other) const { return _godot_object.ptr is other._godot_object.ptr; }
	TreeItem opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	bool opCast(T : bool)() const { return _godot_object.ptr !is null; }
	inout(T) opCast(T)() inout if(isGodotBaseClass!T)
	{
		static assert(staticIndexOf!(TreeItem, T.BaseClasses) != -1, "Godot class "~T.stringof~" does not inherit TreeItem");
		if(_godot_object.ptr is null) return T.init;
		String c = String(T._GODOT_internal_name);
		if(is_class(c)) return inout(T)(_godot_object);
		return T.init;
	}
	inout(T) opCast(T)() inout if(extendsGodotBaseClass!T)
	{
		static assert(is(typeof(T.owner) : TreeItem) || staticIndexOf!(TreeItem, typeof(T.owner).BaseClasses) != -1, "D class "~T.stringof~" does not extend TreeItem");
		if(_godot_object.ptr is null) return null;
		if(has_method(String(`_GDNATIVE_D_typeid`)))
		{
			Object o = cast(Object)godot_nativescript_get_userdata(opCast!godot_object);
			return cast(inout(T))o;
		}
		return null;
	}
	static TreeItem _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("TreeItem");
		if(constructor is null) return typeof(this).init;
		return cast(TreeItem)(constructor());
	}
	enum int CELL_MODE_CUSTOM = 5;
	enum int CELL_MODE_STRING = 0;
	enum int CELL_MODE_CHECK = 1;
	enum int CELL_MODE_RANGE = 2;
	enum int CELL_MODE_RANGE_EXPRESSION = 3;
	enum int CELL_MODE_ICON = 4;
	void set_cell_mode(in int column, in int mode)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("TreeItem", "set_cell_mode");
		const(void*)[2] _GODOT_args = [cast(void*)(&column), cast(void*)(&mode), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	int get_cell_mode(in int column) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("TreeItem", "get_cell_mode");
		int _GODOT_ret = int.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&column), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_checked(in int column, in bool checked)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("TreeItem", "set_checked");
		const(void*)[2] _GODOT_args = [cast(void*)(&column), cast(void*)(&checked), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	bool is_checked(in int column) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("TreeItem", "is_checked");
		bool _GODOT_ret = bool.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&column), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_text(in int column, in String text)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("TreeItem", "set_text");
		const(void*)[2] _GODOT_args = [cast(void*)(&column), cast(void*)(&text), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	String get_text(in int column) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("TreeItem", "get_text");
		String _GODOT_ret = String.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&column), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_icon(in int column, in Texture texture)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("TreeItem", "set_icon");
		const(void*)[2] _GODOT_args = [cast(void*)(&column), cast(void*)(texture), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	Texture get_icon(in int column) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("TreeItem", "get_icon");
		Texture _GODOT_ret = Texture.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&column), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_icon_region(in int column, in Rect2 region)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("TreeItem", "set_icon_region");
		const(void*)[2] _GODOT_args = [cast(void*)(&column), cast(void*)(&region), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	Rect2 get_icon_region(in int column) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("TreeItem", "get_icon_region");
		Rect2 _GODOT_ret = Rect2.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&column), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_icon_max_width(in int column, in int width)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("TreeItem", "set_icon_max_width");
		const(void*)[2] _GODOT_args = [cast(void*)(&column), cast(void*)(&width), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	int get_icon_max_width(in int column) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("TreeItem", "get_icon_max_width");
		int _GODOT_ret = int.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&column), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_range(in int column, in float value)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("TreeItem", "set_range");
		const(void*)[2] _GODOT_args = [cast(void*)(&column), cast(void*)(&value), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	float get_range(in int column) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("TreeItem", "get_range");
		float _GODOT_ret = float.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&column), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_range_config(in int column, in float min, in float max, in float step, in bool expr = false)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("TreeItem", "set_range_config");
		const(void*)[5] _GODOT_args = [cast(void*)(&column), cast(void*)(&min), cast(void*)(&max), cast(void*)(&step), cast(void*)(&expr), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	Dictionary get_range_config(in int column)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("TreeItem", "get_range_config");
		Dictionary _GODOT_ret = Dictionary.empty_dictionary;
		const(void*)[1] _GODOT_args = [cast(void*)(&column), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_metadata(in int column, in Variant meta)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("TreeItem", "set_metadata");
		const(void*)[2] _GODOT_args = [cast(void*)(&column), cast(void*)(&meta), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void get_metadata(in int column) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("TreeItem", "get_metadata");
		const(void*)[1] _GODOT_args = [cast(void*)(&column), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void set_custom_draw(in int column, in GodotObject object, in String callback)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("TreeItem", "set_custom_draw");
		const(void*)[3] _GODOT_args = [cast(void*)(&column), cast(void*)(object), cast(void*)(&callback), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void set_collapsed(in bool enable)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("TreeItem", "set_collapsed");
		const(void*)[1] _GODOT_args = [cast(void*)(&enable), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	bool is_collapsed()
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("TreeItem", "is_collapsed");
		bool _GODOT_ret = bool.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	TreeItem get_next()
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("TreeItem", "get_next");
		TreeItem _GODOT_ret = TreeItem.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	TreeItem get_prev()
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("TreeItem", "get_prev");
		TreeItem _GODOT_ret = TreeItem.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	TreeItem get_parent()
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("TreeItem", "get_parent");
		TreeItem _GODOT_ret = TreeItem.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	TreeItem get_children()
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("TreeItem", "get_children");
		TreeItem _GODOT_ret = TreeItem.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	TreeItem get_next_visible()
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("TreeItem", "get_next_visible");
		TreeItem _GODOT_ret = TreeItem.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	TreeItem get_prev_visible()
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("TreeItem", "get_prev_visible");
		TreeItem _GODOT_ret = TreeItem.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void remove_child(in GodotObject child)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("TreeItem", "remove_child");
		const(void*)[1] _GODOT_args = [cast(void*)(child), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void set_selectable(in int column, in bool selectable)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("TreeItem", "set_selectable");
		const(void*)[2] _GODOT_args = [cast(void*)(&column), cast(void*)(&selectable), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	bool is_selectable(in int column) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("TreeItem", "is_selectable");
		bool _GODOT_ret = bool.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&column), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	bool is_selected(in int column)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("TreeItem", "is_selected");
		bool _GODOT_ret = bool.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&column), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void select(in int column)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("TreeItem", "select");
		const(void*)[1] _GODOT_args = [cast(void*)(&column), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void deselect(in int column)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("TreeItem", "deselect");
		const(void*)[1] _GODOT_args = [cast(void*)(&column), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void set_editable(in int column, in bool enabled)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("TreeItem", "set_editable");
		const(void*)[2] _GODOT_args = [cast(void*)(&column), cast(void*)(&enabled), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	bool is_editable(in int column)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("TreeItem", "is_editable");
		bool _GODOT_ret = bool.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&column), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_custom_color(in int column, in Color color)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("TreeItem", "set_custom_color");
		const(void*)[2] _GODOT_args = [cast(void*)(&column), cast(void*)(&color), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void clear_custom_color(in int column)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("TreeItem", "clear_custom_color");
		const(void*)[1] _GODOT_args = [cast(void*)(&column), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void set_custom_bg_color(in int column, in Color color, in bool just_outline = false)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("TreeItem", "set_custom_bg_color");
		const(void*)[3] _GODOT_args = [cast(void*)(&column), cast(void*)(&color), cast(void*)(&just_outline), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void clear_custom_bg_color(in int column)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("TreeItem", "clear_custom_bg_color");
		const(void*)[1] _GODOT_args = [cast(void*)(&column), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	Color get_custom_bg_color(in int column) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("TreeItem", "get_custom_bg_color");
		Color _GODOT_ret = Color.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&column), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_custom_as_button(in int column, in bool enable)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("TreeItem", "set_custom_as_button");
		const(void*)[2] _GODOT_args = [cast(void*)(&column), cast(void*)(&enable), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	bool is_custom_set_as_button(in int column) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("TreeItem", "is_custom_set_as_button");
		bool _GODOT_ret = bool.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&column), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void add_button(in int column, in Texture button, in int button_idx = -1, in bool disabled = false, in String tooltip = String.init)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("TreeItem", "add_button");
		const(void*)[5] _GODOT_args = [cast(void*)(&column), cast(void*)(button), cast(void*)(&button_idx), cast(void*)(&disabled), cast(void*)(&tooltip), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	int get_button_count(in int column) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("TreeItem", "get_button_count");
		int _GODOT_ret = int.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&column), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	Texture get_button(in int column, in int button_idx) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("TreeItem", "get_button");
		Texture _GODOT_ret = Texture.init;
		const(void*)[2] _GODOT_args = [cast(void*)(&column), cast(void*)(&button_idx), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_button(in int column, in int button_idx, in Texture button)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("TreeItem", "set_button");
		const(void*)[3] _GODOT_args = [cast(void*)(&column), cast(void*)(&button_idx), cast(void*)(button), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void erase_button(in int column, in int button_idx)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("TreeItem", "erase_button");
		const(void*)[2] _GODOT_args = [cast(void*)(&column), cast(void*)(&button_idx), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	bool is_button_disabled(in int column, in int button_idx) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("TreeItem", "is_button_disabled");
		bool _GODOT_ret = bool.init;
		const(void*)[2] _GODOT_args = [cast(void*)(&column), cast(void*)(&button_idx), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_expand_right(in int column, in bool enable)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("TreeItem", "set_expand_right");
		const(void*)[2] _GODOT_args = [cast(void*)(&column), cast(void*)(&enable), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	bool get_expand_right(in int column) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("TreeItem", "get_expand_right");
		bool _GODOT_ret = bool.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&column), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_tooltip(in int column, in String tooltip)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("TreeItem", "set_tooltip");
		const(void*)[2] _GODOT_args = [cast(void*)(&column), cast(void*)(&tooltip), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	String get_tooltip(in int column) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("TreeItem", "get_tooltip");
		String _GODOT_ret = String.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&column), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_text_align(in int column, in int text_align)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("TreeItem", "set_text_align");
		const(void*)[2] _GODOT_args = [cast(void*)(&column), cast(void*)(&text_align), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	int get_text_align(in int column) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("TreeItem", "get_text_align");
		int _GODOT_ret = int.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&column), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void move_to_top()
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("TreeItem", "move_to_top");
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null);
	}
	void move_to_bottom()
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("TreeItem", "move_to_bottom");
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null);
	}
	void set_disable_folding(in bool disable)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("TreeItem", "set_disable_folding");
		const(void*)[1] _GODOT_args = [cast(void*)(&disable), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	bool is_folding_disabled() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("TreeItem", "is_folding_disabled");
		bool _GODOT_ret = bool.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
}
