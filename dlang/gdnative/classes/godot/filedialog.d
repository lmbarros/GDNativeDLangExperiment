module godot.filedialog;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.object;
import godot.classdb;
import godot.confirmationdialog;
import godot.vboxcontainer;
@GodotBaseClass struct FileDialog
{
	static immutable string _GODOT_internal_name = "FileDialog";
public:
	union { godot_object _godot_object; ConfirmationDialog base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	package(godot) void* opCast(T : void*)() const { return cast(void*)_godot_object.ptr; }
	godot_object opCast(T : godot_object)() const { return cast(godot_object)_godot_object; }
	bool opEquals(in FileDialog other) const { return _godot_object.ptr is other._godot_object.ptr; }
	FileDialog opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	bool opCast(T : bool)() const { return _godot_object.ptr !is null; }
	inout(T) opCast(T)() inout if(isGodotBaseClass!T)
	{
		static assert(staticIndexOf!(FileDialog, T.BaseClasses) != -1, "Godot class "~T.stringof~" does not inherit FileDialog");
		if(_godot_object.ptr is null) return T.init;
		String c = String(T._GODOT_internal_name);
		if(is_class(c)) return inout(T)(_godot_object);
		return T.init;
	}
	inout(T) opCast(T)() inout if(extendsGodotBaseClass!T)
	{
		static assert(is(typeof(T.owner) : FileDialog) || staticIndexOf!(FileDialog, typeof(T.owner).BaseClasses) != -1, "D class "~T.stringof~" does not extend FileDialog");
		if(_godot_object.ptr is null) return null;
		if(has_method(String(`_GDNATIVE_D_typeid`)))
		{
			Object o = cast(Object)godot_nativescript_get_userdata(opCast!godot_object);
			return cast(inout(T))o;
		}
		return null;
	}
	static FileDialog _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("FileDialog");
		if(constructor is null) return typeof(this).init;
		return cast(FileDialog)(constructor());
	}
	enum int MODE_OPEN_DIR = 2;
	enum int ACCESS_USERDATA = 1;
	enum int MODE_SAVE_FILE = 4;
	enum int MODE_OPEN_ANY = 3;
	enum int ACCESS_RESOURCES = 0;
	enum int MODE_OPEN_FILES = 1;
	enum int ACCESS_FILESYSTEM = 2;
	enum int MODE_OPEN_FILE = 0;
	void _unhandled_input(in GodotObject arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_unhandled_input");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	void _tree_selected()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_tree_selected");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	void _tree_db_selected()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_tree_db_selected");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	void _dir_entered(in String arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_dir_entered");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	void _file_entered(in String arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_file_entered");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	void _action_pressed()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_action_pressed");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	void _cancel_pressed()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_cancel_pressed");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	void _filter_selected(in int arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_filter_selected");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	void _save_confirm_pressed()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_save_confirm_pressed");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	void clear_filters()
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("FileDialog", "clear_filters");
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null);
	}
	void add_filter(in String filter)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("FileDialog", "add_filter");
		const(void*)[1] _GODOT_args = [cast(void*)(&filter), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void set_filters(in PoolStringArray filters)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("FileDialog", "set_filters");
		const(void*)[1] _GODOT_args = [cast(void*)(&filters), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	PoolStringArray get_filters() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("FileDialog", "get_filters");
		PoolStringArray _GODOT_ret = PoolStringArray.empty;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	String get_current_dir() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("FileDialog", "get_current_dir");
		String _GODOT_ret = String.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	String get_current_file() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("FileDialog", "get_current_file");
		String _GODOT_ret = String.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	String get_current_path() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("FileDialog", "get_current_path");
		String _GODOT_ret = String.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_current_dir(in String dir)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("FileDialog", "set_current_dir");
		const(void*)[1] _GODOT_args = [cast(void*)(&dir), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void set_current_file(in String file)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("FileDialog", "set_current_file");
		const(void*)[1] _GODOT_args = [cast(void*)(&file), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void set_current_path(in String path)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("FileDialog", "set_current_path");
		const(void*)[1] _GODOT_args = [cast(void*)(&path), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void set_mode(in int mode)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("FileDialog", "set_mode");
		const(void*)[1] _GODOT_args = [cast(void*)(&mode), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	int get_mode() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("FileDialog", "get_mode");
		int _GODOT_ret = int.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	VBoxContainer get_vbox()
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("FileDialog", "get_vbox");
		VBoxContainer _GODOT_ret = VBoxContainer.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_access(in int access)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("FileDialog", "set_access");
		const(void*)[1] _GODOT_args = [cast(void*)(&access), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	int get_access() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("FileDialog", "get_access");
		int _GODOT_ret = int.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_show_hidden_files(in bool show)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("FileDialog", "set_show_hidden_files");
		const(void*)[1] _GODOT_args = [cast(void*)(&show), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	bool is_showing_hidden_files() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("FileDialog", "is_showing_hidden_files");
		bool _GODOT_ret = bool.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void _select_drive(in int arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_select_drive");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	void _make_dir()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_make_dir");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	void _make_dir_confirm()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_make_dir_confirm");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	void _update_file_list()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_update_file_list");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	void _update_dir()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_update_dir");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	void invalidate()
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("FileDialog", "invalidate");
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null);
	}
}
