#include <iostream>
#ifndef _SHAPE_HPP
#include "shape.hpp"
#endif

int shape::volume()
{
  cout<<"Printing the volume of shape"<<endl;
  return 0;
}

int shape::print()
{
  cout<<"I am in shape class"<<endl;
  return 0;
}

int shape::draw()
{
  cout<<"I am drawing shape"<<endl;
  return 0;
}

shape::shape()
{
  cout<<"constructing a shape object"<<endl;
}

shape::~shape()
{
  cout<<"destroying a shape object"<<endl;
}

main()
{
}