%module eph
%{
#include "src/eph.h"
%}

struct Vector3{
  long double x, y, z;
};

%extend Vector3
{
  Vector3(long double x, long double y, long double z)
    {
      Vector3 *v = (Vector3 *)malloc(sizeof(Vector3));
      v->x = x;
      v->y = y;
      v->z = z;
      return v;
    }

  Vector3(const Vector3& v){
    Vector3 *nv = (Vector3 *)malloc(sizeof(Vector3));
    nv->x = v.x;
    nv->y = v.y;
    nv->z = v.z;
    return nv;
  }

  %rename(__getitem__) operator[];
   long double& __getitem__(const uint64_t index)
   {
     switch(index)
       {
       case 0:return $self->x;
       case 1:return $self->y;
       case 2:return $self->z;
       }
   }
 }

struct Vector2{
  long double x, y;
};
%extend Vector2
{
  Vector2(long double x, long double y)
    {
      Vector2 *v = (Vector2 *)malloc(sizeof(Vector2));
      v->x = x;
      v->y = y;
      return v;
    }

  Vector2(const Vector2& v)
    {
      Vector2 *nv = (Vector2 *)malloc(sizeof(Vector2));
      nv->x = v.x;
      nv->y = v.y;
      return nv;
    }

  %rename(__getitem__) operator [];
  long double& __getitem__(const uint64_t index)
  {
    switch(index)
      {
      case 0:return $self->x;
      case 1:return $self->y;
      }
  }
}
%include "src/eph.h"
