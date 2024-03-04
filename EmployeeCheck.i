%module EmployeeCheck

%{
#include <string>
#include <vector>
extern bool employeeCheck(std::string employeeName, std::string list[5]);
extern bool stringExists(std::string mainStr, std::string subStr);
extern bool employeeCheck(std::string employeeName, std::vector<std::string> list);
%}

extern bool employeeCheck(std::string employeeName, std::string list[5]);
extern bool stringExists(std::string mainStr, std::string subStr);
extern bool employeeCheck(std::string employeeName, std::vector<std::string> list);