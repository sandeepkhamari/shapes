#include <iostream>

#pragma once
#ifndef _SHAPE_HPP
#include "shape.hpp"
#endif

using namespace std;

class circle: public shape
{
   public:
       int print2();
       int print();
       int volume();
       circle();
       ~circle();
};