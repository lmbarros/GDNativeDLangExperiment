module godot.tabcontainer;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.object;
import godot.classdb;
import godot.control;
import godot.texture;
import godot.popup;
@GodotBaseClass struct TabContainer
{
	static immutable string _GODOT_internal_name = "TabContainer";
public:
	union { godot_object _godot_object; Control base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	package(godot) void* opCast(T : void*)() const { return cast(void*)_godot_object.ptr; }
	godot_object opCast(T : godot_object)() const { return cast(godot_object)_godot_object; }
	bool opEquals(in TabContainer other) const { return _godot_object.ptr is other._godot_object.ptr; }
	TabContainer opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	bool opCast(T : bool)() const { return _godot_object.ptr !is null; }
	inout(T) opCast(T)() inout if(isGodotBaseClass!T)
	{
		static assert(staticIndexOf!(TabContainer, T.BaseClasses) != -1, "Godot class "~T.stringof~" does not inherit TabContainer");
		if(_godot_object.ptr is null) return T.init;
		String c = String(T._GODOT_internal_name);
		if(is_class(c)) return inout(T)(_godot_object);
		return T.init;
	}
	inout(T) opCast(T)() inout if(extendsGodotBaseClass!T)
	{
		static assert(is(typeof(T.owner) : TabContainer) || staticIndexOf!(TabContainer, typeof(T.owner).BaseClasses) != -1, "D class "~T.stringof~" does not extend TabContainer");
		if(_godot_object.ptr is null) return null;
		if(has_method(String(`_GDNATIVE_D_typeid`)))
		{
			Object o = cast(Object)godot_nativescript_get_userdata(opCast!godot_object);
			return cast(inout(T))o;
		}
		return null;
	}
	static TabContainer _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("TabContainer");
		if(constructor is null) return typeof(this).init;
		return cast(TabContainer)(constructor());
	}
	void _gui_input(in GodotObject arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_gui_input");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	int get_tab_count() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("TabContainer", "get_tab_count");
		int _GODOT_ret = int.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_current_tab(in int tab_idx)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("TabContainer", "set_current_tab");
		const(void*)[1] _GODOT_args = [cast(void*)(&tab_idx), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	int get_current_tab() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("TabContainer", "get_current_tab");
		int _GODOT_ret = int.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	int get_previous_tab() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("TabContainer", "get_previous_tab");
		int _GODOT_ret = int.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	Control get_current_tab_control() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("TabContainer", "get_current_tab_control");
		Control _GODOT_ret = Control.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	Control get_tab_control(in int idx) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("TabContainer", "get_tab_control");
		Control _GODOT_ret = Control.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&idx), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_tab_align(in int _align)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("TabContainer", "set_tab_align");
		const(void*)[1] _GODOT_args = [cast(void*)(&_align), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	int get_tab_align() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("TabContainer", "get_tab_align");
		int _GODOT_ret = int.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_tabs_visible(in bool visible)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("TabContainer", "set_tabs_visible");
		const(void*)[1] _GODOT_args = [cast(void*)(&visible), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	bool are_tabs_visible() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("TabContainer", "are_tabs_visible");
		bool _GODOT_ret = bool.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_tab_title(in int tab_idx, in String title)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("TabContainer", "set_tab_title");
		const(void*)[2] _GODOT_args = [cast(void*)(&tab_idx), cast(void*)(&title), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	String get_tab_title(in int tab_idx) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("TabContainer", "get_tab_title");
		String _GODOT_ret = String.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&tab_idx), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_tab_icon(in int tab_idx, in Texture icon)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("TabContainer", "set_tab_icon");
		const(void*)[2] _GODOT_args = [cast(void*)(&tab_idx), cast(void*)(icon), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	Texture get_tab_icon(in int tab_idx) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("TabContainer", "get_tab_icon");
		Texture _GODOT_ret = Texture.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&tab_idx), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_tab_disabled(in int tab_idx, in bool disabled)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("TabContainer", "set_tab_disabled");
		const(void*)[2] _GODOT_args = [cast(void*)(&tab_idx), cast(void*)(&disabled), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	bool get_tab_disabled(in int tab_idx) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("TabContainer", "get_tab_disabled");
		bool _GODOT_ret = bool.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&tab_idx), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_popup(in Popup popup)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("TabContainer", "set_popup");
		const(void*)[1] _GODOT_args = [cast(void*)(popup), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	Popup get_popup() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("TabContainer", "get_popup");
		Popup _GODOT_ret = Popup.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void _child_renamed_callback()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_child_renamed_callback");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
}
