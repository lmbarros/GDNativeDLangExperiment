module godot.boxcontainer;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.object;
import godot.container;
@GodotBaseClass struct BoxContainer
{
	static immutable string _GODOT_internal_name = "BoxContainer";
public:
	union { godot_object _godot_object; Container base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	package(godot) void* opCast(T : void*)() const { return cast(void*)_godot_object.ptr; }
	godot_object opCast(T : godot_object)() const { return cast(godot_object)_godot_object; }
	bool opEquals(in BoxContainer other) const { return _godot_object.ptr is other._godot_object.ptr; }
	BoxContainer opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	bool opCast(T : bool)() const { return _godot_object.ptr !is null; }
	inout(T) opCast(T)() inout if(isGodotBaseClass!T)
	{
		static assert(staticIndexOf!(BoxContainer, T.BaseClasses) != -1, "Godot class "~T.stringof~" does not inherit BoxContainer");
		if(_godot_object.ptr is null) return T.init;
		String c = String(T._GODOT_internal_name);
		if(is_class(c)) return inout(T)(_godot_object);
		return T.init;
	}
	inout(T) opCast(T)() inout if(extendsGodotBaseClass!T)
	{
		static assert(is(typeof(T.owner) : BoxContainer) || staticIndexOf!(BoxContainer, typeof(T.owner).BaseClasses) != -1, "D class "~T.stringof~" does not extend BoxContainer");
		if(_godot_object.ptr is null) return null;
		if(has_method(String(`_GDNATIVE_D_typeid`)))
		{
			Object o = cast(Object)godot_nativescript_get_userdata(opCast!godot_object);
			return cast(inout(T))o;
		}
		return null;
	}
	static BoxContainer _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("BoxContainer");
		if(constructor is null) return typeof(this).init;
		return cast(BoxContainer)(constructor());
	}
	enum int ALIGN_BEGIN = 0;
	enum int ALIGN_CENTER = 1;
	enum int ALIGN_END = 2;
	void add_spacer(in bool begin)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("BoxContainer", "add_spacer");
		const(void*)[1] _GODOT_args = [cast(void*)(&begin), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	int get_alignment() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("BoxContainer", "get_alignment");
		int _GODOT_ret = int.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_alignment(in int alignment)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("BoxContainer", "set_alignment");
		const(void*)[1] _GODOT_args = [cast(void*)(&alignment), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
}
