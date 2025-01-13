#include <iostream>
#ifndef _SHAPE_HPP
#include "shape.hpp"
#endif

#ifndef _CIRCLE_HPP
#include "circle.hpp"
#endif

#ifndef _TRIANGLE_HPP
#include "triangle.hpp"
#endif

int main()
{
  shape s;
  s.draw();
  s.print();
  s.volume();

  circle c;
  c.draw();
  c.print();
  c.volume();
  c.print2();

  triangle t;
  t.draw();
  t.print();
  t.volume();
  t.print2();

  return 0;

}