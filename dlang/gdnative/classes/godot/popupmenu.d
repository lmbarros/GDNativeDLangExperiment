module godot.popupmenu;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.object;
import godot.classdb;
import godot.popup;
import godot.texture;
import godot.shortcut;
@GodotBaseClass struct PopupMenu
{
	static immutable string _GODOT_internal_name = "PopupMenu";
public:
	union { godot_object _godot_object; Popup base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	package(godot) void* opCast(T : void*)() const { return cast(void*)_godot_object.ptr; }
	godot_object opCast(T : godot_object)() const { return cast(godot_object)_godot_object; }
	bool opEquals(in PopupMenu other) const { return _godot_object.ptr is other._godot_object.ptr; }
	PopupMenu opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	bool opCast(T : bool)() const { return _godot_object.ptr !is null; }
	inout(T) opCast(T)() inout if(isGodotBaseClass!T)
	{
		static assert(staticIndexOf!(PopupMenu, T.BaseClasses) != -1, "Godot class "~T.stringof~" does not inherit PopupMenu");
		if(_godot_object.ptr is null) return T.init;
		String c = String(T._GODOT_internal_name);
		if(is_class(c)) return inout(T)(_godot_object);
		return T.init;
	}
	inout(T) opCast(T)() inout if(extendsGodotBaseClass!T)
	{
		static assert(is(typeof(T.owner) : PopupMenu) || staticIndexOf!(PopupMenu, typeof(T.owner).BaseClasses) != -1, "D class "~T.stringof~" does not extend PopupMenu");
		if(_godot_object.ptr is null) return null;
		if(has_method(String(`_GDNATIVE_D_typeid`)))
		{
			Object o = cast(Object)godot_nativescript_get_userdata(opCast!godot_object);
			return cast(inout(T))o;
		}
		return null;
	}
	static PopupMenu _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("PopupMenu");
		if(constructor is null) return typeof(this).init;
		return cast(PopupMenu)(constructor());
	}
	void _gui_input(in GodotObject arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_gui_input");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	void add_icon_item(in Texture texture, in String label, in int id = -1, in int accel = 0)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("PopupMenu", "add_icon_item");
		const(void*)[4] _GODOT_args = [cast(void*)(texture), cast(void*)(&label), cast(void*)(&id), cast(void*)(&accel), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void add_item(in String label, in int id = -1, in int accel = 0)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("PopupMenu", "add_item");
		const(void*)[3] _GODOT_args = [cast(void*)(&label), cast(void*)(&id), cast(void*)(&accel), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void add_icon_check_item(in Texture texture, in String label, in int id = -1, in int accel = 0)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("PopupMenu", "add_icon_check_item");
		const(void*)[4] _GODOT_args = [cast(void*)(texture), cast(void*)(&label), cast(void*)(&id), cast(void*)(&accel), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void add_check_item(in String label, in int id = -1, in int accel = 0)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("PopupMenu", "add_check_item");
		const(void*)[3] _GODOT_args = [cast(void*)(&label), cast(void*)(&id), cast(void*)(&accel), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void add_submenu_item(in String label, in String submenu, in int id = -1)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("PopupMenu", "add_submenu_item");
		const(void*)[3] _GODOT_args = [cast(void*)(&label), cast(void*)(&submenu), cast(void*)(&id), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void add_icon_shortcut(in Texture texture, in ShortCut shortcut, in int id = -1, in bool global = false)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("PopupMenu", "add_icon_shortcut");
		const(void*)[4] _GODOT_args = [cast(void*)(texture), cast(void*)(shortcut), cast(void*)(&id), cast(void*)(&global), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void add_shortcut(in ShortCut shortcut, in int id = -1, in bool global = false)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("PopupMenu", "add_shortcut");
		const(void*)[3] _GODOT_args = [cast(void*)(shortcut), cast(void*)(&id), cast(void*)(&global), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void add_icon_check_shortcut(in Texture texture, in ShortCut shortcut, in int id = -1, in bool global = false)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("PopupMenu", "add_icon_check_shortcut");
		const(void*)[4] _GODOT_args = [cast(void*)(texture), cast(void*)(shortcut), cast(void*)(&id), cast(void*)(&global), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void add_check_shortcut(in ShortCut shortcut, in int id = -1, in bool global = false)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("PopupMenu", "add_check_shortcut");
		const(void*)[3] _GODOT_args = [cast(void*)(shortcut), cast(void*)(&id), cast(void*)(&global), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void set_item_text(in int idx, in String text)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("PopupMenu", "set_item_text");
		const(void*)[2] _GODOT_args = [cast(void*)(&idx), cast(void*)(&text), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void set_item_icon(in int idx, in Texture icon)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("PopupMenu", "set_item_icon");
		const(void*)[2] _GODOT_args = [cast(void*)(&idx), cast(void*)(icon), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void set_item_checked(in int idx, in bool checked)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("PopupMenu", "set_item_checked");
		const(void*)[2] _GODOT_args = [cast(void*)(&idx), cast(void*)(&checked), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void set_item_ID(in int idx, in int id)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("PopupMenu", "set_item_ID");
		const(void*)[2] _GODOT_args = [cast(void*)(&idx), cast(void*)(&id), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void set_item_accelerator(in int idx, in int accel)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("PopupMenu", "set_item_accelerator");
		const(void*)[2] _GODOT_args = [cast(void*)(&idx), cast(void*)(&accel), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void set_item_metadata(in int idx, in Variant metadata)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("PopupMenu", "set_item_metadata");
		const(void*)[2] _GODOT_args = [cast(void*)(&idx), cast(void*)(&metadata), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void set_item_disabled(in int idx, in bool disabled)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("PopupMenu", "set_item_disabled");
		const(void*)[2] _GODOT_args = [cast(void*)(&idx), cast(void*)(&disabled), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void set_item_submenu(in int idx, in String submenu)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("PopupMenu", "set_item_submenu");
		const(void*)[2] _GODOT_args = [cast(void*)(&idx), cast(void*)(&submenu), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void set_item_as_separator(in int idx, in bool enable)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("PopupMenu", "set_item_as_separator");
		const(void*)[2] _GODOT_args = [cast(void*)(&idx), cast(void*)(&enable), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void set_item_as_checkable(in int idx, in bool enable)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("PopupMenu", "set_item_as_checkable");
		const(void*)[2] _GODOT_args = [cast(void*)(&idx), cast(void*)(&enable), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void set_item_tooltip(in int idx, in String tooltip)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("PopupMenu", "set_item_tooltip");
		const(void*)[2] _GODOT_args = [cast(void*)(&idx), cast(void*)(&tooltip), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void set_item_shortcut(in int idx, in ShortCut shortcut, in bool global = false)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("PopupMenu", "set_item_shortcut");
		const(void*)[3] _GODOT_args = [cast(void*)(&idx), cast(void*)(shortcut), cast(void*)(&global), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void toggle_item_checked(in int idx)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("PopupMenu", "toggle_item_checked");
		const(void*)[1] _GODOT_args = [cast(void*)(&idx), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	String get_item_text(in int idx) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("PopupMenu", "get_item_text");
		String _GODOT_ret = String.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&idx), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	Texture get_item_icon(in int idx) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("PopupMenu", "get_item_icon");
		Texture _GODOT_ret = Texture.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&idx), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	bool is_item_checked(in int idx) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("PopupMenu", "is_item_checked");
		bool _GODOT_ret = bool.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&idx), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	int get_item_ID(in int idx) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("PopupMenu", "get_item_ID");
		int _GODOT_ret = int.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&idx), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	int get_item_index(in int id) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("PopupMenu", "get_item_index");
		int _GODOT_ret = int.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&id), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	int get_item_accelerator(in int idx) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("PopupMenu", "get_item_accelerator");
		int _GODOT_ret = int.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&idx), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	Variant get_item_metadata(in int idx) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("PopupMenu", "get_item_metadata");
		Variant _GODOT_ret = Variant.nil;
		const(void*)[1] _GODOT_args = [cast(void*)(&idx), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	bool is_item_disabled(in int idx) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("PopupMenu", "is_item_disabled");
		bool _GODOT_ret = bool.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&idx), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	String get_item_submenu(in int idx) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("PopupMenu", "get_item_submenu");
		String _GODOT_ret = String.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&idx), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	bool is_item_separator(in int idx) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("PopupMenu", "is_item_separator");
		bool _GODOT_ret = bool.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&idx), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	bool is_item_checkable(in int idx) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("PopupMenu", "is_item_checkable");
		bool _GODOT_ret = bool.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&idx), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	String get_item_tooltip(in int idx) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("PopupMenu", "get_item_tooltip");
		String _GODOT_ret = String.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&idx), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	ShortCut get_item_shortcut(in int idx) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("PopupMenu", "get_item_shortcut");
		ShortCut _GODOT_ret = ShortCut.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&idx), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	int get_item_count() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("PopupMenu", "get_item_count");
		int _GODOT_ret = int.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void remove_item(in int idx)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("PopupMenu", "remove_item");
		const(void*)[1] _GODOT_args = [cast(void*)(&idx), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void add_separator()
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("PopupMenu", "add_separator");
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null);
	}
	void clear()
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("PopupMenu", "clear");
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null);
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
	void set_hide_on_item_selection(in bool enable)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("PopupMenu", "set_hide_on_item_selection");
		const(void*)[1] _GODOT_args = [cast(void*)(&enable), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	bool is_hide_on_item_selection()
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("PopupMenu", "is_hide_on_item_selection");
		bool _GODOT_ret = bool.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_hide_on_checkable_item_selection(in bool enable)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("PopupMenu", "set_hide_on_checkable_item_selection");
		const(void*)[1] _GODOT_args = [cast(void*)(&enable), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	bool is_hide_on_checkable_item_selection()
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("PopupMenu", "is_hide_on_checkable_item_selection");
		bool _GODOT_ret = bool.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void _submenu_timeout()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_submenu_timeout");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
}
