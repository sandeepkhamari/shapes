#ifndef _CIRCLE_HPP
#include "circle.hpp"
#endif

int circle::print()
{
  cout<<"I am inside circle class"<<endl;
  return 0;
}

int circle::volume()
{
  cout<<"Printing the volume of a circle"<<endl;
  return 0;
}

int circle::print2()
{
  cout<<"I am inside circle print2"<<endl;
  return 0;
}

circle::circle()
{
  cout<<"constructing a circle object"<<endl;
}

circle::~circle()
{
  cout<<"destructing a circle object"<<endl;
}