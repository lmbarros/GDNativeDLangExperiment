module godot.collisionobject2d;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.object;
import godot.node2d;
import godot.inputevent;
import godot.shape2d;
@GodotBaseClass struct CollisionObject2D
{
	static immutable string _GODOT_internal_name = "CollisionObject2D";
public:
	union { godot_object _godot_object; Node2D base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	package(godot) void* opCast(T : void*)() const { return cast(void*)_godot_object.ptr; }
	godot_object opCast(T : godot_object)() const { return cast(godot_object)_godot_object; }
	bool opEquals(in CollisionObject2D other) const { return _godot_object.ptr is other._godot_object.ptr; }
	CollisionObject2D opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	bool opCast(T : bool)() const { return _godot_object.ptr !is null; }
	inout(T) opCast(T)() inout if(isGodotBaseClass!T)
	{
		static assert(staticIndexOf!(CollisionObject2D, T.BaseClasses) != -1, "Godot class "~T.stringof~" does not inherit CollisionObject2D");
		if(_godot_object.ptr is null) return T.init;
		String c = String(T._GODOT_internal_name);
		if(is_class(c)) return inout(T)(_godot_object);
		return T.init;
	}
	inout(T) opCast(T)() inout if(extendsGodotBaseClass!T)
	{
		static assert(is(typeof(T.owner) : CollisionObject2D) || staticIndexOf!(CollisionObject2D, typeof(T.owner).BaseClasses) != -1, "D class "~T.stringof~" does not extend CollisionObject2D");
		if(_godot_object.ptr is null) return null;
		if(has_method(String(`_GDNATIVE_D_typeid`)))
		{
			Object o = cast(Object)godot_nativescript_get_userdata(opCast!godot_object);
			return cast(inout(T))o;
		}
		return null;
	}
	static CollisionObject2D _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("CollisionObject2D");
		if(constructor is null) return typeof(this).init;
		return cast(CollisionObject2D)(constructor());
	}
	void _input_event(in GodotObject viewport, in InputEvent event, in int shape_idx)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(viewport);
		_GODOT_args.append(event);
		_GODOT_args.append(shape_idx);
		String _GODOT_method_name = String("_input_event");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	RID get_rid() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("CollisionObject2D", "get_rid");
		RID _GODOT_ret = RID.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_pickable(in bool enabled)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("CollisionObject2D", "set_pickable");
		const(void*)[1] _GODOT_args = [cast(void*)(&enabled), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	bool is_pickable() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("CollisionObject2D", "is_pickable");
		bool _GODOT_ret = bool.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	int create_shape_owner(in GodotObject owner)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("CollisionObject2D", "create_shape_owner");
		int _GODOT_ret = int.init;
		const(void*)[1] _GODOT_args = [cast(void*)(owner), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void remove_shape_owner(in int owner_id)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("CollisionObject2D", "remove_shape_owner");
		const(void*)[1] _GODOT_args = [cast(void*)(&owner_id), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	Array get_shape_owners()
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("CollisionObject2D", "get_shape_owners");
		Array _GODOT_ret = Array.empty_array;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void shape_owner_set_transform(in int owner_id, in Transform2D transform)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("CollisionObject2D", "shape_owner_set_transform");
		const(void*)[2] _GODOT_args = [cast(void*)(&owner_id), cast(void*)(&transform), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	Transform2D shape_owner_get_transform(in int owner_id) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("CollisionObject2D", "shape_owner_get_transform");
		Transform2D _GODOT_ret = Transform2D.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&owner_id), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	GodotObject shape_owner_get_owner(in int owner_id) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("CollisionObject2D", "shape_owner_get_owner");
		GodotObject _GODOT_ret = GodotObject.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&owner_id), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void shape_owner_set_disabled(in int owner_id, in bool disabled)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("CollisionObject2D", "shape_owner_set_disabled");
		const(void*)[2] _GODOT_args = [cast(void*)(&owner_id), cast(void*)(&disabled), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	bool is_shape_owner_disabled(in int owner_id) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("CollisionObject2D", "is_shape_owner_disabled");
		bool _GODOT_ret = bool.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&owner_id), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void shape_owner_set_one_way_collision(in int owner_id, in bool enable)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("CollisionObject2D", "shape_owner_set_one_way_collision");
		const(void*)[2] _GODOT_args = [cast(void*)(&owner_id), cast(void*)(&enable), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	bool is_shape_owner_one_way_collision_enabled(in int owner_id) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("CollisionObject2D", "is_shape_owner_one_way_collision_enabled");
		bool _GODOT_ret = bool.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&owner_id), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void shape_owner_add_shape(in int owner_id, in Shape2D shape)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("CollisionObject2D", "shape_owner_add_shape");
		const(void*)[2] _GODOT_args = [cast(void*)(&owner_id), cast(void*)(shape), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	int shape_owner_get_shape_count(in int owner_id) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("CollisionObject2D", "shape_owner_get_shape_count");
		int _GODOT_ret = int.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&owner_id), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	GodotObject shape_owner_get_shape(in int owner_id, in int shape_id) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("CollisionObject2D", "shape_owner_get_shape");
		GodotObject _GODOT_ret = GodotObject.init;
		const(void*)[2] _GODOT_args = [cast(void*)(&owner_id), cast(void*)(&shape_id), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	int shape_owner_get_shape_index(in int owner_id, in int shape_id) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("CollisionObject2D", "shape_owner_get_shape_index");
		int _GODOT_ret = int.init;
		const(void*)[2] _GODOT_args = [cast(void*)(&owner_id), cast(void*)(&shape_id), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void shape_owner_remove_shape(in int owner_id, in int shape_id)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("CollisionObject2D", "shape_owner_remove_shape");
		const(void*)[2] _GODOT_args = [cast(void*)(&owner_id), cast(void*)(&shape_id), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void shape_owner_clear_shapes(in int owner_id)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("CollisionObject2D", "shape_owner_clear_shapes");
		const(void*)[1] _GODOT_args = [cast(void*)(&owner_id), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	int shape_find_owner(in int shape_index) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("CollisionObject2D", "shape_find_owner");
		int _GODOT_ret = int.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&shape_index), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
}
