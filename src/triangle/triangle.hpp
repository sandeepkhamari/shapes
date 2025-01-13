#include <iostream>

#pragma once
#ifndef _SHAPE_HPP
#include "shape.hpp"
#endif

using namespace std;

class triangle: public shape
{
   public:
       int print2();
       int volume();
       int draw();
       triangle();
       ~triangle();
};