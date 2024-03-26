%module example
%{
#include <string>
#include <vector>
extern bool employeeCheck(std::string employeeName, std::string list[5]);
extern bool stringExists(std::string mainStr, std::string subStr);
extern bool employeeCheck(std::string employeeName, std::vector<std::string> list);
%}
%include "std_string.i"
%include "std_vector.i"
// %include "std_array.i"
namespace std {
  %template(StringVector) vector<string>;
}
// extern bool employeeCheck(std::string employeeName, std::string list[5]);
extern bool stringExists(std::string mainStr, std::string subStr);
extern bool employeeCheck(std::string employeeName, std::vector<std::string> list);