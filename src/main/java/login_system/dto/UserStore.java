package login_system.dto;

import java.util.*;

public class UserStore {
    private static final Map<String, Student> userStore = new HashMap<>(); // Keyed by username
    private static final Set<String> rollNoStore = new HashSet<>(); // To ensure unique roll numbers

    // Method to register a new student
    public static boolean registerStudent(Student student) {
        // Check if username or roll number already exists
        if (!userStore.containsKey(student.getUsername()) && !rollNoStore.contains(student.getRollNo())) {
            userStore.put(student.getUsername(), student); // Store student by username
            rollNoStore.add(student.getRollNo()); // Add roll number to the set
            return true;
        }
        return false; // Username or roll number already exists
    }

    // Method to validate user login credentials
    public static Student validateUser(String username, String password) {
        Student student = userStore.get(username);
        if (student != null && student.getPassword().equals(password)) {
            return student;
        }
        return null; // Invalid username or password
    }

    // Method to get student details by username
    public static Student getStudent(String username) {
        return userStore.get(username);
    }
}

