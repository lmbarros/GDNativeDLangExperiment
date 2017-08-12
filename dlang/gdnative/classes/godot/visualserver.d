module godot.visualserver;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.object;
import godot.image;
@GodotBaseClass struct VisualServerSingleton
{
	static immutable string _GODOT_internal_name = "VisualServer";
public:
	static typeof(this) _GODOT_singleton()
	{
		static immutable char* _GODOT_singleton_name = "VisualServer";
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
	bool opEquals(in VisualServerSingleton other) const { return _godot_object.ptr is other._godot_object.ptr; }
	VisualServerSingleton opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	bool opCast(T : bool)() const { return _godot_object.ptr !is null; }
	inout(T) opCast(T)() inout if(isGodotBaseClass!T)
	{
		static assert(staticIndexOf!(VisualServerSingleton, T.BaseClasses) != -1, "Godot class "~T.stringof~" does not inherit VisualServerSingleton");
		if(_godot_object.ptr is null) return T.init;
		String c = String(T._GODOT_internal_name);
		if(is_class(c)) return inout(T)(_godot_object);
		return T.init;
	}
	inout(T) opCast(T)() inout if(extendsGodotBaseClass!T)
	{
		static assert(is(typeof(T.owner) : VisualServerSingleton) || staticIndexOf!(VisualServerSingleton, typeof(T.owner).BaseClasses) != -1, "D class "~T.stringof~" does not extend VisualServerSingleton");
		if(_godot_object.ptr is null) return null;
		if(has_method(String(`_GDNATIVE_D_typeid`)))
		{
			Object o = cast(Object)godot_nativescript_get_userdata(opCast!godot_object);
			return cast(inout(T))o;
		}
		return null;
	}
	static VisualServerSingleton _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("VisualServer");
		if(constructor is null) return typeof(this).init;
		return cast(VisualServerSingleton)(constructor());
	}
	RID texture_create()
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("VisualServer", "texture_create");
		RID _GODOT_ret = RID.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	RID texture_create_from_image(in Image image, in int flags = 7)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("VisualServer", "texture_create_from_image");
		RID _GODOT_ret = RID.init;
		const(void*)[2] _GODOT_args = [cast(void*)(image), cast(void*)(&flags), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void texture_set_flags(in RID texture, in int arg1)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("VisualServer", "texture_set_flags");
		const(void*)[2] _GODOT_args = [cast(void*)(&texture), cast(void*)(&arg1), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	int texture_get_flags(in RID texture) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("VisualServer", "texture_get_flags");
		int _GODOT_ret = int.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&texture), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	int texture_get_width(in RID texture) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("VisualServer", "texture_get_width");
		int _GODOT_ret = int.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&texture), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	int texture_get_height(in RID texture) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("VisualServer", "texture_get_height");
		int _GODOT_ret = int.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&texture), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void texture_set_shrink_all_x2_on_set_data(in bool shrink)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("VisualServer", "texture_set_shrink_all_x2_on_set_data");
		const(void*)[1] _GODOT_args = [cast(void*)(&shrink), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
}
@property pragma(inline, true)
VisualServerSingleton VisualServer()
{
	return VisualServerSingleton._GODOT_singleton();
}
