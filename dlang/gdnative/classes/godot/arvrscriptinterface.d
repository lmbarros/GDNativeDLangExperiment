module godot.arvrscriptinterface;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.object;
import godot.classdb;
import godot.arvrinterface;
@GodotBaseClass struct ARVRScriptInterface
{
	static immutable string _GODOT_internal_name = "ARVRScriptInterface";
public:
	union { godot_object _godot_object; ARVRInterface base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	package(godot) void* opCast(T : void*)() const { return cast(void*)_godot_object.ptr; }
	godot_object opCast(T : godot_object)() const { return cast(godot_object)_godot_object; }
	bool opEquals(in ARVRScriptInterface other) const { return _godot_object.ptr is other._godot_object.ptr; }
	ARVRScriptInterface opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	bool opCast(T : bool)() const { return _godot_object.ptr !is null; }
	inout(T) opCast(T)() inout if(isGodotBaseClass!T)
	{
		static assert(staticIndexOf!(ARVRScriptInterface, T.BaseClasses) != -1, "Godot class "~T.stringof~" does not inherit ARVRScriptInterface");
		if(_godot_object.ptr is null) return T.init;
		String c = String(T._GODOT_internal_name);
		if(is_class(c)) return inout(T)(_godot_object);
		return T.init;
	}
	inout(T) opCast(T)() inout if(extendsGodotBaseClass!T)
	{
		static assert(is(typeof(T.owner) : ARVRScriptInterface) || staticIndexOf!(ARVRScriptInterface, typeof(T.owner).BaseClasses) != -1, "D class "~T.stringof~" does not extend ARVRScriptInterface");
		if(_godot_object.ptr is null) return null;
		if(has_method(String(`_GDNATIVE_D_typeid`)))
		{
			Object o = cast(Object)godot_nativescript_get_userdata(opCast!godot_object);
			return cast(inout(T))o;
		}
		return null;
	}
	static ARVRScriptInterface _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("ARVRScriptInterface");
		if(constructor is null) return typeof(this).init;
		return cast(ARVRScriptInterface)(constructor());
	}
	bool is_installed()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("is_installed");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(bool);
	}
	bool hmd_is_present()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("hmd_is_present");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(bool);
	}
	bool supports_hmd()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("supports_hmd");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(bool);
	}
	bool is_initialized()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("is_initialized");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(bool);
	}
	bool initialize()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("initialize");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(bool);
	}
	void uninitialize()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("uninitialize");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	bool is_stereo()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("is_stereo");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(bool);
	}
	Vector2 get_recommended_render_targetsize()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("get_recommended_render_targetsize");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(Vector2);
	}
	Transform get_transform_for_eye(in int eye, in Transform cam_transform)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(eye);
		_GODOT_args.append(cam_transform);
		String _GODOT_method_name = String("get_transform_for_eye");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(Transform);
	}
	void _get_projection_for_eye()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_get_projection_for_eye");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	void commit_for_eye(in int eye, in RID render_target)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(eye);
		_GODOT_args.append(render_target);
		String _GODOT_method_name = String("commit_for_eye");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	void process()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("process");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
}
