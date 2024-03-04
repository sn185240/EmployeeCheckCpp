public class runme {
    static {
        System.loadLibrary("employeecheck");
    }

    // Declare the native method
    // public static native boolean employeeCheck(String employeeName, String[] list);
    // public static native boolean stringExists(String mainStr, String subStr);

    public static void main(String[] args) {
        // Call the native method
        // boolean result = employeeCheck("John Doe", new String[]{"A", "B", "C", "D"});
        // System.out.println("Result: " + result);

        // Call the stringExists method
        boolean exists = employeecheck.stringExists("Hello World", "World");
        System.out.println("String exists: " + exists);
    }
}