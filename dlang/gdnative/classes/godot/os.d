module godot.os;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.object;
import godot.image;
@GodotBaseClass struct OSSingleton
{
	static immutable string _GODOT_internal_name = "_OS";
public:
	static typeof(this) _GODOT_singleton()
	{
		static immutable char* _GODOT_singleton_name = "_OS";
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
	bool opEquals(in OSSingleton other) const { return _godot_object.ptr is other._godot_object.ptr; }
	OSSingleton opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	bool opCast(T : bool)() const { return _godot_object.ptr !is null; }
	inout(T) opCast(T)() inout if(isGodotBaseClass!T)
	{
		static assert(staticIndexOf!(OSSingleton, T.BaseClasses) != -1, "Godot class "~T.stringof~" does not inherit OSSingleton");
		if(_godot_object.ptr is null) return T.init;
		String c = String(T._GODOT_internal_name);
		if(is_class(c)) return inout(T)(_godot_object);
		return T.init;
	}
	inout(T) opCast(T)() inout if(extendsGodotBaseClass!T)
	{
		static assert(is(typeof(T.owner) : OSSingleton) || staticIndexOf!(OSSingleton, typeof(T.owner).BaseClasses) != -1, "D class "~T.stringof~" does not extend OSSingleton");
		if(_godot_object.ptr is null) return null;
		if(has_method(String(`_GDNATIVE_D_typeid`)))
		{
			Object o = cast(Object)godot_nativescript_get_userdata(opCast!godot_object);
			return cast(inout(T))o;
		}
		return null;
	}
	static OSSingleton _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("_OS");
		if(constructor is null) return typeof(this).init;
		return cast(OSSingleton)(constructor());
	}
	enum int DAY_FRIDAY = 5;
	enum int MONTH_OCTOBER = 10;
	enum int MONTH_JULY = 7;
	enum int SCREEN_ORIENTATION_SENSOR = 6;
	enum int DAY_TUESDAY = 2;
	enum int SCREEN_ORIENTATION_PORTRAIT = 1;
	enum int MONTH_FEBRUARY = 2;
	enum int POWERSTATE_UNKNOWN = 0;
	enum int POWERSTATE_CHARGED = 4;
	enum int SYSTEM_DIR_MUSIC = 5;
	enum int DAY_MONDAY = 1;
	enum int SYSTEM_DIR_RINGTONES = 7;
	enum int DAY_SUNDAY = 0;
	enum int SCREEN_ORIENTATION_REVERSE_LANDSCAPE = 2;
	enum int MONTH_NOVEMBER = 11;
	enum int DAY_WEDNESDAY = 3;
	enum int SCREEN_ORIENTATION_REVERSE_PORTRAIT = 3;
	enum int SCREEN_ORIENTATION_LANDSCAPE = 0;
	enum int SCREEN_ORIENTATION_SENSOR_LANDSCAPE = 4;
	enum int DAY_SATURDAY = 6;
	enum int SCREEN_ORIENTATION_SENSOR_PORTRAIT = 5;
	enum int MONTH_MARCH = 3;
	enum int MONTH_MAY = 5;
	enum int SYSTEM_DIR_DESKTOP = 0;
	enum int MONTH_SEPTEMBER = 9;
	enum int DAY_THURSDAY = 4;
	enum int SYSTEM_DIR_DOCUMENTS = 2;
	enum int POWERSTATE_ON_BATTERY = 1;
	enum int POWERSTATE_NO_BATTERY = 2;
	enum int MONTH_JANUARY = 1;
	enum int MONTH_JUNE = 6;
	enum int SYSTEM_DIR_DCIM = 1;
	enum int SYSTEM_DIR_PICTURES = 6;
	enum int POWERSTATE_CHARGING = 3;
	enum int SYSTEM_DIR_MOVIES = 4;
	enum int MONTH_AUGUST = 8;
	enum int MONTH_DECEMBER = 12;
	enum int MONTH_APRIL = 4;
	enum int SYSTEM_DIR_DOWNLOADS = 3;
	void set_clipboard(in String clipboard)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("_OS", "set_clipboard");
		const(void*)[1] _GODOT_args = [cast(void*)(&clipboard), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	String get_clipboard() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("_OS", "get_clipboard");
		String _GODOT_ret = String.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	int get_screen_count() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("_OS", "get_screen_count");
		int _GODOT_ret = int.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	int get_current_screen() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("_OS", "get_current_screen");
		int _GODOT_ret = int.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_current_screen(in int screen)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("_OS", "set_current_screen");
		const(void*)[1] _GODOT_args = [cast(void*)(&screen), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	Vector2 get_screen_position(in int screen = 0) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("_OS", "get_screen_position");
		Vector2 _GODOT_ret = Vector2.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&screen), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	Vector2 get_screen_size(in int screen = 0) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("_OS", "get_screen_size");
		Vector2 _GODOT_ret = Vector2.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&screen), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	int get_screen_dpi(in int screen = 0) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("_OS", "get_screen_dpi");
		int _GODOT_ret = int.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&screen), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	Vector2 get_window_position() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("_OS", "get_window_position");
		Vector2 _GODOT_ret = Vector2.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_window_position(in Vector2 position)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("_OS", "set_window_position");
		const(void*)[1] _GODOT_args = [cast(void*)(&position), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	Vector2 get_window_size() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("_OS", "get_window_size");
		Vector2 _GODOT_ret = Vector2.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_window_size(in Vector2 size)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("_OS", "set_window_size");
		const(void*)[1] _GODOT_args = [cast(void*)(&size), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void set_window_fullscreen(in bool enabled)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("_OS", "set_window_fullscreen");
		const(void*)[1] _GODOT_args = [cast(void*)(&enabled), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	bool is_window_fullscreen() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("_OS", "is_window_fullscreen");
		bool _GODOT_ret = bool.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_window_resizable(in bool enabled)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("_OS", "set_window_resizable");
		const(void*)[1] _GODOT_args = [cast(void*)(&enabled), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	bool is_window_resizable() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("_OS", "is_window_resizable");
		bool _GODOT_ret = bool.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_window_minimized(in bool enabled)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("_OS", "set_window_minimized");
		const(void*)[1] _GODOT_args = [cast(void*)(&enabled), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	bool is_window_minimized() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("_OS", "is_window_minimized");
		bool _GODOT_ret = bool.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_window_maximized(in bool enabled)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("_OS", "set_window_maximized");
		const(void*)[1] _GODOT_args = [cast(void*)(&enabled), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	bool is_window_maximized() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("_OS", "is_window_maximized");
		bool _GODOT_ret = bool.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void request_attention()
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("_OS", "request_attention");
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null);
	}
	void set_borderless_window(in bool borderless)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("_OS", "set_borderless_window");
		const(void*)[1] _GODOT_args = [cast(void*)(&borderless), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	bool get_borderless_window() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("_OS", "get_borderless_window");
		bool _GODOT_ret = bool.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_ime_position(in Vector2 position)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("_OS", "set_ime_position");
		const(void*)[1] _GODOT_args = [cast(void*)(&position), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void set_screen_orientation(in int orientation)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("_OS", "set_screen_orientation");
		const(void*)[1] _GODOT_args = [cast(void*)(&orientation), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	int get_screen_orientation() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("_OS", "get_screen_orientation");
		int _GODOT_ret = int.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_keep_screen_on(in bool enabled)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("_OS", "set_keep_screen_on");
		const(void*)[1] _GODOT_args = [cast(void*)(&enabled), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	bool is_keep_screen_on() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("_OS", "is_keep_screen_on");
		bool _GODOT_ret = bool.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	bool has_touchscreen_ui_hint() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("_OS", "has_touchscreen_ui_hint");
		bool _GODOT_ret = bool.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_window_title(in String title)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("_OS", "set_window_title");
		const(void*)[1] _GODOT_args = [cast(void*)(&title), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void set_low_processor_usage_mode(in bool enable)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("_OS", "set_low_processor_usage_mode");
		const(void*)[1] _GODOT_args = [cast(void*)(&enable), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	bool is_in_low_processor_usage_mode() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("_OS", "is_in_low_processor_usage_mode");
		bool _GODOT_ret = bool.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	int get_processor_count() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("_OS", "get_processor_count");
		int _GODOT_ret = int.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	String get_executable_path() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("_OS", "get_executable_path");
		String _GODOT_ret = String.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	int execute(in String path, in PoolStringArray arguments, in bool blocking, in Array output = Array.empty_array)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("_OS", "execute");
		int _GODOT_ret = int.init;
		const(void*)[4] _GODOT_args = [cast(void*)(&path), cast(void*)(&arguments), cast(void*)(&blocking), cast(void*)(&output), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	int kill(in int pid)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("_OS", "kill");
		int _GODOT_ret = int.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&pid), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	int shell_open(in String uri)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("_OS", "shell_open");
		int _GODOT_ret = int.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&uri), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	int get_process_ID() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("_OS", "get_process_ID");
		int _GODOT_ret = int.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	String get_environment(in String environment) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("_OS", "get_environment");
		String _GODOT_ret = String.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&environment), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	bool has_environment(in String environment) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("_OS", "has_environment");
		bool _GODOT_ret = bool.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&environment), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	String get_name() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("_OS", "get_name");
		String _GODOT_ret = String.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	PoolStringArray get_cmdline_args()
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("_OS", "get_cmdline_args");
		PoolStringArray _GODOT_ret = PoolStringArray.empty;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	Dictionary get_datetime(in bool utc = false) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("_OS", "get_datetime");
		Dictionary _GODOT_ret = Dictionary.empty_dictionary;
		const(void*)[1] _GODOT_args = [cast(void*)(&utc), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	Dictionary get_date(in bool utc = false) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("_OS", "get_date");
		Dictionary _GODOT_ret = Dictionary.empty_dictionary;
		const(void*)[1] _GODOT_args = [cast(void*)(&utc), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	Dictionary get_time(in bool utc = false) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("_OS", "get_time");
		Dictionary _GODOT_ret = Dictionary.empty_dictionary;
		const(void*)[1] _GODOT_args = [cast(void*)(&utc), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	Dictionary get_time_zone_info() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("_OS", "get_time_zone_info");
		Dictionary _GODOT_ret = Dictionary.empty_dictionary;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	int get_unix_time() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("_OS", "get_unix_time");
		int _GODOT_ret = int.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	Dictionary get_datetime_from_unix_time(in int unix_time_val) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("_OS", "get_datetime_from_unix_time");
		Dictionary _GODOT_ret = Dictionary.empty_dictionary;
		const(void*)[1] _GODOT_args = [cast(void*)(&unix_time_val), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	int get_unix_time_from_datetime(in Dictionary datetime) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("_OS", "get_unix_time_from_datetime");
		int _GODOT_ret = int.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&datetime), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	int get_system_time_secs() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("_OS", "get_system_time_secs");
		int _GODOT_ret = int.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_icon(in Image icon)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("_OS", "set_icon");
		const(void*)[1] _GODOT_args = [cast(void*)(icon), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	int get_exit_code() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("_OS", "get_exit_code");
		int _GODOT_ret = int.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_exit_code(in int code)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("_OS", "set_exit_code");
		const(void*)[1] _GODOT_args = [cast(void*)(&code), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void delay_usec(in int usec) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("_OS", "delay_usec");
		const(void*)[1] _GODOT_args = [cast(void*)(&usec), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void delay_msec(in int msec) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("_OS", "delay_msec");
		const(void*)[1] _GODOT_args = [cast(void*)(&msec), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	int get_ticks_msec() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("_OS", "get_ticks_msec");
		int _GODOT_ret = int.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	int get_splash_tick_msec() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("_OS", "get_splash_tick_msec");
		int _GODOT_ret = int.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	String get_locale() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("_OS", "get_locale");
		String _GODOT_ret = String.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	String get_latin_keyboard_variant() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("_OS", "get_latin_keyboard_variant");
		String _GODOT_ret = String.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	String get_model_name() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("_OS", "get_model_name");
		String _GODOT_ret = String.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	bool can_draw() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("_OS", "can_draw");
		bool _GODOT_ret = bool.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	bool is_stdout_verbose() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("_OS", "is_stdout_verbose");
		bool _GODOT_ret = bool.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	bool can_use_threads() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("_OS", "can_use_threads");
		bool _GODOT_ret = bool.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	bool is_debug_build() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("_OS", "is_debug_build");
		bool _GODOT_ret = bool.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void dump_memory_to_file(in String file)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("_OS", "dump_memory_to_file");
		const(void*)[1] _GODOT_args = [cast(void*)(&file), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void dump_resources_to_file(in String file)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("_OS", "dump_resources_to_file");
		const(void*)[1] _GODOT_args = [cast(void*)(&file), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	bool has_virtual_keyboard() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("_OS", "has_virtual_keyboard");
		bool _GODOT_ret = bool.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void show_virtual_keyboard(in String existing_text = String.init)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("_OS", "show_virtual_keyboard");
		const(void*)[1] _GODOT_args = [cast(void*)(&existing_text), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void hide_virtual_keyboard()
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("_OS", "hide_virtual_keyboard");
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null);
	}
	void print_resources_in_use(in bool _short = false)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("_OS", "print_resources_in_use");
		const(void*)[1] _GODOT_args = [cast(void*)(&_short), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void print_all_resources(in String tofile = String.init)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("_OS", "print_all_resources");
		const(void*)[1] _GODOT_args = [cast(void*)(&tofile), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	int get_static_memory_usage() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("_OS", "get_static_memory_usage");
		int _GODOT_ret = int.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	int get_static_memory_peak_usage() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("_OS", "get_static_memory_peak_usage");
		int _GODOT_ret = int.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	int get_dynamic_memory_usage() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("_OS", "get_dynamic_memory_usage");
		int _GODOT_ret = int.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	String get_data_dir() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("_OS", "get_data_dir");
		String _GODOT_ret = String.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	String get_system_dir(in int dir) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("_OS", "get_system_dir");
		String _GODOT_ret = String.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&dir), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	String get_unique_ID() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("_OS", "get_unique_ID");
		String _GODOT_ret = String.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	bool is_ok_left_and_cancel_right() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("_OS", "is_ok_left_and_cancel_right");
		bool _GODOT_ret = bool.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void print_all_textures_by_size()
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("_OS", "print_all_textures_by_size");
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null);
	}
	void print_resources_by_type(in PoolStringArray types)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("_OS", "print_resources_by_type");
		const(void*)[1] _GODOT_args = [cast(void*)(&types), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	int native_video_play(in String path, in float volume, in String audio_track, in String subtitle_track)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("_OS", "native_video_play");
		int _GODOT_ret = int.init;
		const(void*)[4] _GODOT_args = [cast(void*)(&path), cast(void*)(&volume), cast(void*)(&audio_track), cast(void*)(&subtitle_track), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	bool native_video_is_playing()
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("_OS", "native_video_is_playing");
		bool _GODOT_ret = bool.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void native_video_stop()
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("_OS", "native_video_stop");
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null);
	}
	void native_video_pause()
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("_OS", "native_video_pause");
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null);
	}
	void native_video_unpause()
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("_OS", "native_video_unpause");
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null);
	}
	String get_scancode_string(in int code) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("_OS", "get_scancode_string");
		String _GODOT_ret = String.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&code), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	bool is_scancode_unicode(in int code) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("_OS", "is_scancode_unicode");
		bool _GODOT_ret = bool.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&code), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	int find_scancode_from_string(in String string) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("_OS", "find_scancode_from_string");
		int _GODOT_ret = int.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&string), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_use_file_access_save_and_swap(in bool enabled)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("_OS", "set_use_file_access_save_and_swap");
		const(void*)[1] _GODOT_args = [cast(void*)(&enabled), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void alert(in String text, in String title = "Alert!")
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("_OS", "alert");
		const(void*)[2] _GODOT_args = [cast(void*)(&text), cast(void*)(&title), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	int set_thread_name(in String name)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("_OS", "set_thread_name");
		int _GODOT_ret = int.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&name), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_use_vsync(in bool enable)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("_OS", "set_use_vsync");
		const(void*)[1] _GODOT_args = [cast(void*)(&enable), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	bool is_vsync_enabled() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("_OS", "is_vsync_enabled");
		bool _GODOT_ret = bool.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	int get_power_state()
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("_OS", "get_power_state");
		int _GODOT_ret = int.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	int get_power_seconds_left()
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("_OS", "get_power_seconds_left");
		int _GODOT_ret = int.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	int get_power_percent_left()
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("_OS", "get_power_percent_left");
		int _GODOT_ret = int.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
}
@property pragma(inline, true)
OSSingleton OS()
{
	return OSSingleton._GODOT_singleton();
}
