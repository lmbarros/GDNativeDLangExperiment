module godot.arvrinterface;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.object;
import godot.reference;
@GodotBaseClass struct ARVRInterface
{
	static immutable string _GODOT_internal_name = "ARVRInterface";
public:
	union { godot_object _godot_object; Reference base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	package(godot) void* opCast(T : void*)() const { return cast(void*)_godot_object.ptr; }
	godot_object opCast(T : godot_object)() const { return cast(godot_object)_godot_object; }
	bool opEquals(in ARVRInterface other) const { return _godot_object.ptr is other._godot_object.ptr; }
	ARVRInterface opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	bool opCast(T : bool)() const { return _godot_object.ptr !is null; }
	inout(T) opCast(T)() inout if(isGodotBaseClass!T)
	{
		static assert(staticIndexOf!(ARVRInterface, T.BaseClasses) != -1, "Godot class "~T.stringof~" does not inherit ARVRInterface");
		if(_godot_object.ptr is null) return T.init;
		String c = String(T._GODOT_internal_name);
		if(is_class(c)) return inout(T)(_godot_object);
		return T.init;
	}
	inout(T) opCast(T)() inout if(extendsGodotBaseClass!T)
	{
		static assert(is(typeof(T.owner) : ARVRInterface) || staticIndexOf!(ARVRInterface, typeof(T.owner).BaseClasses) != -1, "D class "~T.stringof~" does not extend ARVRInterface");
		if(_godot_object.ptr is null) return null;
		if(has_method(String(`_GDNATIVE_D_typeid`)))
		{
			Object o = cast(Object)godot_nativescript_get_userdata(opCast!godot_object);
			return cast(inout(T))o;
		}
		return null;
	}
	static ARVRInterface _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("ARVRInterface");
		if(constructor is null) return typeof(this).init;
		return cast(ARVRInterface)(constructor());
	}
	enum int EYE_LEFT = 1;
	enum int EYE_RIGHT = 2;
	enum int EYE_MONO = 0;
	String get_name() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("ARVRInterface", "get_name");
		String _GODOT_ret = String.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	bool is_primary()
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("ARVRInterface", "is_primary");
		bool _GODOT_ret = bool.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_is_primary(in bool enable)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("ARVRInterface", "set_is_primary");
		const(void*)[1] _GODOT_args = [cast(void*)(&enable), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	bool is_installed()
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("ARVRInterface", "is_installed");
		bool _GODOT_ret = bool.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	bool hmd_is_present()
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("ARVRInterface", "hmd_is_present");
		bool _GODOT_ret = bool.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	bool supports_hmd()
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("ARVRInterface", "supports_hmd");
		bool _GODOT_ret = bool.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	bool is_initialized()
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("ARVRInterface", "is_initialized");
		bool _GODOT_ret = bool.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	bool initialize()
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("ARVRInterface", "initialize");
		bool _GODOT_ret = bool.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void uninitialize()
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("ARVRInterface", "uninitialize");
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null);
	}
	Vector2 get_recommended_render_targetsize()
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("ARVRInterface", "get_recommended_render_targetsize");
		Vector2 _GODOT_ret = Vector2.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
}
