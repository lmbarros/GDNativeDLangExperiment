module godot.arvrserver;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.object;
import godot.arvrinterface;
import godot.arvrpositionaltracker;
@GodotBaseClass struct ARVRServerSingleton
{
	static immutable string _GODOT_internal_name = "ARVRServer";
public:
	static typeof(this) _GODOT_singleton()
	{
		static immutable char* _GODOT_singleton_name = "ARVRServer";
		static typeof(this) _GODOT_singleton_ptr;
		if(_GODOT_singleton_ptr == null)
			_GODOT_singleton_ptr = cast(typeof(this))godot_global_get_singleton(cast(char*)_GODOT_singleton_name);
		return _GODOT_singleton_ptr;
	}
	union { godot_object _godot_object; GodotObject base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	package(godot) void* opCast(T : void*)() const { return cast(void*)_godot_object.ptr; }
	godot_object opCast(T : godot_object)() const { return cast(godot_object)_godot_object; }
	bool opEquals(in ARVRServerSingleton other) const { return _godot_object.ptr is other._godot_object.ptr; }
	ARVRServerSingleton opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	bool opCast(T : bool)() const { return _godot_object.ptr !is null; }
	inout(T) opCast(T)() inout if(isGodotBaseClass!T)
	{
		static assert(staticIndexOf!(ARVRServerSingleton, T.BaseClasses) != -1, "Godot class "~T.stringof~" does not inherit ARVRServerSingleton");
		if(_godot_object.ptr is null) return T.init;
		String c = String(T._GODOT_internal_name);
		if(is_class(c)) return inout(T)(_godot_object);
		return T.init;
	}
	inout(T) opCast(T)() inout if(extendsGodotBaseClass!T)
	{
		static assert(is(typeof(T.owner) : ARVRServerSingleton) || staticIndexOf!(ARVRServerSingleton, typeof(T.owner).BaseClasses) != -1, "D class "~T.stringof~" does not extend ARVRServerSingleton");
		if(_godot_object.ptr is null) return null;
		if(has_method(String(`_GDNATIVE_D_typeid`)))
		{
			Object o = cast(Object)godot_nativescript_get_userdata(opCast!godot_object);
			return cast(inout(T))o;
		}
		return null;
	}
	static ARVRServerSingleton _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("ARVRServer");
		if(constructor is null) return typeof(this).init;
		return cast(ARVRServerSingleton)(constructor());
	}
	enum int TRACKER_BASESTATION = 2;
	enum int TRACKER_ANCHOR = 4;
	enum int TRACKER_UNKNOWN = 128;
	enum int TRACKER_CONTROLLER = 1;
	enum int TRACKER_ANY = 255;
	enum int TRACKER_ANY_KNOWN = 127;
	float get_world_scale() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("ARVRServer", "get_world_scale");
		float _GODOT_ret = float.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_world_scale(in float arg0)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("ARVRServer", "set_world_scale");
		const(void*)[1] _GODOT_args = [cast(void*)(&arg0), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	Transform get_reference_frame() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("ARVRServer", "get_reference_frame");
		Transform _GODOT_ret = Transform.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void request_reference_frame(in bool ignore_tilt, in bool keep_height)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("ARVRServer", "request_reference_frame");
		const(void*)[2] _GODOT_args = [cast(void*)(&ignore_tilt), cast(void*)(&keep_height), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	int get_interface_count() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("ARVRServer", "get_interface_count");
		int _GODOT_ret = int.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	ARVRInterface get_interface(in int idx) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("ARVRServer", "get_interface");
		ARVRInterface _GODOT_ret = ARVRInterface.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&idx), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	ARVRInterface find_interface(in String name) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("ARVRServer", "find_interface");
		ARVRInterface _GODOT_ret = ARVRInterface.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&name), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	int get_tracker_count() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("ARVRServer", "get_tracker_count");
		int _GODOT_ret = int.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	ARVRPositionalTracker get_tracker(in int idx) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("ARVRServer", "get_tracker");
		ARVRPositionalTracker _GODOT_ret = ARVRPositionalTracker.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&idx), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_primary_interface(in GodotObject arg0)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("ARVRServer", "set_primary_interface");
		const(void*)[1] _GODOT_args = [cast(void*)(arg0), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void add_interface(in GodotObject arg0)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("ARVRServer", "add_interface");
		const(void*)[1] _GODOT_args = [cast(void*)(arg0), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void remove_interface(in GodotObject arg0)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("ARVRServer", "remove_interface");
		const(void*)[1] _GODOT_args = [cast(void*)(arg0), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
}
@property pragma(inline, true)
ARVRServerSingleton ARVRServer()
{
	return ARVRServerSingleton._GODOT_singleton();
}
