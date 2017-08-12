module godot.image;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.object;
import godot.classdb;
import godot.resource;
@GodotBaseClass struct Image
{
	static immutable string _GODOT_internal_name = "Image";
public:
	union { godot_object _godot_object; Resource base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	package(godot) void* opCast(T : void*)() const { return cast(void*)_godot_object.ptr; }
	godot_object opCast(T : godot_object)() const { return cast(godot_object)_godot_object; }
	bool opEquals(in Image other) const { return _godot_object.ptr is other._godot_object.ptr; }
	Image opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	bool opCast(T : bool)() const { return _godot_object.ptr !is null; }
	inout(T) opCast(T)() inout if(isGodotBaseClass!T)
	{
		static assert(staticIndexOf!(Image, T.BaseClasses) != -1, "Godot class "~T.stringof~" does not inherit Image");
		if(_godot_object.ptr is null) return T.init;
		String c = String(T._GODOT_internal_name);
		if(is_class(c)) return inout(T)(_godot_object);
		return T.init;
	}
	inout(T) opCast(T)() inout if(extendsGodotBaseClass!T)
	{
		static assert(is(typeof(T.owner) : Image) || staticIndexOf!(Image, typeof(T.owner).BaseClasses) != -1, "D class "~T.stringof~" does not extend Image");
		if(_godot_object.ptr is null) return null;
		if(has_method(String(`_GDNATIVE_D_typeid`)))
		{
			Object o = cast(Object)godot_nativescript_get_userdata(opCast!godot_object);
			return cast(inout(T))o;
		}
		return null;
	}
	static Image _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("Image");
		if(constructor is null) return typeof(this).init;
		return cast(Image)(constructor());
	}
	enum int FORMAT_RGBAH = 15;
	enum int FORMAT_RGBE9995 = 16;
	enum int FORMAT_ETC2_RG11S = 33;
	enum int FORMAT_DXT3 = 18;
	enum int FORMAT_RGBA5551 = 7;
	enum int FORMAT_RGTC_R = 20;
	enum int COMPRESS_S3TC = 0;
	enum int FORMAT_PVRTC4A = 28;
	enum int FORMAT_ETC2_R11 = 30;
	enum int INTERPOLATE_BILINEAR = 1;
	enum int ALPHA_NONE = 0;
	enum int ALPHA_BLEND = 2;
	enum int COMPRESS_PVRTC2 = 1;
	enum int FORMAT_DXT1 = 17;
	enum int FORMAT_RGH = 13;
	enum int FORMAT_LA8 = 1;
	enum int FORMAT_ETC2_R11S = 31;
	enum int FORMAT_ETC2_RG11 = 32;
	enum int FORMAT_RGTC_RG = 21;
	enum int FORMAT_RGBAF = 11;
	enum int ALPHA_BIT = 1;
	enum int FORMAT_DXT5 = 19;
	enum int FORMAT_PVRTC2A = 26;
	enum int INTERPOLATE_CUBIC = 2;
	enum int FORMAT_ETC = 29;
	enum int COMPRESS_ETC = 3;
	enum int FORMAT_RGBH = 14;
	enum int COMPRESS_PVRTC4 = 2;
	enum int FORMAT_RGF = 9;
	enum int FORMAT_L8 = 0;
	enum int FORMAT_MAX = 37;
	enum int FORMAT_RH = 12;
	enum int INTERPOLATE_NEAREST = 0;
	enum int COMPRESS_SOURCE_GENERIC = 0;
	enum int FORMAT_RGB8 = 4;
	enum int FORMAT_ETC2_RGB8 = 34;
	enum int FORMAT_BPTC_RGBA = 22;
	enum int FORMAT_ETC2_RGBA8 = 35;
	enum int FORMAT_ETC2_RGB8A1 = 36;
	enum int FORMAT_R8 = 2;
	enum int FORMAT_BPTC_RGBFU = 24;
	enum int FORMAT_BPTC_RGBF = 23;
	enum int COMPRESS_ETC2 = 4;
	enum int FORMAT_RGBA4444 = 6;
	enum int FORMAT_RGBA8 = 5;
	enum int FORMAT_PVRTC4 = 27;
	enum int COMPRESS_SOURCE_SRGB = 1;
	enum int COMPRESS_SOURCE_NORMAL = 2;
	enum int FORMAT_RG8 = 3;
	enum int FORMAT_RF = 8;
	enum int FORMAT_RGBF = 10;
	enum int FORMAT_PVRTC2 = 25;
	int get_width() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Image", "get_width");
		int _GODOT_ret = int.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	int get_height() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Image", "get_height");
		int _GODOT_ret = int.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	bool has_mipmaps() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Image", "has_mipmaps");
		bool _GODOT_ret = bool.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	int get_format() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Image", "get_format");
		int _GODOT_ret = int.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	PoolByteArray get_data() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Image", "get_data");
		PoolByteArray _GODOT_ret = PoolByteArray.empty;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void convert(in int format)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Image", "convert");
		const(void*)[1] _GODOT_args = [cast(void*)(&format), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	int get_mipmap_offset(in int mipmap) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Image", "get_mipmap_offset");
		int _GODOT_ret = int.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&mipmap), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void resize_to_po2(in bool square = false)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Image", "resize_to_po2");
		const(void*)[1] _GODOT_args = [cast(void*)(&square), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void resize(in int width, in int height, in int interpolation = 1)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Image", "resize");
		const(void*)[3] _GODOT_args = [cast(void*)(&width), cast(void*)(&height), cast(void*)(&interpolation), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void shrink_x2()
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Image", "shrink_x2");
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null);
	}
	void expand_x2_hq2x()
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Image", "expand_x2_hq2x");
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null);
	}
	void crop(in int width, in int height)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Image", "crop");
		const(void*)[2] _GODOT_args = [cast(void*)(&width), cast(void*)(&height), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void flip_x()
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Image", "flip_x");
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null);
	}
	void flip_y()
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Image", "flip_y");
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null);
	}
	int generate_mipmaps()
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Image", "generate_mipmaps");
		int _GODOT_ret = int.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void clear_mipmaps()
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Image", "clear_mipmaps");
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null);
	}
	void create(in int width, in int height, in bool use_mipmaps, in int format)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Image", "create");
		const(void*)[4] _GODOT_args = [cast(void*)(&width), cast(void*)(&height), cast(void*)(&use_mipmaps), cast(void*)(&format), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void create_from_data(in int width, in int height, in bool use_mipmaps, in int format, in PoolByteArray data)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Image", "create_from_data");
		const(void*)[5] _GODOT_args = [cast(void*)(&width), cast(void*)(&height), cast(void*)(&use_mipmaps), cast(void*)(&format), cast(void*)(&data), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	bool is_empty() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Image", "is_empty");
		bool _GODOT_ret = bool.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	int load(in String path)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Image", "load");
		int _GODOT_ret = int.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&path), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	int save_png(in String path) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Image", "save_png");
		int _GODOT_ret = int.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&path), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	int detect_alpha() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Image", "detect_alpha");
		int _GODOT_ret = int.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	bool is_invisible() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Image", "is_invisible");
		bool _GODOT_ret = bool.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	int compress(in int mode, in int source, in float lossy_quality)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Image", "compress");
		int _GODOT_ret = int.init;
		const(void*)[3] _GODOT_args = [cast(void*)(&mode), cast(void*)(&source), cast(void*)(&lossy_quality), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	int decompress()
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Image", "decompress");
		int _GODOT_ret = int.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	bool is_compressed() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Image", "is_compressed");
		bool _GODOT_ret = bool.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void fix_alpha_edges()
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Image", "fix_alpha_edges");
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null);
	}
	void premultiply_alpha()
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Image", "premultiply_alpha");
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null);
	}
	void srgb_to_linear()
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Image", "srgb_to_linear");
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null);
	}
	void normalmap_to_xy()
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Image", "normalmap_to_xy");
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null);
	}
	void blit_rect(in Image src, in Rect2 src_rect, in Vector2 dst)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Image", "blit_rect");
		const(void*)[3] _GODOT_args = [cast(void*)(src), cast(void*)(&src_rect), cast(void*)(&dst), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void blit_rect_mask(in Image src, in Image mask, in Rect2 src_rect, in Vector2 dst)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Image", "blit_rect_mask");
		const(void*)[4] _GODOT_args = [cast(void*)(src), cast(void*)(mask), cast(void*)(&src_rect), cast(void*)(&dst), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void blend_rect(in Image src, in Rect2 src_rect, in Vector2 dst)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Image", "blend_rect");
		const(void*)[3] _GODOT_args = [cast(void*)(src), cast(void*)(&src_rect), cast(void*)(&dst), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void blend_rect_mask(in Image src, in Image mask, in Rect2 src_rect, in Vector2 dst)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Image", "blend_rect_mask");
		const(void*)[4] _GODOT_args = [cast(void*)(src), cast(void*)(mask), cast(void*)(&src_rect), cast(void*)(&dst), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void fill(in Color color)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Image", "fill");
		const(void*)[1] _GODOT_args = [cast(void*)(&color), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	Rect2 get_used_rect() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Image", "get_used_rect");
		Rect2 _GODOT_ret = Rect2.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	Image get_rect(in Rect2 rect) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Image", "get_rect");
		Image _GODOT_ret = Image.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&rect), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void copy_from(in Image src)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Image", "copy_from");
		const(void*)[1] _GODOT_args = [cast(void*)(src), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void _set_data(in Dictionary data)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(data);
		String _GODOT_method_name = String("_set_data");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	Dictionary _get_data() const
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_get_data");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(Dictionary);
	}
	void lock()
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Image", "lock");
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null);
	}
	void unlock()
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Image", "unlock");
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null);
	}
	void set_pixel(in int x, in int y, in Color color)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Image", "set_pixel");
		const(void*)[3] _GODOT_args = [cast(void*)(&x), cast(void*)(&y), cast(void*)(&color), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	Color get_pixel(in int x, in int y) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("Image", "get_pixel");
		Color _GODOT_ret = Color.init;
		const(void*)[2] _GODOT_args = [cast(void*)(&x), cast(void*)(&y), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
}
