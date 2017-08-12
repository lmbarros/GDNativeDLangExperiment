import std.stdio;
import godot;
import godot.object;


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

mixin GodotNativeInit!
(
    Scaler,
    (){ writeln("Initializing twoclasses..."); }
);

mixin GodotNativeTerminate!
(
    (){ writeln("Terminating twoclasses..."); }
);
