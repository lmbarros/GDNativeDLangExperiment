module godot.popup;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.object;
import godot.classdb;
import godot.control;
@GodotBaseClass struct Popup
{
	static immutable string _GODOT_internal_name = "Popup";
public:
	union { godot_object _godot_object; Control base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	package(godot) void* opCast(T : void*)() const { return cast(void*)_godot_object.ptr; }
	godot_object opCast(T : godot_object)() const { return cast(godot_object)_godot_object; }
	bool opEquals(in Popup other) const { return _godot_object.ptr is other._godot_object.ptr; }
	Popup opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	bool opCast(T : bool)() const { return _godot_object.ptr !is null; }
	inout(T) opCast(T)() inout if(isGodotBaseClass!T)
	{
		static assert(staticIndexOf!(Popup, T.BaseClasses) != -1, "Godot class "~T.stringof~" does not inherit Popup");
		if(_godot_object.ptr is null) return T.init;
		String c = String(T._GODOT_internal_name);
		if(is_class(c)) return inout(T)(_godot_object);
		return T.init;
	}
	inout(T) opCast(T)() inout if(extendsGodotBaseClass!T)
	{
		static assert(is(typeof(T.owner) : Popup) || staticIndexOf!(Popup, typeof(T.owner).BaseClasses) != -1, "D class "~T.stringof~" does not extend Popup");
		if(_godot_object.ptr is null) return null;
		if(has_method(String(`_GDNATIVE_D_typeid`)))
		{
			Object o = cast(Object)godot_nativescript_get_userdata(opCast!godot_object);
			return cast(inout(T))o;
		}
		return null;
	}
	static Popup _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("Popup");
		if(constructor is null) return typeof(this).init;
		return cast(Popup)(constructor());
	}
	enum int NOTIFICATION_POST_POPUP = 80;
	enum int NOTIFICATION_POPUP_HIDE = 81;
	void popup_centered(in Vector2 size = Vector2(0, 0))
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Popup", "popup_centered");
		const(void*)[1] _GODOT_args = [cast(void*)(&size), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void popup_centered_ratio(in float ratio = 0.75)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Popup", "popup_centered_ratio");
		const(void*)[1] _GODOT_args = [cast(void*)(&ratio), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void popup_centered_minsize(in Vector2 minsize = Vector2(0, 0))
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Popup", "popup_centered_minsize");
		const(void*)[1] _GODOT_args = [cast(void*)(&minsize), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void popup(in Rect2 bounds = Rect2(0, 0, 0, 0))
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Popup", "popup");
		const(void*)[1] _GODOT_args = [cast(void*)(&bounds), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void set_exclusive(in bool enable)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Popup", "set_exclusive");
		const(void*)[1] _GODOT_args = [cast(void*)(&enable), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	bool is_exclusive() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Popup", "is_exclusive");
		bool _GODOT_ret = bool.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
}
