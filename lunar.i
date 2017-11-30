%module lunar
%include "stdint.i"
%include "std_vector.i"
%include "std_string.i"

%{
#include "src/lunar.h"
  %}

namespace std{
  %template(VectorOfStructVector) vector<Day>;
}

%include "src/lunar.h"

