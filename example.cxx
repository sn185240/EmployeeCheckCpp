// %include "std_string.i"
#include <string>
#include <vector>

// bool employeeCheck(std::string employeeName, std::vector<std::string> list) {
bool employeeCheck(std::string employeeName, std::string list[5]) {
    // int size = sizeof(list) / sizeof(list[0]);
    for (int i = 0; i < 5; i++) {
        if (employeeName == list[i]) {
            return true;
        }
    }
    return false;
}

bool stringExists(std::string mainStr, std::string subStr) {
    return mainStr.find(subStr) != std::string::npos;
}

bool employeeCheck(std::string employeeName, std::vector<std::string> list) {
    for (const auto& name : list) {
        if (stringExists(name, employeeName)) {
            return true;
        }
    }
    return false;
}

