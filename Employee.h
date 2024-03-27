// employee.h

#ifndef EMPLOYEE_H  // Header guard to prevent multiple inclusions
#define EMPLOYEE_H

#include <string>
#include <vector>


class Employee {
private:
    int id;
    std::string name;
    double salary;

public:
    // Constructor
    Employee(int empId, const std::string& empName, double empSalary);

    // Function to check if employee data is valid
    bool isValidEmployee() const;

    static Employee* findEmployeeById(int id, const std::vector<Employee>& employees);

    // Getter methods
    int getId() const;
    std::string getName() const;
    double getSalary() const;
    
};

#endif  // EMPLOYEE_H