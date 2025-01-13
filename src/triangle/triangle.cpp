#include "triangle.hpp"

int triangle::print2()
{
   cout<<"I am inside print2"<<endl;
   return 0;
}

int triangle::draw()
{
   cout<<"I am drawing a triangle"<<endl;
   return 0;
}

int triangle::volume()
{
   cout<<"I am printing the volume of a triangle"<<endl;
   return 0;
}

triangle::triangle()
{
  cout<<"constructing a triangle object"<<endl;
}

triangle::~triangle()
{
  cout<<"destroying triangle object"<<endl;
}