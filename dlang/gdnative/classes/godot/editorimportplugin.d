module godot.editorimportplugin;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.object;
import godot.classdb;
import godot.reference;
@GodotBaseClass struct EditorImportPlugin
{
	static immutable string _GODOT_internal_name = "EditorImportPlugin";
public:
	union { godot_object _godot_object; Reference base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	package(godot) void* opCast(T : void*)() const { return cast(void*)_godot_object.ptr; }
	godot_object opCast(T : godot_object)() const { return cast(godot_object)_godot_object; }
	bool opEquals(in EditorImportPlugin other) const { return _godot_object.ptr is other._godot_object.ptr; }
	EditorImportPlugin opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	bool opCast(T : bool)() const { return _godot_object.ptr !is null; }
	inout(T) opCast(T)() inout if(isGodotBaseClass!T)
	{
		static assert(staticIndexOf!(EditorImportPlugin, T.BaseClasses) != -1, "Godot class "~T.stringof~" does not inherit EditorImportPlugin");
		if(_godot_object.ptr is null) return T.init;
		String c = String(T._GODOT_internal_name);
		if(is_class(c)) return inout(T)(_godot_object);
		return T.init;
	}
	inout(T) opCast(T)() inout if(extendsGodotBaseClass!T)
	{
		static assert(is(typeof(T.owner) : EditorImportPlugin) || staticIndexOf!(EditorImportPlugin, typeof(T.owner).BaseClasses) != -1, "D class "~T.stringof~" does not extend EditorImportPlugin");
		if(_godot_object.ptr is null) return null;
		if(has_method(String(`_GDNATIVE_D_typeid`)))
		{
			Object o = cast(Object)godot_nativescript_get_userdata(opCast!godot_object);
			return cast(inout(T))o;
		}
		return null;
	}
	static EditorImportPlugin _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("EditorImportPlugin");
		if(constructor is null) return typeof(this).init;
		return cast(EditorImportPlugin)(constructor());
	}
	String get_importer_name()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("get_importer_name");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(String);
	}
	String get_visible_name()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("get_visible_name");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(String);
	}
	int get_preset_count()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("get_preset_count");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(int);
	}
	String get_preset_name(in int preset)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(preset);
		String _GODOT_method_name = String("get_preset_name");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(String);
	}
	Array get_recognized_extensions()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("get_recognized_extensions");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(Array);
	}
	Array get_import_options(in int preset)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(preset);
		String _GODOT_method_name = String("get_import_options");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(Array);
	}
	String get_save_extension()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("get_save_extension");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(String);
	}
	String get_resource_type()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("get_resource_type");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(String);
	}
	bool get_option_visibility(in String option, in Dictionary options)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(option);
		_GODOT_args.append(options);
		String _GODOT_method_name = String("get_option_visibility");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(bool);
	}
	int _import(in String source_file, in String save_path, in Dictionary options, in Array r_platform_variants, in Array r_gen_files)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(source_file);
		_GODOT_args.append(save_path);
		_GODOT_args.append(options);
		_GODOT_args.append(r_platform_variants);
		_GODOT_args.append(r_gen_files);
		String _GODOT_method_name = String("import");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(int);
	}
}
