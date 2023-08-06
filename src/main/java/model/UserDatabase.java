package model;

import java.util.HashMap;
import java.util.Map;

public class UserDatabase {
    private static final Map<String, User> users = new HashMap<>();

    static {
        // Захардкодимо декілька користувачів для прикладу
        users.put("admin", new User("admin", "admin"));
        users.put("user1", new User("user1", "pass1"));
        users.put("user2", new User("user2", "pass2"));
    }

    public static User getUserByUsername(String username) {
        return users.get(username);
    }
}
