import std.stdio;
import godot;
import godot.object;
import godot.sprite;


/**
 * Scales numbers passed to it.
 *
 * AKA "multiplication" :-)
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

    /**
     * Scales a given value by the current scale factor.
     *
     * I tried to make versions working on vectors, but I couldn't make them
     * work. Maybe this is a current limitation in Godot-D, maybe I did
     * something wrong.
     */
    @Method
    double scale(double value)
    {
        return value * _scaleFactor;
    }

private:
    double _scaleFactor = 1.0;
}

/**
 * Attach this script to sprite and it will move as the user generates input
 * events.
 *
 * The moving code is quite ugly code, BTW. Real code should at least take
 * `delta` into account.
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
