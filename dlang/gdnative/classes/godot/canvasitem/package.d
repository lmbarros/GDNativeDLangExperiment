module godot.canvasitem;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.object;
import godot.node;
import godot.texture;
import godot.stylebox;
import godot.font;
import godot.world2d;
import godot.material;
import godot.inputevent;
@GodotBaseClass struct CanvasItem
{
	static immutable string _GODOT_internal_name = "CanvasItem";
public:
	union { godot_object _godot_object; Node base; }
	alias base this;
	alias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);
	package(godot) void* opCast(T : void*)() const { return cast(void*)_godot_object.ptr; }
	godot_object opCast(T : godot_object)() const { return cast(godot_object)_godot_object; }
	bool opEquals(in CanvasItem other) const { return _godot_object.ptr is other._godot_object.ptr; }
	CanvasItem opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	bool opCast(T : bool)() const { return _godot_object.ptr !is null; }
	inout(T) opCast(T)() inout if(isGodotBaseClass!T)
	{
		static assert(staticIndexOf!(CanvasItem, T.BaseClasses) != -1, "Godot class "~T.stringof~" does not inherit CanvasItem");
		if(_godot_object.ptr is null) return T.init;
		String c = String(T._GODOT_internal_name);
		if(is_class(c)) return inout(T)(_godot_object);
		return T.init;
	}
	inout(T) opCast(T)() inout if(extendsGodotBaseClass!T)
	{
		static assert(is(typeof(T.owner) : CanvasItem) || staticIndexOf!(CanvasItem, typeof(T.owner).BaseClasses) != -1, "D class "~T.stringof~" does not extend CanvasItem");
		if(_godot_object.ptr is null) return null;
		if(has_method(String(`_GDNATIVE_D_typeid`)))
		{
			Object o = cast(Object)godot_nativescript_get_userdata(opCast!godot_object);
			return cast(inout(T))o;
		}
		return null;
	}
	static CanvasItem _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = godot_get_class_constructor("CanvasItem");
		if(constructor is null) return typeof(this).init;
		return cast(CanvasItem)(constructor());
	}
	enum int BLEND_MODE_MUL = 3;
	enum int BLEND_MODE_ADD = 1;
	enum int BLEND_MODE_SUB = 2;
	enum int NOTIFICATION_EXIT_CANVAS = 33;
	enum int NOTIFICATION_ENTER_CANVAS = 32;
	enum int BLEND_MODE_MIX = 0;
	enum int BLEND_MODE_PREMULT_ALPHA = 4;
	enum int NOTIFICATION_TRANSFORM_CHANGED = 29;
	enum int NOTIFICATION_DRAW = 30;
	enum int NOTIFICATION_VISIBILITY_CHANGED = 31;
	void _draw()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_draw");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	void _toplevel_raise_self()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_toplevel_raise_self");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	void _update_callback()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_update_callback");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	void edit_set_state(in Variant state)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("CanvasItem", "edit_set_state");
		const(void*)[1] _GODOT_args = [cast(void*)(&state), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	Variant edit_get_state() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("CanvasItem", "edit_get_state");
		Variant _GODOT_ret = Variant.nil;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void edit_set_rect(in Rect2 rect)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("CanvasItem", "edit_set_rect");
		const(void*)[1] _GODOT_args = [cast(void*)(&rect), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void edit_rotate(in float degrees)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("CanvasItem", "edit_rotate");
		const(void*)[1] _GODOT_args = [cast(void*)(&degrees), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	Rect2 get_item_rect() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("CanvasItem", "get_item_rect");
		Rect2 _GODOT_ret = Rect2.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	Rect2 get_item_and_children_rect() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("CanvasItem", "get_item_and_children_rect");
		Rect2 _GODOT_ret = Rect2.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	RID get_canvas_item() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("CanvasItem", "get_canvas_item");
		RID _GODOT_ret = RID.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_visible(in bool visible)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("CanvasItem", "set_visible");
		const(void*)[1] _GODOT_args = [cast(void*)(&visible), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	bool is_visible() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("CanvasItem", "is_visible");
		bool _GODOT_ret = bool.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	bool is_visible_in_tree() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("CanvasItem", "is_visible_in_tree");
		bool _GODOT_ret = bool.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void show()
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("CanvasItem", "show");
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null);
	}
	void hide()
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("CanvasItem", "hide");
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null);
	}
	void update()
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("CanvasItem", "update");
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null);
	}
	void set_as_toplevel(in bool enable)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("CanvasItem", "set_as_toplevel");
		const(void*)[1] _GODOT_args = [cast(void*)(&enable), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	bool is_set_as_toplevel() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("CanvasItem", "is_set_as_toplevel");
		bool _GODOT_ret = bool.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_light_mask(in int light_mask)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("CanvasItem", "set_light_mask");
		const(void*)[1] _GODOT_args = [cast(void*)(&light_mask), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	int get_light_mask() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("CanvasItem", "get_light_mask");
		int _GODOT_ret = int.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_modulate(in Color modulate)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("CanvasItem", "set_modulate");
		const(void*)[1] _GODOT_args = [cast(void*)(&modulate), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	Color get_modulate() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("CanvasItem", "get_modulate");
		Color _GODOT_ret = Color.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_self_modulate(in Color self_modulate)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("CanvasItem", "set_self_modulate");
		const(void*)[1] _GODOT_args = [cast(void*)(&self_modulate), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	Color get_self_modulate() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("CanvasItem", "get_self_modulate");
		Color _GODOT_ret = Color.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_draw_behind_parent(in bool enable)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("CanvasItem", "set_draw_behind_parent");
		const(void*)[1] _GODOT_args = [cast(void*)(&enable), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	bool is_draw_behind_parent_enabled() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("CanvasItem", "is_draw_behind_parent_enabled");
		bool _GODOT_ret = bool.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void _set_on_top(in bool on_top)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(on_top);
		String _GODOT_method_name = String("_set_on_top");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	bool _is_on_top() const
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_is_on_top");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(bool);
	}
	void draw_line(in Vector2 from, in Vector2 to, in Color color, in float width = 1, in bool antialiased = false)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("CanvasItem", "draw_line");
		const(void*)[5] _GODOT_args = [cast(void*)(&from), cast(void*)(&to), cast(void*)(&color), cast(void*)(&width), cast(void*)(&antialiased), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void draw_polyline(in PoolVector2Array points, in Color color, in float width = 1, in bool antialiased = false)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("CanvasItem", "draw_polyline");
		const(void*)[4] _GODOT_args = [cast(void*)(&points), cast(void*)(&color), cast(void*)(&width), cast(void*)(&antialiased), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void draw_polyline_colors(in PoolVector2Array points, in PoolColorArray colors, in float width = 1, in bool antialiased = false)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("CanvasItem", "draw_polyline_colors");
		const(void*)[4] _GODOT_args = [cast(void*)(&points), cast(void*)(&colors), cast(void*)(&width), cast(void*)(&antialiased), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void draw_rect(in Rect2 rect, in Color color, in bool filled = true)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("CanvasItem", "draw_rect");
		const(void*)[3] _GODOT_args = [cast(void*)(&rect), cast(void*)(&color), cast(void*)(&filled), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void draw_circle(in Vector2 pos, in float radius, in Color color)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("CanvasItem", "draw_circle");
		const(void*)[3] _GODOT_args = [cast(void*)(&pos), cast(void*)(&radius), cast(void*)(&color), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void draw_texture(in Texture texture, in Vector2 pos, in Color modulate = Color(1,1,1,1), in Texture normal_map = Texture.init)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("CanvasItem", "draw_texture");
		const(void*)[4] _GODOT_args = [cast(void*)(texture), cast(void*)(&pos), cast(void*)(&modulate), cast(void*)(normal_map), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void draw_texture_rect(in Texture texture, in Rect2 rect, in bool tile, in Color modulate = Color(1,1,1,1), in bool transpose = false, in Texture normal_map = Texture.init)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("CanvasItem", "draw_texture_rect");
		const(void*)[6] _GODOT_args = [cast(void*)(texture), cast(void*)(&rect), cast(void*)(&tile), cast(void*)(&modulate), cast(void*)(&transpose), cast(void*)(normal_map), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void draw_texture_rect_region(in Texture texture, in Rect2 rect, in Rect2 src_rect, in Color modulate = Color(1,1,1,1), in bool transpose = false, in Texture normal_map = Texture.init, in bool clip_uv = true)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("CanvasItem", "draw_texture_rect_region");
		const(void*)[7] _GODOT_args = [cast(void*)(texture), cast(void*)(&rect), cast(void*)(&src_rect), cast(void*)(&modulate), cast(void*)(&transpose), cast(void*)(normal_map), cast(void*)(&clip_uv), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void draw_style_box(in StyleBox style_box, in Rect2 rect)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("CanvasItem", "draw_style_box");
		const(void*)[2] _GODOT_args = [cast(void*)(style_box), cast(void*)(&rect), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void draw_primitive(in PoolVector2Array points, in PoolColorArray colors, in PoolVector2Array uvs, in Texture texture = Texture.init, in float width = 1, in Texture normal_map = Texture.init)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("CanvasItem", "draw_primitive");
		const(void*)[6] _GODOT_args = [cast(void*)(&points), cast(void*)(&colors), cast(void*)(&uvs), cast(void*)(texture), cast(void*)(&width), cast(void*)(normal_map), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void draw_polygon(in PoolVector2Array points, in PoolColorArray colors, in PoolVector2Array uvs = PoolVector2Array.empty, in Texture texture = Texture.init, in Texture normal_map = Texture.init)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("CanvasItem", "draw_polygon");
		const(void*)[5] _GODOT_args = [cast(void*)(&points), cast(void*)(&colors), cast(void*)(&uvs), cast(void*)(texture), cast(void*)(normal_map), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void draw_colored_polygon(in PoolVector2Array points, in Color color, in PoolVector2Array uvs = PoolVector2Array.empty, in Texture texture = Texture.init, in Texture normal_map = Texture.init)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("CanvasItem", "draw_colored_polygon");
		const(void*)[5] _GODOT_args = [cast(void*)(&points), cast(void*)(&color), cast(void*)(&uvs), cast(void*)(texture), cast(void*)(normal_map), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void draw_string(in Font font, in Vector2 pos, in String text, in Color modulate = Color(1,1,1,1), in int clip_w = -1)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("CanvasItem", "draw_string");
		const(void*)[5] _GODOT_args = [cast(void*)(font), cast(void*)(&pos), cast(void*)(&text), cast(void*)(&modulate), cast(void*)(&clip_w), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	float draw_char(in Font font, in Vector2 pos, in String _char, in String next, in Color modulate = Color(1,1,1,1))
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("CanvasItem", "draw_char");
		float _GODOT_ret = float.init;
		const(void*)[5] _GODOT_args = [cast(void*)(font), cast(void*)(&pos), cast(void*)(&_char), cast(void*)(&next), cast(void*)(&modulate), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void draw_set_transform(in Vector2 pos, in float rot, in Vector2 scale)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("CanvasItem", "draw_set_transform");
		const(void*)[3] _GODOT_args = [cast(void*)(&pos), cast(void*)(&rot), cast(void*)(&scale), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	void draw_set_transform_matrix(in Transform2D xform)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("CanvasItem", "draw_set_transform_matrix");
		const(void*)[1] _GODOT_args = [cast(void*)(&xform), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	Transform2D get_transform() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("CanvasItem", "get_transform");
		Transform2D _GODOT_ret = Transform2D.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	Transform2D get_global_transform() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("CanvasItem", "get_global_transform");
		Transform2D _GODOT_ret = Transform2D.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	Transform2D get_global_transform_with_canvas() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("CanvasItem", "get_global_transform_with_canvas");
		Transform2D _GODOT_ret = Transform2D.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	Transform2D get_viewport_transform() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("CanvasItem", "get_viewport_transform");
		Transform2D _GODOT_ret = Transform2D.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	Rect2 get_viewport_rect() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("CanvasItem", "get_viewport_rect");
		Rect2 _GODOT_ret = Rect2.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	Transform2D get_canvas_transform() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("CanvasItem", "get_canvas_transform");
		Transform2D _GODOT_ret = Transform2D.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	Vector2 get_local_mouse_pos() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("CanvasItem", "get_local_mouse_pos");
		Vector2 _GODOT_ret = Vector2.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	Vector2 get_global_mouse_position() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("CanvasItem", "get_global_mouse_position");
		Vector2 _GODOT_ret = Vector2.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	RID get_canvas() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("CanvasItem", "get_canvas");
		RID _GODOT_ret = RID.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	World2D get_world_2d() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("CanvasItem", "get_world_2d");
		World2D _GODOT_ret = World2D.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_material(in Material material)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("CanvasItem", "set_material");
		const(void*)[1] _GODOT_args = [cast(void*)(material), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	Material get_material() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("CanvasItem", "get_material");
		Material _GODOT_ret = Material.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_use_parent_material(in bool enable)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("CanvasItem", "set_use_parent_material");
		const(void*)[1] _GODOT_args = [cast(void*)(&enable), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	bool get_use_parent_material() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("CanvasItem", "get_use_parent_material");
		bool _GODOT_ret = bool.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_notify_local_transform(in bool enable)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("CanvasItem", "set_notify_local_transform");
		const(void*)[1] _GODOT_args = [cast(void*)(&enable), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	bool is_local_transform_notification_enabled() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("CanvasItem", "is_local_transform_notification_enabled");
		bool _GODOT_ret = bool.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	void set_notify_transform(in bool enable)
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("CanvasItem", "set_notify_transform");
		const(void*)[1] _GODOT_args = [cast(void*)(&enable), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr);
	}
	bool is_transform_notification_enabled() const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("CanvasItem", "is_transform_notification_enabled");
		bool _GODOT_ret = bool.init;
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), null, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	Vector2 make_canvas_pos_local(in Vector2 screen_point) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("CanvasItem", "make_canvas_pos_local");
		Vector2 _GODOT_ret = Vector2.init;
		const(void*)[1] _GODOT_args = [cast(void*)(&screen_point), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
	InputEvent make_input_local(in InputEvent event) const
	{
		static godot_method_bind* mb = null;
		if(mb is null) mb = godot_method_bind_get_method("CanvasItem", "make_input_local");
		InputEvent _GODOT_ret = InputEvent.init;
		const(void*)[1] _GODOT_args = [cast(void*)(event), ];
		godot_method_bind_ptrcall(mb, cast(godot_object)(this), _GODOT_args.ptr, cast(void*)&_GODOT_ret);
		return _GODOT_ret;
	}
}
