/* employee.i */

%module EmployeeExample

%{
    //These dont seem to be necessary
    #include <string>
    #include "employee.h"
%}

//necessary
%include "std_string.i"
%include "std_vector.i"
%include "employee.h"
namespace std {
  %template(EmployeeVector) vector<Employee>;
}