package dao;

import models.User;
import models.UserID;

import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 * The UserDao class is used to write queries to the 'Software' database. This class helps us separate our 'database logic' from our 'servlet logic'. Without this class, we would have to
 * put all of our queries and connections to the database inside the servlet class. By using the 'dao' (data access object) design pattern, we take advantage of loose coupling.
 *
 * @see <a href="https://www.baeldung.com/java-dao-pattern">https://www.baeldung.com/java-dao-pattern</a>
 */
public class UserDao {

    /**
     * Validates the user's userName and Password by checking the database for a record that has the same username and password
     *
     * @param userID - userName and password of the user attempting to login
     * @return User - the user trying to login
     */
    public static User getUser(UserID userID) {
        User user = new User();
        try {
            Connector.connect();
            Statement statement = Connector.connection.createStatement();

            String query = String.format("SELECT * FROM Software.User " +
                    "WHERE Software.User.userName = '%s'" +
                    "AND Software.User.password = '%s';", userID.getUserName(), userID.getPassword());

            ResultSet rs = statement.executeQuery(query);

            if (rs.next()) {
                user.setFirstName(rs.getString("firstName"));
                user.setLastName(rs.getString("lastName"));
                user.setUserID(rs.getInt("userID"));
                user.setUserType(rs.getString("userType"));
                user.setFullName();

                user.setFullName();
            }
        } catch (Exception e) {

        }
        return user;
    }

    /**
     * Creates a new user record and adds it to the database if the user enters the correct registration information
     *
     * @param userID - userName and password of the user attempting to register
     */
    public void createUser(UserID userID) {
        try {
            Connector.connect();
            Statement statement = Connector.connection.createStatement();
            System.out.println("Inside userDAO");
            System.out.println(userID.toString());
            String query = String.format("INSERT INTO Software.User (paymentInfo, password, firstName, lastName, email, userName, userType) " +
                            "VALUES ('%s', " +
                            "'%s', " +
                            "'%s', " +
                            "'%s', " +
                            "'%s', " +
                            "'%s', " +
                            "'%s')", userID.getPaymentInfo(),
                    userID.getPassword(),
                    userID.getFirstName(),
                    userID.getLastName(),
                    userID.getEmail(),
                    userID.getUserName(),
                    "MEMBER");

            statement.executeUpdate(query);

        } catch (Exception e) {

        }
    }

    /**
     * Searches the database for a specific user, given a username
     *
     * @param username - userName of the member attempting to register
     * @return User - the user being searched for
     */
    public User findUserByUsername(String username) {
        User user = new User();
        try {
            Connector.connect();
            Statement statement = Connector.connection.createStatement();

            String query = String.format("SELECT * FROM Software.User " +
                    "WHERE Software.User.userName = '%s'", username);

            ResultSet rs = statement.executeQuery(query);

            if (rs.next()) {
                user.setFirstName(rs.getString("firstName"));
                user.setLastName(rs.getString("lastName"));
                user.setUserName(rs.getString("userName"));
            }
        } catch (Exception e) {

        }
        return user;
    }

    /**
     * The method gets all the users currently in the database.
     *
     * @return users - the list of users
     */
    public List<User> getAllUsers() {
        List<User> users = new ArrayList();

        try {
            Connector.connect();
            Statement statement = Connector.connection.createStatement();
            String query = String.format("SELECT * FROM Software.User");

            ResultSet rs = statement.executeQuery(query);

            while (rs.next()) {
                User m = new User();
                m.setUserID(rs.getInt("userID"));
                m.setFirstName(rs.getString("firstName"));
                m.setLastName(rs.getString("lastName"));
                m.setPaymentInfo(rs.getString("paymentInfo"));
                m.setUserName(rs.getString("userName"));
                m.setPassword(rs.getString("password"));
                m.setEmail(rs.getString("email"));
                users.add(m);
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return users;
    }

    /**
     * The method updates a user's details.
     *
     * @param userid - the id of the user to be updated
     */
    public void updateUser(UserID userID, int userid) {
        try {
            Connector.connect();
            Statement statement = Connector.connection.createStatement();

            String query = String.format("UPDATE Software.User " +
                            "SET paymentInfo = '%s'" +
                            ", password = '%s'" +
                            ", firstName = '%s'" +
                            ", lastName = '%s'" +
                            ", email = '%s'" +
                            ", userName = '%s' " +
                            "WHERE userID = '%s'"
                    , userID.getPaymentInfo(),
                    userID.getPassword(),
                    userID.getFirstName(),
                    userID.getLastName(),
                    userID.getEmail(),
                    userID.getUserName(),
                    userid);

            statement.executeUpdate(query);

        } catch (Exception e) {

        }
    }

}
