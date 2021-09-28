import models.Member;
import org.junit.Test;
import static org.junit.Assert.assertEquals;
import servlets.LoginServlet;

import static org.junit.Assert.assertEquals;

/**
 * Test class to make sure correct boolean returns when login info is entered
 */
public class memberIsValidTest {


    /**
     * Test to make sure returns true if true is returned with valid member and firstName
     */
    @Test()
    public void memberIsValidTest() {
        Member test = new Member();
        test.setFirstName("Adam");

        LoginServlet testServ = new LoginServlet();
        boolean actual = testServ.memberIsValid(test);

        assertEquals(true, actual);
    }

    /**
     * Test to make sure false if firstName is null
     */
    @Test()
    public void memberIsInvalidTest() {
        Member test = new Member();
        test.setFirstName(null);

        LoginServlet testServ = new LoginServlet();
        boolean actual = testServ.memberIsValid(test);

        assertEquals(false, actual);
    }
}
