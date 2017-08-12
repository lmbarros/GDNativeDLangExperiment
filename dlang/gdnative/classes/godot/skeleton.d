module godot.skeleton;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.object;
import godot.classdb;
import godot.spatial;
import godot.node;
@GodotBaseClass struct Skeleton
{
	static immutable string _GODOT_internal_name = "Skeleton";
public:
	union { godot_object _godot_object; Spatial base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	package(godot) void* opCast(T : void*)() const { return cast(void*)_godot_object.ptr; }
	godot_object opCast(T : godot_object)() const { return cast(godot_object)_godot_object; }
	bool opEquals(in Skeleton other) const { return _godot_object.ptr is other._godot_object.ptr; }
	Skeleton opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	bool opCast(T : bool)() const { return _godot_object.ptr !is null; }
	inout(T) opCast(T)() inout if(isGodotBaseClass!T)
	{
		static assert(staticIndexOf!(Skeleton, T.BaseClasses) != -1, "Godot class "~T.stringof~" does not inherit Skeleton");
		if(_godot_object.ptr is null) return T.init;
		String c = String(T._GODOT_internal_name);
		if(is_class(c)) return inout(T)(_godot_object);
		return T.init;
	}
	inout(T) opCast(T)() inout if(extendsGodotBaseClass!T)
	{
		static assert(is(typeof(T.owner) : Skeleton) || staticIndexOf!(Skeleton, typeof(T.owner).BaseClasses) != -1, "D class "~T.stringof~" does not extend Skeleton");
		if(_godot_object.ptr is null) return null;
		if(has_method(String(`_GDNATIVE_D_typeid`)))
		{
			Object o = cast(Object)godot_nativescript_get_userdata(opCast!godot_object);
			return cast(inout(T))o;
		}
		return null;
	}
	static Skeleton _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("Skeleton");
		if(constructor is null) return typeof(this).init;
		return cast(Skeleton)(constructor());
	}
	enum int NOTIFICATION_UPDATE_SKELETON = 50;
	void add_bone(in String name)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Skeleton", "add_bone");
		const(void*)[1] _GODOT_args = [cast(void*)(&name), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	int find_bone(in String name) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Skeleton", "find_bone");
		int _GODOT_ret = int.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&name), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	String get_bone_name(in int bone_idx) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Skeleton", "get_bone_name");
		String _GODOT_ret = String.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&bone_idx), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	int get_bone_parent(in int bone_idx) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Skeleton", "get_bone_parent");
		int _GODOT_ret = int.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&bone_idx), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_bone_parent(in int bone_idx, in int parent_idx)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Skeleton", "set_bone_parent");
		const(void*)[2] _GODOT_args = [cast(void*)(&bone_idx), cast(void*)(&parent_idx), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	int get_bone_count() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Skeleton", "get_bone_count");
		int _GODOT_ret = int.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void unparent_bone_and_rest(in int bone_idx)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Skeleton", "unparent_bone_and_rest");
		const(void*)[1] _GODOT_args = [cast(void*)(&bone_idx), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	Transform get_bone_rest(in int bone_idx) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Skeleton", "get_bone_rest");
		Transform _GODOT_ret = Transform.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&bone_idx), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_bone_rest(in int bone_idx, in Transform rest)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Skeleton", "set_bone_rest");
		const(void*)[2] _GODOT_args = [cast(void*)(&bone_idx), cast(void*)(&rest), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void set_bone_disable_rest(in int bone_idx, in bool disable)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Skeleton", "set_bone_disable_rest");
		const(void*)[2] _GODOT_args = [cast(void*)(&bone_idx), cast(void*)(&disable), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	bool is_bone_rest_disabled(in int bone_idx) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Skeleton", "is_bone_rest_disabled");
		bool _GODOT_ret = bool.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&bone_idx), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void bind_child_node_to_bone(in int bone_idx, in Node node)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Skeleton", "bind_child_node_to_bone");
		const(void*)[2] _GODOT_args = [cast(void*)(&bone_idx), cast(void*)(node), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void unbind_child_node_from_bone(in int bone_idx, in Node node)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Skeleton", "unbind_child_node_from_bone");
		const(void*)[2] _GODOT_args = [cast(void*)(&bone_idx), cast(void*)(node), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	Array get_bound_child_nodes_to_bone(in int bone_idx) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Skeleton", "get_bound_child_nodes_to_bone");
		Array _GODOT_ret = Array.empty_array;
		const(void*)[1] _GODOT_args = [cast(void*)(&bone_idx), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void clear_bones()
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Skeleton", "clear_bones");
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null);
	}
	Transform get_bone_pose(in int bone_idx) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Skeleton", "get_bone_pose");
		Transform _GODOT_ret = Transform.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&bone_idx), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_bone_pose(in int bone_idx, in Transform pose)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Skeleton", "set_bone_pose");
		const(void*)[2] _GODOT_args = [cast(void*)(&bone_idx), cast(void*)(&pose), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void set_bone_global_pose(in int bone_idx, in Transform pose)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Skeleton", "set_bone_global_pose");
		const(void*)[2] _GODOT_args = [cast(void*)(&bone_idx), cast(void*)(&pose), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	Transform get_bone_global_pose(in int bone_idx) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Skeleton", "get_bone_global_pose");
		Transform _GODOT_ret = Transform.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&bone_idx), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	Transform get_bone_custom_pose(in int bone_idx) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Skeleton", "get_bone_custom_pose");
		Transform _GODOT_ret = Transform.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&bone_idx), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_bone_custom_pose(in int bone_idx, in Transform custom_pose)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Skeleton", "set_bone_custom_pose");
		const(void*)[2] _GODOT_args = [cast(void*)(&bone_idx), cast(void*)(&custom_pose), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	Transform get_bone_transform(in int bone_idx) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Skeleton", "get_bone_transform");
		Transform _GODOT_ret = Transform.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&bone_idx), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
}
