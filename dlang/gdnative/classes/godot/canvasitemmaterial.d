module godot.canvasitemmaterial;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.object;
import godot.classdb;
import godot.material;
@GodotBaseClass struct CanvasItemMaterial
{
	static immutable string _GODOT_internal_name = "CanvasItemMaterial";
public:
	union { godot_object _godot_object; Material base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	package(godot) void* opCast(T : void*)() const { return cast(void*)_godot_object.ptr; }
	godot_object opCast(T : godot_object)() const { return cast(godot_object)_godot_object; }
	bool opEquals(in CanvasItemMaterial other) const { return _godot_object.ptr is other._godot_object.ptr; }
	CanvasItemMaterial opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	bool opCast(T : bool)() const { return _godot_object.ptr !is null; }
	inout(T) opCast(T)() inout if(isGodotBaseClass!T)
	{
		static assert(staticIndexOf!(CanvasItemMaterial, T.BaseClasses) != -1, "Godot class "~T.stringof~" does not inherit CanvasItemMaterial");
		if(_godot_object.ptr is null) return T.init;
		String c = String(T._GODOT_internal_name);
		if(is_class(c)) return inout(T)(_godot_object);
		return T.init;
	}
	inout(T) opCast(T)() inout if(extendsGodotBaseClass!T)
	{
		static assert(is(typeof(T.owner) : CanvasItemMaterial) || staticIndexOf!(CanvasItemMaterial, typeof(T.owner).BaseClasses) != -1, "D class "~T.stringof~" does not extend CanvasItemMaterial");
		if(_godot_object.ptr is null) return null;
		if(has_method(String(`_GDNATIVE_D_typeid`)))
		{
			Object o = cast(Object)godot_nativescript_get_userdata(opCast!godot_object);
			return cast(inout(T))o;
		}
		return null;
	}
	static CanvasItemMaterial _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("CanvasItemMaterial");
		if(constructor is null) return typeof(this).init;
		return cast(CanvasItemMaterial)(constructor());
	}
	enum int BLEND_MODE_MUL = 3;
	enum int BLEND_MODE_ADD = 1;
	enum int BLEND_MODE_SUB = 2;
	enum int LIGHT_MODE_LIGHT_ONLY = 2;
	enum int BLEND_MODE_MIX = 0;
	enum int LIGHT_MODE_NORMAL = 0;
	enum int LIGHT_MODE_UNSHADED = 1;
	enum int BLEND_MODE_PREMULT_ALPHA = 4;
	void set_blend_mode(in int blend_mode)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("CanvasItemMaterial", "set_blend_mode");
		const(void*)[1] _GODOT_args = [cast(void*)(&blend_mode), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	int get_blend_mode() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("CanvasItemMaterial", "get_blend_mode");
		int _GODOT_ret = int.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_light_mode(in int light_mode)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("CanvasItemMaterial", "set_light_mode");
		const(void*)[1] _GODOT_args = [cast(void*)(&light_mode), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	int get_light_mode() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("CanvasItemMaterial", "get_light_mode");
		int _GODOT_ret = int.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
}
