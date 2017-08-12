module godot.container;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.object;
import godot.classdb;
import godot.control;
@GodotBaseClass struct Container
{
	static immutable string _GODOT_internal_name = "Container";
public:
	union { godot_object _godot_object; Control base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	package(godot) void* opCast(T : void*)() const { return cast(void*)_godot_object.ptr; }
	godot_object opCast(T : godot_object)() const { return cast(godot_object)_godot_object; }
	bool opEquals(in Container other) const { return _godot_object.ptr is other._godot_object.ptr; }
	Container opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	bool opCast(T : bool)() const { return _godot_object.ptr !is null; }
	inout(T) opCast(T)() inout if(isGodotBaseClass!T)
	{
		static assert(staticIndexOf!(Container, T.BaseClasses) != -1, "Godot class "~T.stringof~" does not inherit Container");
		if(_godot_object.ptr is null) return T.init;
		String c = String(T._GODOT_internal_name);
		if(is_class(c)) return inout(T)(_godot_object);
		return T.init;
	}
	inout(T) opCast(T)() inout if(extendsGodotBaseClass!T)
	{
		static assert(is(typeof(T.owner) : Container) || staticIndexOf!(Container, typeof(T.owner).BaseClasses) != -1, "D class "~T.stringof~" does not extend Container");
		if(_godot_object.ptr is null) return null;
		if(has_method(String(`_GDNATIVE_D_typeid`)))
		{
			Object o = cast(Object)godot_nativescript_get_userdata(opCast!godot_object);
			return cast(inout(T))o;
		}
		return null;
	}
	static Container _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("Container");
		if(constructor is null) return typeof(this).init;
		return cast(Container)(constructor());
	}
	enum int NOTIFICATION_SORT_CHILDREN = 50;
	void _sort_children()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_sort_children");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	void _child_minsize_changed()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_child_minsize_changed");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	void queue_sort()
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Container", "queue_sort");
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null);
	}
	void fit_child_in_rect(in Control child, in Rect2 rect)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Container", "fit_child_in_rect");
		const(void*)[2] _GODOT_args = [cast(void*)(child), cast(void*)(&rect), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
}
