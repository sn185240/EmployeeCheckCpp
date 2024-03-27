import java.util.Arrays;
import java.util.Vector;
import com.example.swig.*;
import com.employee.swig.*;

public class runme {
    static {
      System.loadLibrary("example");
      System.loadLibrary("employee");
      System.loadLibrary("PosWrappercs");
    }

    // Declare the native method
    // public static native boolean employeeCheck(String employeeName, String[] list);
    // public static native boolean stringExists(String mainStr, String subStr);

    public static void main(String[] args) {
        // Call the native method
        boolean result = example.employeeCheck("John Doe", new StringVector(new String[]{"A", "B", "C", "D"}));
        System.out.println("Result: " + result);

        // Call the stringExists method
        boolean exists = example.stringExists("Hello World", "World");
        System.out.println("String exists: " + exists);

        Employee employee=new Employee(123, "John Doe", 1000);
        System.out.println("Employee is valid: " + employee.isValidEmployee());

        Employee employee1 = new Employee(1, "Alice", 2000);
        Employee employee2 = new Employee(2, "Bob", 2500);

        EmployeeVector employees = new EmployeeVector();
        employees.add(employee1);
        employees.add(employee2);

        Employee foundEmp = Employee.findEmployeeById(1, employees);
        if(foundEmp!=null){
          System.out.println("Found employee name is " + foundEmp.getName());
        }
        else{
          System.out.println("Employee not found");
        }
        
    }
}

