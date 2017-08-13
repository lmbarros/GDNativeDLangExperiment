import std.stdio;
import godot;
import godot.object;
import godot.sprite;


/**
 * Scales things passed to it.
 *
 * Quite useless, but works even with vectors!
 */
class Scaler: GodotScript!GodotObject
{
public:
    /// The scale factor to be used.
    @Property
    double scaleFactor() const
    {
        return _scaleFactor;
    }

    /// Ditto
    @Property
    void scaleFactor(double s)
    {
        _scaleFactor = s;
    }

    /// Scales a given value by the current scale factor.
    @Method
    double scale(double value)
    {
        return value * _scaleFactor;
    }

    /// Ditto
    @Method
    godot.Vector2 scale(godot.Vector2 vec)
    {
        return vec * _scaleFactor;
    }

    /// Ditto
    @Method
    godot.Vector3 scale(godot.Vector3 vec)
    {
        return vec * _scaleFactor;
    }

private:
    double _scaleFactor = 1.0;
}

/**
 * Scales things passed to it.
 *
 * Quite useless, but works even with vectors!
 */
class SpriteMover: GodotScript!Sprite
{
public:
    /// Move the sprite as the player requests.
    @Method
    void _process(float delta)
    {
        import godot.input;
        import godot.core.vector2;

        // Could use `alias owner this;` to emulate inheritance and avoid these
        // explicit references to `owner`, but nah.
        if (Input.is_action_pressed(String("ui_left")))
            owner.set_position(owner.get_position() - Vector2(10.0, 0.0));
        else if (Input.is_action_pressed(String("ui_right")))
            owner.set_position(owner.get_position() + Vector2(10.0, 0.0));
    }
}


mixin GodotNativeInit!
(
    Scaler,
    SpriteMover,
    (){ writeln("Initializing twoclasses..."); }
);

mixin GodotNativeTerminate!
(
    (){ writeln("Terminating twoclasses..."); }
);
