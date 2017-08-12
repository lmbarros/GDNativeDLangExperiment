module godot.mainloop;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.object;
import godot.classdb;
import godot.inputevent;
@GodotBaseClass struct MainLoop
{
	static immutable string _GODOT_internal_name = "MainLoop";
public:
	union { godot_object _godot_object; GodotObject base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	package(godot) void* opCast(T : void*)() const { return cast(void*)_godot_object.ptr; }
	godot_object opCast(T : godot_object)() const { return cast(godot_object)_godot_object; }
	bool opEquals(in MainLoop other) const { return _godot_object.ptr is other._godot_object.ptr; }
	MainLoop opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	bool opCast(T : bool)() const { return _godot_object.ptr !is null; }
	inout(T) opCast(T)() inout if(isGodotBaseClass!T)
	{
		static assert(staticIndexOf!(MainLoop, T.BaseClasses) != -1, "Godot class "~T.stringof~" does not inherit MainLoop");
		if(_godot_object.ptr is null) return T.init;
		String c = String(T._GODOT_internal_name);
		if(is_class(c)) return inout(T)(_godot_object);
		return T.init;
	}
	inout(T) opCast(T)() inout if(extendsGodotBaseClass!T)
	{
		static assert(is(typeof(T.owner) : MainLoop) || staticIndexOf!(MainLoop, typeof(T.owner).BaseClasses) != -1, "D class "~T.stringof~" does not extend MainLoop");
		if(_godot_object.ptr is null) return null;
		if(has_method(String(`_GDNATIVE_D_typeid`)))
		{
			Object o = cast(Object)godot_nativescript_get_userdata(opCast!godot_object);
			return cast(inout(T))o;
		}
		return null;
	}
	static MainLoop _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("MainLoop");
		if(constructor is null) return typeof(this).init;
		return cast(MainLoop)(constructor());
	}
	enum int NOTIFICATION_OS_MEMORY_WARNING = 9;
	enum int NOTIFICATION_WM_FOCUS_IN = 4;
	enum int NOTIFICATION_WM_FOCUS_OUT = 5;
	enum int NOTIFICATION_WM_QUIT_REQUEST = 6;
	enum int NOTIFICATION_WM_UNFOCUS_REQUEST = 8;
	enum int NOTIFICATION_WM_MOUSE_EXIT = 3;
	enum int NOTIFICATION_WM_MOUSE_ENTER = 2;
	void _input_event(in InputEvent ev)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(ev);
		String _GODOT_method_name = String("_input_event");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	void _input_text(in String text)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(text);
		String _GODOT_method_name = String("_input_text");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	void _initialize()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_initialize");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	void _iteration(in float delta)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(delta);
		String _GODOT_method_name = String("_iteration");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	void _idle(in float delta)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(delta);
		String _GODOT_method_name = String("_idle");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	void _drop_files(in PoolStringArray files, in int screen)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(files);
		_GODOT_args.append(screen);
		String _GODOT_method_name = String("_drop_files");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	void _finalize()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_finalize");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	void input_event(in InputEvent ev)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("MainLoop", "input_event");
		const(void*)[1] _GODOT_args = [cast(void*)(ev), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void input_text(in String text)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("MainLoop", "input_text");
		const(void*)[1] _GODOT_args = [cast(void*)(&text), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void _init()
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("MainLoop", "init");
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null);
	}
	bool iteration(in float delta)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("MainLoop", "iteration");
		bool _GODOT_ret = bool.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&delta), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	bool idle(in float delta)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("MainLoop", "idle");
		bool _GODOT_ret = bool.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&delta), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void finish()
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("MainLoop", "finish");
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null);
	}
}
