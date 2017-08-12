module godot.spatial;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.object;
import godot.classdb;
import godot.node;
import godot.world;
import godot.spatialgizmo;
@GodotBaseClass struct Spatial
{
	static immutable string _GODOT_internal_name = "Spatial";
public:
	union { godot_object _godot_object; Node base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	package(godot) void* opCast(T : void*)() const { return cast(void*)_godot_object.ptr; }
	godot_object opCast(T : godot_object)() const { return cast(godot_object)_godot_object; }
	bool opEquals(in Spatial other) const { return _godot_object.ptr is other._godot_object.ptr; }
	Spatial opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	bool opCast(T : bool)() const { return _godot_object.ptr !is null; }
	inout(T) opCast(T)() inout if(isGodotBaseClass!T)
	{
		static assert(staticIndexOf!(Spatial, T.BaseClasses) != -1, "Godot class "~T.stringof~" does not inherit Spatial");
		if(_godot_object.ptr is null) return T.init;
		String c = String(T._GODOT_internal_name);
		if(is_class(c)) return inout(T)(_godot_object);
		return T.init;
	}
	inout(T) opCast(T)() inout if(extendsGodotBaseClass!T)
	{
		static assert(is(typeof(T.owner) : Spatial) || staticIndexOf!(Spatial, typeof(T.owner).BaseClasses) != -1, "D class "~T.stringof~" does not extend Spatial");
		if(_godot_object.ptr is null) return null;
		if(has_method(String(`_GDNATIVE_D_typeid`)))
		{
			Object o = cast(Object)godot_nativescript_get_userdata(opCast!godot_object);
			return cast(inout(T))o;
		}
		return null;
	}
	static Spatial _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("Spatial");
		if(constructor is null) return typeof(this).init;
		return cast(Spatial)(constructor());
	}
	enum int NOTIFICATION_TRANSFORM_CHANGED = 29;
	enum int NOTIFICATION_VISIBILITY_CHANGED = 43;
	enum int NOTIFICATION_ENTER_WORLD = 41;
	enum int NOTIFICATION_EXIT_WORLD = 42;
	void set_transform(in Transform local)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Spatial", "set_transform");
		const(void*)[1] _GODOT_args = [cast(void*)(&local), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	Transform get_transform() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Spatial", "get_transform");
		Transform _GODOT_ret = Transform.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_translation(in Vector3 translation)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Spatial", "set_translation");
		const(void*)[1] _GODOT_args = [cast(void*)(&translation), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	Vector3 get_translation() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Spatial", "get_translation");
		Vector3 _GODOT_ret = Vector3.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_rotation(in Vector3 rotation_rad)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Spatial", "set_rotation");
		const(void*)[1] _GODOT_args = [cast(void*)(&rotation_rad), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	Vector3 get_rotation() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Spatial", "get_rotation");
		Vector3 _GODOT_ret = Vector3.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_rotation_deg(in Vector3 rotation_deg)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Spatial", "set_rotation_deg");
		const(void*)[1] _GODOT_args = [cast(void*)(&rotation_deg), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	Vector3 get_rotation_deg() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Spatial", "get_rotation_deg");
		Vector3 _GODOT_ret = Vector3.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_scale(in Vector3 scale)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Spatial", "set_scale");
		const(void*)[1] _GODOT_args = [cast(void*)(&scale), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	Vector3 get_scale() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Spatial", "get_scale");
		Vector3 _GODOT_ret = Vector3.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_global_transform(in Transform global)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Spatial", "set_global_transform");
		const(void*)[1] _GODOT_args = [cast(void*)(&global), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	Transform get_global_transform() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Spatial", "get_global_transform");
		Transform _GODOT_ret = Transform.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	Spatial get_parent_spatial() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Spatial", "get_parent_spatial");
		Spatial _GODOT_ret = Spatial.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_ignore_transform_notification(in bool enabled)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Spatial", "set_ignore_transform_notification");
		const(void*)[1] _GODOT_args = [cast(void*)(&enabled), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void set_as_toplevel(in bool enable)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Spatial", "set_as_toplevel");
		const(void*)[1] _GODOT_args = [cast(void*)(&enable), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	bool is_set_as_toplevel() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Spatial", "is_set_as_toplevel");
		bool _GODOT_ret = bool.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	World get_world() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Spatial", "get_world");
		World _GODOT_ret = World.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void _set_rotation_deg(in Vector3 rotation_deg)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(rotation_deg);
		String _GODOT_method_name = String("_set_rotation_deg");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	Vector3 _get_rotation_deg() const
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_get_rotation_deg");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(Vector3);
	}
	void _update_gizmo()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_update_gizmo");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	void update_gizmo()
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Spatial", "update_gizmo");
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null);
	}
	void set_gizmo(in SpatialGizmo gizmo)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Spatial", "set_gizmo");
		const(void*)[1] _GODOT_args = [cast(void*)(gizmo), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	SpatialGizmo get_gizmo() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Spatial", "get_gizmo");
		SpatialGizmo _GODOT_ret = SpatialGizmo.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_visible(in bool visible)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Spatial", "set_visible");
		const(void*)[1] _GODOT_args = [cast(void*)(&visible), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	bool is_visible() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Spatial", "is_visible");
		bool _GODOT_ret = bool.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	bool is_visible_in_tree() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Spatial", "is_visible_in_tree");
		bool _GODOT_ret = bool.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void show()
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Spatial", "show");
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null);
	}
	void hide()
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Spatial", "hide");
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null);
	}
	void set_notify_local_transform(in bool enable)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Spatial", "set_notify_local_transform");
		const(void*)[1] _GODOT_args = [cast(void*)(&enable), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	bool is_local_transform_notification_enabled() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Spatial", "is_local_transform_notification_enabled");
		bool _GODOT_ret = bool.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_notify_transform(in bool enable)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Spatial", "set_notify_transform");
		const(void*)[1] _GODOT_args = [cast(void*)(&enable), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	bool is_transform_notification_enabled() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Spatial", "is_transform_notification_enabled");
		bool _GODOT_ret = bool.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void rotate(in Vector3 normal, in float radians)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Spatial", "rotate");
		const(void*)[2] _GODOT_args = [cast(void*)(&normal), cast(void*)(&radians), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void global_rotate(in Vector3 normal, in float radians)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Spatial", "global_rotate");
		const(void*)[2] _GODOT_args = [cast(void*)(&normal), cast(void*)(&radians), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void rotate_x(in float radians)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Spatial", "rotate_x");
		const(void*)[1] _GODOT_args = [cast(void*)(&radians), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void rotate_y(in float radians)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Spatial", "rotate_y");
		const(void*)[1] _GODOT_args = [cast(void*)(&radians), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void rotate_z(in float radians)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Spatial", "rotate_z");
		const(void*)[1] _GODOT_args = [cast(void*)(&radians), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void translate(in Vector3 offset)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Spatial", "translate");
		const(void*)[1] _GODOT_args = [cast(void*)(&offset), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void global_translate(in Vector3 offset)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Spatial", "global_translate");
		const(void*)[1] _GODOT_args = [cast(void*)(&offset), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void orthonormalize()
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Spatial", "orthonormalize");
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null);
	}
	void set_identity()
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Spatial", "set_identity");
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null);
	}
	void look_at(in Vector3 target, in Vector3 up)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Spatial", "look_at");
		const(void*)[2] _GODOT_args = [cast(void*)(&target), cast(void*)(&up), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void look_at_from_pos(in Vector3 pos, in Vector3 target, in Vector3 up)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Spatial", "look_at_from_pos");
		const(void*)[3] _GODOT_args = [cast(void*)(&pos), cast(void*)(&target), cast(void*)(&up), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	Vector3 to_local(in Vector3 global_point) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Spatial", "to_local");
		Vector3 _GODOT_ret = Vector3.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&global_point), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	Vector3 to_global(in Vector3 local_point) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Spatial", "to_global");
		Vector3 _GODOT_ret = Vector3.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&local_point), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
}
