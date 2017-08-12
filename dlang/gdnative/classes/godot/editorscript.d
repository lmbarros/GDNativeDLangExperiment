module godot.editorscript;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.object;
import godot.classdb;
import godot.reference;
import godot.node;
@GodotBaseClass struct EditorScript
{
	static immutable string _GODOT_internal_name = "EditorScript";
public:
	union { godot_object _godot_object; Reference base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	package(godot) void* opCast(T : void*)() const { return cast(void*)_godot_object.ptr; }
	godot_object opCast(T : godot_object)() const { return cast(godot_object)_godot_object; }
	bool opEquals(in EditorScript other) const { return _godot_object.ptr is other._godot_object.ptr; }
	EditorScript opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	bool opCast(T : bool)() const { return _godot_object.ptr !is null; }
	inout(T) opCast(T)() inout if(isGodotBaseClass!T)
	{
		static assert(staticIndexOf!(EditorScript, T.BaseClasses) != -1, "Godot class "~T.stringof~" does not inherit EditorScript");
		if(_godot_object.ptr is null) return T.init;
		String c = String(T._GODOT_internal_name);
		if(is_class(c)) return inout(T)(_godot_object);
		return T.init;
	}
	inout(T) opCast(T)() inout if(extendsGodotBaseClass!T)
	{
		static assert(is(typeof(T.owner) : EditorScript) || staticIndexOf!(EditorScript, typeof(T.owner).BaseClasses) != -1, "D class "~T.stringof~" does not extend EditorScript");
		if(_godot_object.ptr is null) return null;
		if(has_method(String(`_GDNATIVE_D_typeid`)))
		{
			Object o = cast(Object)godot_nativescript_get_userdata(opCast!godot_object);
			return cast(inout(T))o;
		}
		return null;
	}
	static EditorScript _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("EditorScript");
		if(constructor is null) return typeof(this).init;
		return cast(EditorScript)(constructor());
	}
	void _run()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_run");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	void add_root_node(in Node node)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("EditorScript", "add_root_node");
		const(void*)[1] _GODOT_args = [cast(void*)(node), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	Node get_scene()
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("EditorScript", "get_scene");
		Node _GODOT_ret = Node.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
}
