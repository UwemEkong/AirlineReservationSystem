import models.UserID;
import org.junit.Test;
import servlets.RegisterServlet;
import testutils.UserUtils;

import static org.junit.Assert.assertEquals;


public class RegisterServletTest {

    /**
     * Test that checkInvalidPasword returns true when the user's password is of incorrect length
     */
    @Test
    public void testPasswordLengthFailure() {
        UserID userID = UserUtils.INVALID_USER_ID;
        RegisterServlet servlet = new RegisterServlet();

        boolean actual = servlet.checkInvalidPassword(userID);
        boolean expected = true;

        assertEquals(actual, expected);
    }

    /**
     * Test that checkInvalidPasword() returns false when the user's password is of correct length
     */
    @Test
    public void testPasswordLengthSuccess() {
        UserID userID = UserUtils.VALID_USER_ID;
        RegisterServlet servlet = new RegisterServlet();

        boolean actual = servlet.checkInvalidPassword(userID);
        boolean expected = false;

        assertEquals(actual, expected);
    }

    /**
     * Test that verifyRegistrationInfo() returns false if the username does not exist in the database
     */
    @Test
    public void testUsernameNotExist() {
        UserID userID = UserUtils.NEW_USER_ID;
        RegisterServlet servlet = new RegisterServlet();

        boolean actual = servlet.userExists(userID.getUserName());
        boolean expected = false;

        assertEquals(actual, expected);
    }

    /**
     * Test that userExists() returns true if the username already exists in the database
     */
    @Test
    public void testUsernameExists() {
        UserID userID = UserUtils.VALID_USER_ID;
        RegisterServlet servlet = new RegisterServlet();

        boolean actual = servlet.userExists(userID.getUserName());

        assertEquals(actual, true);
    }

    /**
     * Test that checkMissingData() returns true if the userID is missing an input value
     */
    @Test
    public void testMissingData() {
        UserID userID = UserUtils.INVALID_USER_ID_2;
        RegisterServlet servlet = new RegisterServlet();

        boolean actual = servlet.checkMissingData(userID);
        boolean expected = true;

        assertEquals(actual, expected);
    }

    /**
     * Test that checkMissingData() returns false if the userID is not missing any input values
     */
    @Test
    public void testNoMissingData() {
        UserID userID = UserUtils.VALID_USER_ID_2;
        RegisterServlet servlet = new RegisterServlet();

        boolean actual = servlet.checkMissingData(userID);
        boolean expected = false;

        assertEquals(actual, expected);
    }
}
