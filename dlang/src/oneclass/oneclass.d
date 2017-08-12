import std.stdio;
import godot;
import godot.object;


/**
 * Computes the average of numbers passed to it.
 *
 * Useful as an example and nothing else.
 */
class Averager: GodotScript!GodotObject
{
public:
    this() {
        _count = 0;
        _sum = 0.0;
    }

    /// Adds a new number to be averaged.
    @Method
    void addNumber(double num)
    {
        ++_count;
        _sum += num;
    }

    /**
      * Returns
     */
    @Method
    double average()
    {
        if (_count == 0)
            return 0.0;
        else
            return _sum / _count;
    }

private:
    double _sum;
    int _count;
}


mixin GodotNativeInit!
(
    Averager,
    (){ writeln("Initializing oneclass..."); }
);

mixin GodotNativeTerminate!
(
    (){ writeln("Terminating oneclass..."); }
);
