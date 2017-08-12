module godot.multimesh;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.object;
import godot.classdb;
import godot.resource;
import godot.mesh;
@GodotBaseClass struct MultiMesh
{
	static immutable string _GODOT_internal_name = "MultiMesh";
public:
	union { godot_object _godot_object; Resource base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	package(godot) void* opCast(T : void*)() const { return cast(void*)_godot_object.ptr; }
	godot_object opCast(T : godot_object)() const { return cast(godot_object)_godot_object; }
	bool opEquals(in MultiMesh other) const { return _godot_object.ptr is other._godot_object.ptr; }
	MultiMesh opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	bool opCast(T : bool)() const { return _godot_object.ptr !is null; }
	inout(T) opCast(T)() inout if(isGodotBaseClass!T)
	{
		static assert(staticIndexOf!(MultiMesh, T.BaseClasses) != -1, "Godot class "~T.stringof~" does not inherit MultiMesh");
		if(_godot_object.ptr is null) return T.init;
		String c = String(T._GODOT_internal_name);
		if(is_class(c)) return inout(T)(_godot_object);
		return T.init;
	}
	inout(T) opCast(T)() inout if(extendsGodotBaseClass!T)
	{
		static assert(is(typeof(T.owner) : MultiMesh) || staticIndexOf!(MultiMesh, typeof(T.owner).BaseClasses) != -1, "D class "~T.stringof~" does not extend MultiMesh");
		if(_godot_object.ptr is null) return null;
		if(has_method(String(`_GDNATIVE_D_typeid`)))
		{
			Object o = cast(Object)godot_nativescript_get_userdata(opCast!godot_object);
			return cast(inout(T))o;
		}
		return null;
	}
	static MultiMesh _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("MultiMesh");
		if(constructor is null) return typeof(this).init;
		return cast(MultiMesh)(constructor());
	}
	enum int COLOR_FLOAT = 2;
	enum int COLOR_8BIT = 1;
	enum int TRANSFORM_3D = 1;
	enum int COLOR_NONE = 0;
	enum int TRANSFORM_2D = 0;
	void set_mesh(in Mesh mesh)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("MultiMesh", "set_mesh");
		const(void*)[1] _GODOT_args = [cast(void*)(mesh), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	Mesh get_mesh() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("MultiMesh", "get_mesh");
		Mesh _GODOT_ret = Mesh.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_color_format(in int format)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("MultiMesh", "set_color_format");
		const(void*)[1] _GODOT_args = [cast(void*)(&format), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	int get_color_format() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("MultiMesh", "get_color_format");
		int _GODOT_ret = int.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_transform_format(in int format)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("MultiMesh", "set_transform_format");
		const(void*)[1] _GODOT_args = [cast(void*)(&format), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	int get_transform_format() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("MultiMesh", "get_transform_format");
		int _GODOT_ret = int.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_instance_count(in int count)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("MultiMesh", "set_instance_count");
		const(void*)[1] _GODOT_args = [cast(void*)(&count), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	int get_instance_count() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("MultiMesh", "get_instance_count");
		int _GODOT_ret = int.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_instance_transform(in int instance, in Transform transform)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("MultiMesh", "set_instance_transform");
		const(void*)[2] _GODOT_args = [cast(void*)(&instance), cast(void*)(&transform), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	Transform get_instance_transform(in int instance) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("MultiMesh", "get_instance_transform");
		Transform _GODOT_ret = Transform.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&instance), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_instance_color(in int instance, in Color color)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("MultiMesh", "set_instance_color");
		const(void*)[2] _GODOT_args = [cast(void*)(&instance), cast(void*)(&color), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	Color get_instance_color(in int instance) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("MultiMesh", "get_instance_color");
		Color _GODOT_ret = Color.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&instance), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	Rect3 get_aabb() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("MultiMesh", "get_aabb");
		Rect3 _GODOT_ret = Rect3.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void _set_transform_array(in PoolVector3Array arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_set_transform_array");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	PoolVector3Array _get_transform_array() const
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_get_transform_array");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(PoolVector3Array);
	}
	void _set_color_array(in PoolColorArray arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_set_color_array");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	PoolColorArray _get_color_array() const
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_get_color_array");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(PoolColorArray);
	}
}
