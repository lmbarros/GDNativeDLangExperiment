/*************************************************************************/
/*  godot.core.vector3                                                   */
/*************************************************************************/
/*                       This file is part of:                           */
/*                           GODOT ENGINE                                */
/*                    http://www.godotengine.org                         */
/*************************************************************************/
/* Copyright (c) 2007-2017 Juan Linietsky, Ariel Manzur.                 */
/* Copyright (c) 2014-2017 Godot Engine contributors (cf. AUTHORS.md)    */
/*                                                                       */
/* Permission is hereby granted, free of charge, to any person obtaining */
/* a copy of this software and associated documentation files (the       */
/* "Software"), to deal in the Software without restriction, including   */
/* without limitation the rights to use, copy, modify, merge, publish,   */
/* distribute, sublicense, and/or sell copies of the Software, and to    */
/* permit persons to whom the Software is furnished to do so, subject to */
/* the following conditions:                                             */
/*                                                                       */
/* The above copyright notice and this permission notice shall be        */
/* included in all copies or substantial portions of the Software.       */
/*                                                                       */
/* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,       */
/* EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF    */
/* MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.*/
/* IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY  */
/* CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,  */
/* TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE     */
/* SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.                */
/*************************************************************************/
module godot.core.vector3;

import godot.core.defs;
import godot.core.basis;
import godot.core.string;

import std.math;


struct Vector3
{
	enum Axis
	{
		x,
		y,
		z
	}

	union
	{
		struct
		{
			real_t x = 0;
			real_t y = 0;
			real_t z = 0;
		}

		real_t[3] coord;
	}
	alias coord this;

	this(real_t x, real_t y, real_t z)
	{
		this.x = x;
		this.y = y;
		this.z = z;
	}
	
	this(real_t[3] coord)
	{
		this.coord = coord;
	}
	
	this(in Vector3 b)
	{
		this.x = b.x;
		this.y = b.y;
		this.z = b.z;
	}
	
	const(real_t) opIndex(int p_axis) const
	{
		return coord[p_axis];
	}
	
	ref real_t opIndex(int p_axis)
	{
		return coord[p_axis];
	}
	
	Vector3 opBinary(string op)(in Vector3 other) const
		if(op=="+" || op=="-" || op=="*" || op=="/")
	{
		Vector3 ret;
		ret.x = mixin("x "~op~"other.x");
		ret.y = mixin("y "~op~"other.y");
		ret.z = mixin("z "~op~"other.z");
		return ret;
	}
	void opOpAssign(string op)(in Vector3 other)
		if(op=="+" || op=="-" || op=="*" || op=="/")
	{
		x = mixin("x "~op~"other.x");
		y = mixin("y "~op~"other.y");
		z = mixin("z "~op~"other.z");
	}
	
	Vector3 opUnary(string op : "-")()
	{
		return Vector3(-x, -y, -z);
	}
	
	Vector3 opBinary(string op)(in real_t scalar) const
		if(op=="*" || op=="/")
	{
		Vector3 ret;
		ret.x = mixin("x "~op~" scalar");
		ret.y = mixin("y "~op~" scalar");
		ret.z = mixin("z "~op~" scalar");
		return ret;
	}
	Vector3 opBinaryRight(string op)(in real_t scalar) const
		if(op=="*")
	{
		Vector3 ret;
		ret.x = mixin("x "~op~" scalar");
		ret.y = mixin("y "~op~" scalar");
		ret.z = mixin("z "~op~" scalar");
		return ret;
	}
	void opOpAssign(string op)(in real_t scalar)
		if(op=="*" || op=="/")
	{
		x = mixin("x "~op~" scalar");
		y = mixin("y "~op~" scalar");
		z = mixin("z "~op~" scalar");
	}
	
	int opCmp(in Vector3 other) const
	{
		import std.algorithm.comparison;
		return cmp(this.coord[], other.coord[]);
	}
	
	Vector3 abs() const
	{
		return Vector3(fabs(x), fabs(y), fabs(z));
	}
	
	Vector3 ceil() const
	{
		return Vector3(.ceil(x), .ceil(y), .ceil(z));
	}
	
	Vector3 cross(in Vector3 b) const
	{
		return Vector3(
			(y * b.z) - (z * b.y),
			(z * b.x) - (x * b.z),
			(x * b.y) - (y * b.x)
		);
	}
	
	Vector3 linear_interpolate(in Vector3 p_b, real_t p_t) const
	{
		return Vector3(
			x+(p_t * (p_b.x-x)),
			y+(p_t * (p_b.y-y)),
			z+(p_t * (p_b.z-z))
		);
	}
	
	Vector3 cubic_interpolate(in Vector3 b, in Vector3 pre_a, in Vector3 post_b, in real_t t) const
	{
		Vector3 p0=pre_a;
		Vector3 p1=this;
		Vector3 p2=b;
		Vector3 p3=post_b;
	
		real_t t2 = t * t;
		real_t t3 = t2 * t;
	
		Vector3 ret;
		ret = ( ( p1 * 2.0) +
		( -p0 + p2 ) * t +
		( p0 * 2.0 - p1 * 5.0 + p2 * 4 - p3 ) * t2 +
		( -p0 + p1 * 3.0 - p2 * 3.0 + p3 ) * t3 ) * 0.5;
		return ret;
	}
	
	real_t length() const
	{
		real_t x2=x*x;
		real_t y2=y*y;
		real_t z2=z*z;
	
		return sqrt(x2+y2+z2);
	}
	
	real_t length_squared() const
	{
		real_t x2=x*x;
		real_t y2=y*y;
		real_t z2=z*z;
	
		return x2+y2+z2;
	}
	
	real_t distance_squared_to(in Vector3 b) const
	{
		return (b-this).length();
	}
	
	real_t distance_to(in Vector3 b) const
	{
		return (b-this).length_squared();
	}
	
	real_t dot(in Vector3 b) const
	{
		return x*b.x + y*b.y + z*b.z;
	}
	
	Vector3 floor() const
	{
		return Vector3(.floor(x), .floor(y), .floor(z));
	}
	
	Vector3 inverse() const
	{
		return Vector3( 1.0/x, 1.0/y, 1.0/z );
	}
	
	int max_axis() const
	{
		return (x < y) ? (y < z ? 2 : 1) : (x < z ? 2 : 0);
	}
	
	int min_axis() const
	{
		return (x < y) ? (x < z ? 0 : 2) : (y < z ? 1 : 2);
	}
	
	void normalize()
	{
		real_t l=length();
		if (l==0) {
			x=y=z=0;
		} else {
			x/=l;
			y/=l;
			z/=l;
		}
	}
	
	Vector3 normalized() const
	{
		Vector3 v = this;
		v.normalize();
		return v;
	}
	
	Vector3 reflect(in Vector3 by) const
	{
		return by - this * this.dot(by) * 2.0;
	}
	
	Vector3 rotated(in Vector3 axis, in real_t phi) const
	{
		Vector3 v = this;
		v.rotate(axis, phi);
		return v;
	}
	
	void rotate(in Vector3 axis, in real_t phi)
	{
		this=Basis(axis,phi).xform(this);
	}
	
	Vector3 slide(in Vector3 by) const
	{
		return by - this * this.dot(by);
	}
	
	void snap(real_t step)
	{
		foreach(ref v; coord) v = (step != 0)?(.floor(v/step +0.5)*step):v;
	}
	
	Vector3 snapped(in real_t step) const
	{
		Vector3 v = this;
		v.snap(step);
		return v;
	}
	
	/+String toString()
	{
		
	}+/
}

