module godot.hscrollbar;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.object;
import godot.classdb;
import godot.scrollbar;
@GodotBaseClass struct HScrollBar
{
	static immutable string _GODOT_internal_name = "HScrollBar";
public:
	union { godot_object _godot_object; ScrollBar base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	package(godot) void* opCast(T : void*)() const { return cast(void*)_godot_object.ptr; }
	godot_object opCast(T : godot_object)() const { return cast(godot_object)_godot_object; }
	bool opEquals(in HScrollBar other) const { return _godot_object.ptr is other._godot_object.ptr; }
	HScrollBar opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	bool opCast(T : bool)() const { return _godot_object.ptr !is null; }
	inout(T) opCast(T)() inout if(isGodotBaseClass!T)
	{
		static assert(staticIndexOf!(HScrollBar, T.BaseClasses) != -1, "Godot class "~T.stringof~" does not inherit HScrollBar");
		if(_godot_object.ptr is null) return T.init;
		String c = String(T._GODOT_internal_name);
		if(is_class(c)) return inout(T)(_godot_object);
		return T.init;
	}
	inout(T) opCast(T)() inout if(extendsGodotBaseClass!T)
	{
		static assert(is(typeof(T.owner) : HScrollBar) || staticIndexOf!(HScrollBar, typeof(T.owner).BaseClasses) != -1, "D class "~T.stringof~" does not extend HScrollBar");
		if(_godot_object.ptr is null) return null;
		if(has_method(String(`_GDNATIVE_D_typeid`)))
		{
			Object o = cast(Object)godot_nativescript_get_userdata(opCast!godot_object);
			return cast(inout(T))o;
		}
		return null;
	}
	static HScrollBar _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("HScrollBar");
		if(constructor is null) return typeof(this).init;
		return cast(HScrollBar)(constructor());
	}
}
