module godot.editorresourcepreview;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.object;
import godot.classdb;
import godot.node;
import godot.resource;
import godot.editorresourcepreviewgenerator;
@GodotBaseClass struct EditorResourcePreview
{
	static immutable string _GODOT_internal_name = "EditorResourcePreview";
public:
	union { godot_object _godot_object; Node base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	package(godot) void* opCast(T : void*)() const { return cast(void*)_godot_object.ptr; }
	godot_object opCast(T : godot_object)() const { return cast(godot_object)_godot_object; }
	bool opEquals(in EditorResourcePreview other) const { return _godot_object.ptr is other._godot_object.ptr; }
	EditorResourcePreview opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	bool opCast(T : bool)() const { return _godot_object.ptr !is null; }
	inout(T) opCast(T)() inout if(isGodotBaseClass!T)
	{
		static assert(staticIndexOf!(EditorResourcePreview, T.BaseClasses) != -1, "Godot class "~T.stringof~" does not inherit EditorResourcePreview");
		if(_godot_object.ptr is null) return T.init;
		String c = String(T._GODOT_internal_name);
		if(is_class(c)) return inout(T)(_godot_object);
		return T.init;
	}
	inout(T) opCast(T)() inout if(extendsGodotBaseClass!T)
	{
		static assert(is(typeof(T.owner) : EditorResourcePreview) || staticIndexOf!(EditorResourcePreview, typeof(T.owner).BaseClasses) != -1, "D class "~T.stringof~" does not extend EditorResourcePreview");
		if(_godot_object.ptr is null) return null;
		if(has_method(String(`_GDNATIVE_D_typeid`)))
		{
			Object o = cast(Object)godot_nativescript_get_userdata(opCast!godot_object);
			return cast(inout(T))o;
		}
		return null;
	}
	static EditorResourcePreview _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("EditorResourcePreview");
		if(constructor is null) return typeof(this).init;
		return cast(EditorResourcePreview)(constructor());
	}
	void _preview_ready(in String arg0, in GodotObject arg1, in int arg2, in String arg3, in Variant arg4)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		_GODOT_args.append(arg1);
		_GODOT_args.append(arg2);
		_GODOT_args.append(arg3);
		_GODOT_args.append(arg4);
		String _GODOT_method_name = String("_preview_ready");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	void queue_resource_preview(in String path, in GodotObject receiver, in String receiver_func, in Variant userdata)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("EditorResourcePreview", "queue_resource_preview");
		const(void*)[4] _GODOT_args = [cast(void*)(&path), cast(void*)(receiver), cast(void*)(&receiver_func), cast(void*)(&userdata), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void queue_edited_resource_preview(in Resource resource, in GodotObject receiver, in String receiver_func, in Variant userdata)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("EditorResourcePreview", "queue_edited_resource_preview");
		const(void*)[4] _GODOT_args = [cast(void*)(resource), cast(void*)(receiver), cast(void*)(&receiver_func), cast(void*)(&userdata), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void add_preview_generator(in EditorResourcePreviewGenerator generator)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("EditorResourcePreview", "add_preview_generator");
		const(void*)[1] _GODOT_args = [cast(void*)(generator), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void remove_preview_generator(in EditorResourcePreviewGenerator generator)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("EditorResourcePreview", "remove_preview_generator");
		const(void*)[1] _GODOT_args = [cast(void*)(generator), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void check_for_invalidation(in String path)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("EditorResourcePreview", "check_for_invalidation");
		const(void*)[1] _GODOT_args = [cast(void*)(&path), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
}
