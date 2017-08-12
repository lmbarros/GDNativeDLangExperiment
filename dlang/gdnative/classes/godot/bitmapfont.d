module godot.bitmapfont;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.object;
import godot.classdb;
import godot.font;
import godot.texture;
@GodotBaseClass struct BitmapFont
{
	static immutable string _GODOT_internal_name = "BitmapFont";
public:
	union { godot_object _godot_object; Font base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	package(godot) void* opCast(T : void*)() const { return cast(void*)_godot_object.ptr; }
	godot_object opCast(T : godot_object)() const { return cast(godot_object)_godot_object; }
	bool opEquals(in BitmapFont other) const { return _godot_object.ptr is other._godot_object.ptr; }
	BitmapFont opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	bool opCast(T : bool)() const { return _godot_object.ptr !is null; }
	inout(T) opCast(T)() inout if(isGodotBaseClass!T)
	{
		static assert(staticIndexOf!(BitmapFont, T.BaseClasses) != -1, "Godot class "~T.stringof~" does not inherit BitmapFont");
		if(_godot_object.ptr is null) return T.init;
		String c = String(T._GODOT_internal_name);
		if(is_class(c)) return inout(T)(_godot_object);
		return T.init;
	}
	inout(T) opCast(T)() inout if(extendsGodotBaseClass!T)
	{
		static assert(is(typeof(T.owner) : BitmapFont) || staticIndexOf!(BitmapFont, typeof(T.owner).BaseClasses) != -1, "D class "~T.stringof~" does not extend BitmapFont");
		if(_godot_object.ptr is null) return null;
		if(has_method(String(`_GDNATIVE_D_typeid`)))
		{
			Object o = cast(Object)godot_nativescript_get_userdata(opCast!godot_object);
			return cast(inout(T))o;
		}
		return null;
	}
	static BitmapFont _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("BitmapFont");
		if(constructor is null) return typeof(this).init;
		return cast(BitmapFont)(constructor());
	}
	int create_from_fnt(in String path)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("BitmapFont", "create_from_fnt");
		int _GODOT_ret = int.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&path), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_height(in float px)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("BitmapFont", "set_height");
		const(void*)[1] _GODOT_args = [cast(void*)(&px), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void set_ascent(in float px)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("BitmapFont", "set_ascent");
		const(void*)[1] _GODOT_args = [cast(void*)(&px), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void add_kerning_pair(in int char_a, in int char_b, in int kerning)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("BitmapFont", "add_kerning_pair");
		const(void*)[3] _GODOT_args = [cast(void*)(&char_a), cast(void*)(&char_b), cast(void*)(&kerning), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	int get_kerning_pair(in int char_a, in int char_b) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("BitmapFont", "get_kerning_pair");
		int _GODOT_ret = int.init;
		const(void*)[2] _GODOT_args = [cast(void*)(&char_a), cast(void*)(&char_b), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void add_texture(in Texture texture)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("BitmapFont", "add_texture");
		const(void*)[1] _GODOT_args = [cast(void*)(texture), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void add_char(in int character, in int texture, in Rect2 rect, in Vector2 _align = Vector2(0, 0), in float advance = -1)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("BitmapFont", "add_char");
		const(void*)[5] _GODOT_args = [cast(void*)(&character), cast(void*)(&texture), cast(void*)(&rect), cast(void*)(&_align), cast(void*)(&advance), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	int get_texture_count() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("BitmapFont", "get_texture_count");
		int _GODOT_ret = int.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	Texture get_texture(in int idx) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("BitmapFont", "get_texture");
		Texture _GODOT_ret = Texture.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&idx), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	Vector2 get_char_size(in int _char, in int next = 0) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("BitmapFont", "get_char_size");
		Vector2 _GODOT_ret = Vector2.init;
		const(void*)[2] _GODOT_args = [cast(void*)(&_char), cast(void*)(&next), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_distance_field_hint(in bool enable)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("BitmapFont", "set_distance_field_hint");
		const(void*)[1] _GODOT_args = [cast(void*)(&enable), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void clear()
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("BitmapFont", "clear");
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null);
	}
	void _set_chars(in PoolIntArray arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_set_chars");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	PoolIntArray _get_chars() const
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_get_chars");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(PoolIntArray);
	}
	void _set_kernings(in PoolIntArray arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_set_kernings");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	PoolIntArray _get_kernings() const
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_get_kernings");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(PoolIntArray);
	}
	void _set_textures(in Array arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_set_textures");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	Array _get_textures() const
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_get_textures");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(Array);
	}
	void set_fallback(in BitmapFont fallback)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("BitmapFont", "set_fallback");
		const(void*)[1] _GODOT_args = [cast(void*)(fallback), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	BitmapFont get_fallback() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("BitmapFont", "get_fallback");
		BitmapFont _GODOT_ret = BitmapFont.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
}
