import java.util.Arrays;
import java.util.Vector;
import com.example.swig.*;

public class runme {
    static {
      System.loadLibrary("example");
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
    }
}