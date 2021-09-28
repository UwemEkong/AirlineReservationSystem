import models.MemberID;
import org.junit.Test;
import servlets.RegisterServlet;
import testutils.MemberUtils;

import static org.junit.Assert.assertEquals;


public class RegisterServletTest {

    /**
     * Test that checkInvalidPasword returns true when the user's password is of incorrect length
     */
    @Test
    public void testPasswordLengthFailure() {
        MemberID memberID = MemberUtils.invalidMemberID;
        RegisterServlet servlet = new RegisterServlet();

        boolean actual = servlet.checkInvalidPassword(memberID);
        boolean expected = true;

        assertEquals(actual, expected);
    }

    /**
     * Test that checkInvalidPasword() returns false when the user's password is of correct length
     */
    @Test
    public void testPasswordLengthSuccess() {
        MemberID memberID = MemberUtils.validMemberID;
        RegisterServlet servlet = new RegisterServlet();

        boolean actual = servlet.checkInvalidPassword(memberID);
        boolean expected = false;

        assertEquals(actual, expected);
    }

    /**
     * Test that verifyRegistrationInfo() returns false if the username does not exist in the database
     */
    @Test
    public void testUsernameNotExist() {
        MemberID memberID = MemberUtils.newMemberID;
        RegisterServlet servlet = new RegisterServlet();

        boolean actual = servlet.userExists(memberID.getUserName());
        boolean expected = false;

        assertEquals(actual, expected);
    }

    /**
     * Test that userExists() returns true if the username already exists in the database
     */
    @Test
    public void testUsernameExists() {
        MemberID memberID = MemberUtils.validMemberID;
        RegisterServlet servlet = new RegisterServlet();

        boolean actual = servlet.userExists(memberID.getUserName());
        boolean expected = true;

        assertEquals(actual, expected);
    }

    /**
     * Test that checkMissingData() returns true if the memberID is missing an input value
     */
    @Test
    public void testMissingData() {
        MemberID memberID = MemberUtils.invalidMemberID2;
        RegisterServlet servlet = new RegisterServlet();

        boolean actual = servlet.checkMissingData(memberID);
        boolean expected = true;

        assertEquals(actual, expected);
    }

    /**
     * Test that checkMissingData() returns false if the memberID is not missing any input values
     */
    @Test
    public void testNoMissingData() {
        MemberID memberID = MemberUtils.validMemberID2;
        RegisterServlet servlet = new RegisterServlet();

        boolean actual = servlet.checkMissingData(memberID);
        boolean expected = false;

        assertEquals(actual, expected);
    }
}
