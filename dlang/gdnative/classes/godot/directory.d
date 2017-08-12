module godot.directory;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.object;
import godot.classdb;
import godot.reference;
@GodotBaseClass struct Directory
{
	static immutable string _GODOT_internal_name = "_Directory";
public:
	union { godot_object _godot_object; Reference base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	package(godot) void* opCast(T : void*)() const { return cast(void*)_godot_object.ptr; }
	godot_object opCast(T : godot_object)() const { return cast(godot_object)_godot_object; }
	bool opEquals(in Directory other) const { return _godot_object.ptr is other._godot_object.ptr; }
	Directory opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	bool opCast(T : bool)() const { return _godot_object.ptr !is null; }
	inout(T) opCast(T)() inout if(isGodotBaseClass!T)
	{
		static assert(staticIndexOf!(Directory, T.BaseClasses) != -1, "Godot class "~T.stringof~" does not inherit Directory");
		if(_godot_object.ptr is null) return T.init;
		String c = String(T._GODOT_internal_name);
		if(is_class(c)) return inout(T)(_godot_object);
		return T.init;
	}
	inout(T) opCast(T)() inout if(extendsGodotBaseClass!T)
	{
		static assert(is(typeof(T.owner) : Directory) || staticIndexOf!(Directory, typeof(T.owner).BaseClasses) != -1, "D class "~T.stringof~" does not extend Directory");
		if(_godot_object.ptr is null) return null;
		if(has_method(String(`_GDNATIVE_D_typeid`)))
		{
			Object o = cast(Object)godot_nativescript_get_userdata(opCast!godot_object);
			return cast(inout(T))o;
		}
		return null;
	}
	static Directory _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("_Directory");
		if(constructor is null) return typeof(this).init;
		return cast(Directory)(constructor());
	}
	GodotError open(in String path)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("_Directory", "open");
		GodotError _GODOT_ret = GodotError.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&path), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	int list_dir_begin(in bool skip_navigational = false, in bool skip_hidden = false)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("_Directory", "list_dir_begin");
		int _GODOT_ret = int.init;
		const(void*)[2] _GODOT_args = [cast(void*)(&skip_navigational), cast(void*)(&skip_hidden), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	String get_next()
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("_Directory", "get_next");
		String _GODOT_ret = String.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	bool current_is_dir() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("_Directory", "current_is_dir");
		bool _GODOT_ret = bool.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void list_dir_end()
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("_Directory", "list_dir_end");
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null);
	}
	int get_drive_count()
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("_Directory", "get_drive_count");
		int _GODOT_ret = int.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	String get_drive(in int idx)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("_Directory", "get_drive");
		String _GODOT_ret = String.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&idx), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	int get_current_drive()
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("_Directory", "get_current_drive");
		int _GODOT_ret = int.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	GodotError change_dir(in String todir)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("_Directory", "change_dir");
		GodotError _GODOT_ret = GodotError.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&todir), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	String get_current_dir()
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("_Directory", "get_current_dir");
		String _GODOT_ret = String.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	GodotError make_dir(in String path)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("_Directory", "make_dir");
		GodotError _GODOT_ret = GodotError.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&path), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	GodotError make_dir_recursive(in String path)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("_Directory", "make_dir_recursive");
		GodotError _GODOT_ret = GodotError.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&path), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	bool file_exists(in String path)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("_Directory", "file_exists");
		bool _GODOT_ret = bool.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&path), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	bool dir_exists(in String path)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("_Directory", "dir_exists");
		bool _GODOT_ret = bool.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&path), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	int get_space_left()
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("_Directory", "get_space_left");
		int _GODOT_ret = int.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	GodotError copy(in String from, in String to)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("_Directory", "copy");
		GodotError _GODOT_ret = GodotError.init;
		const(void*)[2] _GODOT_args = [cast(void*)(&from), cast(void*)(&to), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	GodotError rename(in String from, in String to)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("_Directory", "rename");
		GodotError _GODOT_ret = GodotError.init;
		const(void*)[2] _GODOT_args = [cast(void*)(&from), cast(void*)(&to), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	GodotError remove(in String path)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("_Directory", "remove");
		GodotError _GODOT_ret = GodotError.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&path), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
}
