package models;

/**
 * This is a helper class that makes it easier to work with the user's input data when they attempt to login and register.
 * The difference between this class and the 'userID' column in the database table is that this class represents the fields taken from the form within 'login.jsp' and 'signUp.jsp'
 */
public class UserID {

    private String paymentInfo;
    private String password;
    private String firstName;
    private String lastName;
    private String email;
    private String userName;

    public String getUserName() {
        return userName;
    }

    public UserID(String userName, String password) {
        this.userName = userName;
        this.password = password;
    }

    public UserID(String firstName, String lastName, String userName, String password, String email, String paymentInfo) {
        this.paymentInfo = paymentInfo;
        this.password = password;
        this.firstName = firstName;
        this.lastName = lastName;
        this.email = email;
        this.userName = userName;
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

    public String getPaymentInfo() {
        return paymentInfo;
    }

    public void setPaymentInfo(String paymentInfo) {
        this.paymentInfo = paymentInfo;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    @Override
    public String toString() {
        return "UserID{" +
                "paymentInfo='" + paymentInfo + '\'' +
                ", password='" + password + '\'' +
                ", firstName='" + firstName + '\'' +
                ", lastName='" + lastName + '\'' +
                ", email='" + email + '\'' +
                ", userName='" + userName + '\'' +
                '}';
    }
}
