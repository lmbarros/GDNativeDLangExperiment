module godot.canvaslayer;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.object;
import godot.classdb;
import godot.node;
import godot.viewport;
import godot.world2d;
@GodotBaseClass struct CanvasLayer
{
	static immutable string _GODOT_internal_name = "CanvasLayer";
public:
	union { godot_object _godot_object; Node base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	package(godot) void* opCast(T : void*)() const { return cast(void*)_godot_object.ptr; }
	godot_object opCast(T : godot_object)() const { return cast(godot_object)_godot_object; }
	bool opEquals(in CanvasLayer other) const { return _godot_object.ptr is other._godot_object.ptr; }
	CanvasLayer opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	bool opCast(T : bool)() const { return _godot_object.ptr !is null; }
	inout(T) opCast(T)() inout if(isGodotBaseClass!T)
	{
		static assert(staticIndexOf!(CanvasLayer, T.BaseClasses) != -1, "Godot class "~T.stringof~" does not inherit CanvasLayer");
		if(_godot_object.ptr is null) return T.init;
		String c = String(T._GODOT_internal_name);
		if(is_class(c)) return inout(T)(_godot_object);
		return T.init;
	}
	inout(T) opCast(T)() inout if(extendsGodotBaseClass!T)
	{
		static assert(is(typeof(T.owner) : CanvasLayer) || staticIndexOf!(CanvasLayer, typeof(T.owner).BaseClasses) != -1, "D class "~T.stringof~" does not extend CanvasLayer");
		if(_godot_object.ptr is null) return null;
		if(has_method(String(`_GDNATIVE_D_typeid`)))
		{
			Object o = cast(Object)godot_nativescript_get_userdata(opCast!godot_object);
			return cast(inout(T))o;
		}
		return null;
	}
	static CanvasLayer _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("CanvasLayer");
		if(constructor is null) return typeof(this).init;
		return cast(CanvasLayer)(constructor());
	}
	void set_layer(in int layer)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("CanvasLayer", "set_layer");
		const(void*)[1] _GODOT_args = [cast(void*)(&layer), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	int get_layer() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("CanvasLayer", "get_layer");
		int _GODOT_ret = int.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_transform(in Transform2D transform)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("CanvasLayer", "set_transform");
		const(void*)[1] _GODOT_args = [cast(void*)(&transform), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	Transform2D get_transform() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("CanvasLayer", "get_transform");
		Transform2D _GODOT_ret = Transform2D.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_offset(in Vector2 offset)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("CanvasLayer", "set_offset");
		const(void*)[1] _GODOT_args = [cast(void*)(&offset), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	Vector2 get_offset() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("CanvasLayer", "get_offset");
		Vector2 _GODOT_ret = Vector2.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_rotation(in float radians)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("CanvasLayer", "set_rotation");
		const(void*)[1] _GODOT_args = [cast(void*)(&radians), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	float get_rotation() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("CanvasLayer", "get_rotation");
		float _GODOT_ret = float.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_rotationd(in float degrees)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("CanvasLayer", "set_rotationd");
		const(void*)[1] _GODOT_args = [cast(void*)(&degrees), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	float get_rotationd() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("CanvasLayer", "get_rotationd");
		float _GODOT_ret = float.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void _set_rotationd(in float degrees)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(degrees);
		String _GODOT_method_name = String("_set_rotationd");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	float _get_rotationd() const
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_get_rotationd");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(float);
	}
	void set_scale(in Vector2 scale)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("CanvasLayer", "set_scale");
		const(void*)[1] _GODOT_args = [cast(void*)(&scale), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	Vector2 get_scale() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("CanvasLayer", "get_scale");
		Vector2 _GODOT_ret = Vector2.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_custom_viewport(in Viewport viewport)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("CanvasLayer", "set_custom_viewport");
		const(void*)[1] _GODOT_args = [cast(void*)(viewport), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	Viewport get_custom_viewport() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("CanvasLayer", "get_custom_viewport");
		Viewport _GODOT_ret = Viewport.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	World2D get_world_2d() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("CanvasLayer", "get_world_2d");
		World2D _GODOT_ret = World2D.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
}
