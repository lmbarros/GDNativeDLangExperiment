module godot.undoredo;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.object;
import godot.classdb;
@GodotBaseClass struct UndoRedo
{
	static immutable string _GODOT_internal_name = "UndoRedo";
public:
	union { godot_object _godot_object; GodotObject base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	package(godot) void* opCast(T : void*)() const { return cast(void*)_godot_object.ptr; }
	godot_object opCast(T : godot_object)() const { return cast(godot_object)_godot_object; }
	bool opEquals(in UndoRedo other) const { return _godot_object.ptr is other._godot_object.ptr; }
	UndoRedo opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	bool opCast(T : bool)() const { return _godot_object.ptr !is null; }
	inout(T) opCast(T)() inout if(isGodotBaseClass!T)
	{
		static assert(staticIndexOf!(UndoRedo, T.BaseClasses) != -1, "Godot class "~T.stringof~" does not inherit UndoRedo");
		if(_godot_object.ptr is null) return T.init;
		String c = String(T._GODOT_internal_name);
		if(is_class(c)) return inout(T)(_godot_object);
		return T.init;
	}
	inout(T) opCast(T)() inout if(extendsGodotBaseClass!T)
	{
		static assert(is(typeof(T.owner) : UndoRedo) || staticIndexOf!(UndoRedo, typeof(T.owner).BaseClasses) != -1, "D class "~T.stringof~" does not extend UndoRedo");
		if(_godot_object.ptr is null) return null;
		if(has_method(String(`_GDNATIVE_D_typeid`)))
		{
			Object o = cast(Object)godot_nativescript_get_userdata(opCast!godot_object);
			return cast(inout(T))o;
		}
		return null;
	}
	static UndoRedo _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("UndoRedo");
		if(constructor is null) return typeof(this).init;
		return cast(UndoRedo)(constructor());
	}
	enum int MERGE_DISABLE = 0;
	enum int MERGE_ENDS = 1;
	enum int MERGE_ALL = 2;
	void create_action(in String name, in int merge_mode = 0)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("UndoRedo", "create_action");
		const(void*)[2] _GODOT_args = [cast(void*)(&name), cast(void*)(&merge_mode), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void commit_action()
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("UndoRedo", "commit_action");
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null);
	}
	void add_do_method(Args...)(in GodotObject object, in String method, Args _GODOT_var_args)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(object);
		_GODOT_args.append(method);
		foreach(vai, VA; Args)
		{
			_GODOT_args.append(_GODOT_var_args[vai]);
		}
		String _GODOT_method_name = String("add_do_method");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	void add_undo_method(Args...)(in GodotObject object, in String method, Args _GODOT_var_args)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(object);
		_GODOT_args.append(method);
		foreach(vai, VA; Args)
		{
			_GODOT_args.append(_GODOT_var_args[vai]);
		}
		String _GODOT_method_name = String("add_undo_method");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	void add_do_property(in GodotObject object, in String property, in Variant value)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("UndoRedo", "add_do_property");
		const(void*)[3] _GODOT_args = [cast(void*)(object), cast(void*)(&property), cast(void*)(&value), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void add_undo_property(in GodotObject object, in String property, in Variant value)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("UndoRedo", "add_undo_property");
		const(void*)[3] _GODOT_args = [cast(void*)(object), cast(void*)(&property), cast(void*)(&value), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void add_do_reference(in GodotObject object)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("UndoRedo", "add_do_reference");
		const(void*)[1] _GODOT_args = [cast(void*)(object), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void add_undo_reference(in GodotObject object)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("UndoRedo", "add_undo_reference");
		const(void*)[1] _GODOT_args = [cast(void*)(object), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void clear_history()
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("UndoRedo", "clear_history");
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null);
	}
	String get_current_action_name() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("UndoRedo", "get_current_action_name");
		String _GODOT_ret = String.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	int get_version() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("UndoRedo", "get_version");
		int _GODOT_ret = int.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
}
