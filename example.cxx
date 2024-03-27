#include <string>
#include <vector>

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

