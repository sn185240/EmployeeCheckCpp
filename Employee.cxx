// employee.cpp

#include "employee.h"

// Constructor definition
Employee::Employee(int empId, const std::string& empName, double empSalary)
    : id(empId), name(empName), salary(empSalary) {}

// Function to check if employee data is valid
bool Employee::isValidEmployee() const {
    return (id > 0 && !name.empty() && salary > 0.0);
}

// Getter method definitions
int Employee::getId() const {
    return id;
}

std::string Employee::getName() const {
    return name;
}

double Employee::getSalary() const {
    return salary;
}

Employee* Employee::findEmployeeById(int id, const std::vector<Employee>& employees) {
    for (const Employee& emp : employees) {
        if (emp.getId() == id) {
            return new Employee(emp); // Return a copy of the found employee
        }
    }
    return nullptr; // Employee with given ID not found
}