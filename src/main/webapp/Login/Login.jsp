import java.util.HashMap;
import java.util.Map;
import java.util.Scanner;

public class LoginSystem {
    private Map<String, String> users;

    public LoginSystem() {
        users = new HashMap<>();
    }

    public void registerUser(String username, String password) {
        if (!users.containsKey(username)) {
            users.put(username, password);
            System.out.println("User successfully registered!");
        } else {
            System.out.println("The username already exists. Try another one.");
        }
    }

    public boolean loginUser(String username, String password) {
        if (users.containsKey(username)) {
            String storedPassword = users.get(username);
            if (storedPassword.equals(password)) {
                System.out.println("Successful authentication. Welcome, " + username + "!");
                return true;
            }
        }
        System.out.println("Login failed. Wrong username or password.");
        return false;
    }

    public static void main(String[] args) {
        LoginSystem loginSystem = new LoginSystem();

        // Example of user registration
        loginSystem.registerUser("john_doe", "password123");

        // Login example
        Scanner scanner = new Scanner(System.in);
        System.out.print("User name: ");
        String username = scanner.nextLine();
        System.out.print("Password: ");
        String password = scanner.nextLine();

        loginSystem.loginUser(username, password);

        scanner.close();
    }
}