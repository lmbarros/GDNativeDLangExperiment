module godot.editorselection;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.object;
import godot.classdb;
import godot.node;
@GodotBaseClass struct EditorSelection
{
	static immutable string _GODOT_internal_name = "EditorSelection";
public:
	union { godot_object _godot_object; GodotObject base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	package(godot) void* opCast(T : void*)() const { return cast(void*)_godot_object.ptr; }
	godot_object opCast(T : godot_object)() const { return cast(godot_object)_godot_object; }
	bool opEquals(in EditorSelection other) const { return _godot_object.ptr is other._godot_object.ptr; }
	EditorSelection opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	bool opCast(T : bool)() const { return _godot_object.ptr !is null; }
	inout(T) opCast(T)() inout if(isGodotBaseClass!T)
	{
		static assert(staticIndexOf!(EditorSelection, T.BaseClasses) != -1, "Godot class "~T.stringof~" does not inherit EditorSelection");
		if(_godot_object.ptr is null) return T.init;
		String c = String(T._GODOT_internal_name);
		if(is_class(c)) return inout(T)(_godot_object);
		return T.init;
	}
	inout(T) opCast(T)() inout if(extendsGodotBaseClass!T)
	{
		static assert(is(typeof(T.owner) : EditorSelection) || staticIndexOf!(EditorSelection, typeof(T.owner).BaseClasses) != -1, "D class "~T.stringof~" does not extend EditorSelection");
		if(_godot_object.ptr is null) return null;
		if(has_method(String(`_GDNATIVE_D_typeid`)))
		{
			Object o = cast(Object)godot_nativescript_get_userdata(opCast!godot_object);
			return cast(inout(T))o;
		}
		return null;
	}
	static EditorSelection _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("EditorSelection");
		if(constructor is null) return typeof(this).init;
		return cast(EditorSelection)(constructor());
	}
	void _node_removed(in GodotObject arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_node_removed");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	void clear()
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("EditorSelection", "clear");
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null);
	}
	void add_node(in Node node)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("EditorSelection", "add_node");
		const(void*)[1] _GODOT_args = [cast(void*)(node), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void remove_node(in Node node)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("EditorSelection", "remove_node");
		const(void*)[1] _GODOT_args = [cast(void*)(node), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	Array get_selected_nodes()
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("EditorSelection", "get_selected_nodes");
		Array _GODOT_ret = Array.empty_array;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	Array get_transformable_selected_nodes()
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("EditorSelection", "get_transformable_selected_nodes");
		Array _GODOT_ret = Array.empty_array;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
}
