package models;

/**
 * This is a helper class that makes it easier to work with the user's input data when they attempt to login and register.
 * The difference between this class and the 'memberID' column in the database table is that this class represents the fields taken from the form within 'login.jsp' and 'signup.jsp'
 */
public class MemberID {
    private String userName;
    private String password;

    public String getUserName() {
        return userName;
    }

    public MemberID(String userName, String password) {
        this.userName = userName;
        this.password = password;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String passWord) {
        this.password = passWord;
    }
}
