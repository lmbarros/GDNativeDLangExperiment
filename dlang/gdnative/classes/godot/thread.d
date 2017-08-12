module godot.thread;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.object;
import godot.classdb;
import godot.reference;
@GodotBaseClass struct Thread
{
	static immutable string _GODOT_internal_name = "_Thread";
public:
	union { godot_object _godot_object; Reference base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	package(godot) void* opCast(T : void*)() const { return cast(void*)_godot_object.ptr; }
	godot_object opCast(T : godot_object)() const { return cast(godot_object)_godot_object; }
	bool opEquals(in Thread other) const { return _godot_object.ptr is other._godot_object.ptr; }
	Thread opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	bool opCast(T : bool)() const { return _godot_object.ptr !is null; }
	inout(T) opCast(T)() inout if(isGodotBaseClass!T)
	{
		static assert(staticIndexOf!(Thread, T.BaseClasses) != -1, "Godot class "~T.stringof~" does not inherit Thread");
		if(_godot_object.ptr is null) return T.init;
		String c = String(T._GODOT_internal_name);
		if(is_class(c)) return inout(T)(_godot_object);
		return T.init;
	}
	inout(T) opCast(T)() inout if(extendsGodotBaseClass!T)
	{
		static assert(is(typeof(T.owner) : Thread) || staticIndexOf!(Thread, typeof(T.owner).BaseClasses) != -1, "D class "~T.stringof~" does not extend Thread");
		if(_godot_object.ptr is null) return null;
		if(has_method(String(`_GDNATIVE_D_typeid`)))
		{
			Object o = cast(Object)godot_nativescript_get_userdata(opCast!godot_object);
			return cast(inout(T))o;
		}
		return null;
	}
	static Thread _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("_Thread");
		if(constructor is null) return typeof(this).init;
		return cast(Thread)(constructor());
	}
	enum int PRIORITY_HIGH = 2;
	enum int PRIORITY_LOW = 0;
	enum int PRIORITY_NORMAL = 1;
	GodotError start(in GodotObject instance, in String method, in Variant userdata = Variant.nil, in int priority = 1)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("_Thread", "start");
		GodotError _GODOT_ret = GodotError.init;
		const(void*)[4] _GODOT_args = [cast(void*)(instance), cast(void*)(&method), cast(void*)(&userdata), cast(void*)(&priority), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	String get_id() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("_Thread", "get_id");
		String _GODOT_ret = String.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	bool is_active() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("_Thread", "is_active");
		bool _GODOT_ret = bool.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	Variant wait_to_finish()
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("_Thread", "wait_to_finish");
		Variant _GODOT_ret = Variant.nil;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
}
