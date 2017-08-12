module godot.xmlparser;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.object;
import godot.classdb;
import godot.reference;
@GodotBaseClass struct XMLParser
{
	static immutable string _GODOT_internal_name = "XMLParser";
public:
	union { godot_object _godot_object; Reference base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	package(godot) void* opCast(T : void*)() const { return cast(void*)_godot_object.ptr; }
	godot_object opCast(T : godot_object)() const { return cast(godot_object)_godot_object; }
	bool opEquals(in XMLParser other) const { return _godot_object.ptr is other._godot_object.ptr; }
	XMLParser opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	bool opCast(T : bool)() const { return _godot_object.ptr !is null; }
	inout(T) opCast(T)() inout if(isGodotBaseClass!T)
	{
		static assert(staticIndexOf!(XMLParser, T.BaseClasses) != -1, "Godot class "~T.stringof~" does not inherit XMLParser");
		if(_godot_object.ptr is null) return T.init;
		String c = String(T._GODOT_internal_name);
		if(is_class(c)) return inout(T)(_godot_object);
		return T.init;
	}
	inout(T) opCast(T)() inout if(extendsGodotBaseClass!T)
	{
		static assert(is(typeof(T.owner) : XMLParser) || staticIndexOf!(XMLParser, typeof(T.owner).BaseClasses) != -1, "D class "~T.stringof~" does not extend XMLParser");
		if(_godot_object.ptr is null) return null;
		if(has_method(String(`_GDNATIVE_D_typeid`)))
		{
			Object o = cast(Object)godot_nativescript_get_userdata(opCast!godot_object);
			return cast(inout(T))o;
		}
		return null;
	}
	static XMLParser _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("XMLParser");
		if(constructor is null) return typeof(this).init;
		return cast(XMLParser)(constructor());
	}
	enum int NODE_UNKNOWN = 6;
	enum int NODE_ELEMENT = 1;
	enum int NODE_COMMENT = 4;
	enum int NODE_NONE = 0;
	enum int NODE_ELEMENT_END = 2;
	enum int NODE_TEXT = 3;
	enum int NODE_CDATA = 5;
	int read()
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("XMLParser", "read");
		int _GODOT_ret = int.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	int get_node_type()
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("XMLParser", "get_node_type");
		int _GODOT_ret = int.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	String get_node_name() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("XMLParser", "get_node_name");
		String _GODOT_ret = String.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	String get_node_data() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("XMLParser", "get_node_data");
		String _GODOT_ret = String.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	int get_node_offset() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("XMLParser", "get_node_offset");
		int _GODOT_ret = int.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	int get_attribute_count() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("XMLParser", "get_attribute_count");
		int _GODOT_ret = int.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	String get_attribute_name(in int idx) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("XMLParser", "get_attribute_name");
		String _GODOT_ret = String.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&idx), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	String get_attribute_value(in int idx) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("XMLParser", "get_attribute_value");
		String _GODOT_ret = String.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&idx), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	bool has_attribute(in String name) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("XMLParser", "has_attribute");
		bool _GODOT_ret = bool.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&name), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	String get_named_attribute_value(in String name) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("XMLParser", "get_named_attribute_value");
		String _GODOT_ret = String.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&name), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	String get_named_attribute_value_safe(in String name) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("XMLParser", "get_named_attribute_value_safe");
		String _GODOT_ret = String.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&name), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	bool is_empty() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("XMLParser", "is_empty");
		bool _GODOT_ret = bool.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	int get_current_line() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("XMLParser", "get_current_line");
		int _GODOT_ret = int.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void skip_section()
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("XMLParser", "skip_section");
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null);
	}
	int seek(in int pos)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("XMLParser", "seek");
		int _GODOT_ret = int.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&pos), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	int open(in String file)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("XMLParser", "open");
		int _GODOT_ret = int.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&file), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	int open_buffer(in PoolByteArray buffer)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("XMLParser", "open_buffer");
		int _GODOT_ret = int.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&buffer), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
}
