package testutils;

import models.UserID;

/**
 * Utility class used for storing dummy data for JUnit testing. Without this class, we would have to keep recreating testing data whenever we want to write a new test case.
 */
public class UserUtils {

    public static final UserID INVALID_USER_ID = new UserID("Uwemtest123", "Uwem456");

    public static final UserID VALID_USER_ID = new UserID("UwemFly", "uwemhatesFlying1!");

    public static final UserID NEW_USER_ID = new UserID("newMember", "newMember1!");

    public static final UserID INVALID_USER_ID_2 = new UserID("Uwem", "Ekong",null, "mypassword!", "test@test.com",
            "test***-***");

    public static final UserID VALID_USER_ID_2 = new UserID("Uwem", "Ekong","test1234", "mypassword!", "test@test.com",
            "test***-***");
}
