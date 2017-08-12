module godot.multimeshinstance;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.object;
import godot.classdb;
import godot.geometryinstance;
import godot.multimesh;
@GodotBaseClass struct MultiMeshInstance
{
	static immutable string _GODOT_internal_name = "MultiMeshInstance";
public:
	union { godot_object _godot_object; GeometryInstance base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	package(godot) void* opCast(T : void*)() const { return cast(void*)_godot_object.ptr; }
	godot_object opCast(T : godot_object)() const { return cast(godot_object)_godot_object; }
	bool opEquals(in MultiMeshInstance other) const { return _godot_object.ptr is other._godot_object.ptr; }
	MultiMeshInstance opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	bool opCast(T : bool)() const { return _godot_object.ptr !is null; }
	inout(T) opCast(T)() inout if(isGodotBaseClass!T)
	{
		static assert(staticIndexOf!(MultiMeshInstance, T.BaseClasses) != -1, "Godot class "~T.stringof~" does not inherit MultiMeshInstance");
		if(_godot_object.ptr is null) return T.init;
		String c = String(T._GODOT_internal_name);
		if(is_class(c)) return inout(T)(_godot_object);
		return T.init;
	}
	inout(T) opCast(T)() inout if(extendsGodotBaseClass!T)
	{
		static assert(is(typeof(T.owner) : MultiMeshInstance) || staticIndexOf!(MultiMeshInstance, typeof(T.owner).BaseClasses) != -1, "D class "~T.stringof~" does not extend MultiMeshInstance");
		if(_godot_object.ptr is null) return null;
		if(has_method(String(`_GDNATIVE_D_typeid`)))
		{
			Object o = cast(Object)godot_nativescript_get_userdata(opCast!godot_object);
			return cast(inout(T))o;
		}
		return null;
	}
	static MultiMeshInstance _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("MultiMeshInstance");
		if(constructor is null) return typeof(this).init;
		return cast(MultiMeshInstance)(constructor());
	}
	void set_multimesh(in MultiMesh multimesh)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("MultiMeshInstance", "set_multimesh");
		const(void*)[1] _GODOT_args = [cast(void*)(multimesh), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	MultiMesh get_multimesh() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("MultiMeshInstance", "get_multimesh");
		MultiMesh _GODOT_ret = MultiMesh.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
}
