module godot.performance;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.object;
@GodotBaseClass struct PerformanceSingleton
{
	static immutable string _GODOT_internal_name = "Performance";
public:
	static typeof(this) _GODOT_singleton()
	{
		static immutable char* _GODOT_singleton_name = "Performance";
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
	bool opEquals(in PerformanceSingleton other) const { return _godot_object.ptr is other._godot_object.ptr; }
	PerformanceSingleton opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	bool opCast(T : bool)() const { return _godot_object.ptr !is null; }
	inout(T) opCast(T)() inout if(isGodotBaseClass!T)
	{
		static assert(staticIndexOf!(PerformanceSingleton, T.BaseClasses) != -1, "Godot class "~T.stringof~" does not inherit PerformanceSingleton");
		if(_godot_object.ptr is null) return T.init;
		String c = String(T._GODOT_internal_name);
		if(is_class(c)) return inout(T)(_godot_object);
		return T.init;
	}
	inout(T) opCast(T)() inout if(extendsGodotBaseClass!T)
	{
		static assert(is(typeof(T.owner) : PerformanceSingleton) || staticIndexOf!(PerformanceSingleton, typeof(T.owner).BaseClasses) != -1, "D class "~T.stringof~" does not extend PerformanceSingleton");
		if(_godot_object.ptr is null) return null;
		if(has_method(String(`_GDNATIVE_D_typeid`)))
		{
			Object o = cast(Object)godot_nativescript_get_userdata(opCast!godot_object);
			return cast(inout(T))o;
		}
		return null;
	}
	static PerformanceSingleton _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("Performance");
		if(constructor is null) return typeof(this).init;
		return cast(PerformanceSingleton)(constructor());
	}
	enum int OBJECT_COUNT = 8;
	enum int MEMORY_DYNAMIC_MAX = 6;
	enum int PHYSICS_2D_COLLISION_PAIRS = 22;
	enum int OBJECT_NODE_COUNT = 10;
	enum int TIME_FPS = 0;
	enum int TIME_FIXED_PROCESS = 2;
	enum int RENDER_USAGE_VIDEO_MEM_TOTAL = 20;
	enum int RENDER_VERTEX_MEM_USED = 19;
	enum int PHYSICS_2D_ISLAND_COUNT = 23;
	enum int OBJECT_RESOURCE_COUNT = 9;
	enum int MEMORY_STATIC_MAX = 5;
	enum int RENDER_SHADER_CHANGES_IN_FRAME = 14;
	enum int RENDER_OBJECTS_IN_FRAME = 11;
	enum int MONITOR_MAX = 27;
	enum int RENDER_VIDEO_MEM_USED = 17;
	enum int TIME_PROCESS = 1;
	enum int RENDER_MATERIAL_CHANGES_IN_FRAME = 13;
	enum int PHYSICS_2D_ACTIVE_OBJECTS = 21;
	enum int PHYSICS_3D_ACTIVE_OBJECTS = 24;
	enum int PHYSICS_3D_ISLAND_COUNT = 26;
	enum int RENDER_DRAW_CALLS_IN_FRAME = 16;
	enum int RENDER_TEXTURE_MEM_USED = 18;
	enum int MEMORY_STATIC = 3;
	enum int MEMORY_MESSAGE_BUFFER_MAX = 7;
	enum int RENDER_SURFACE_CHANGES_IN_FRAME = 15;
	enum int PHYSICS_3D_COLLISION_PAIRS = 25;
	enum int MEMORY_DYNAMIC = 4;
	enum int RENDER_VERTICES_IN_FRAME = 12;
	float get_monitor(in int monitor) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Performance", "get_monitor");
		float _GODOT_ret = float.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&monitor), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
}
@property pragma(inline, true)
PerformanceSingleton Performance()
{
	return PerformanceSingleton._GODOT_singleton();
}
