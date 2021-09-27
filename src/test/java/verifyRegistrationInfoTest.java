import models.MemberID;
import org.junit.Test;
import static org.junit.Assert.assertEquals;
import servlets.RegisterServlet;

/**
 * Test to make sure user registration is successful with valid password, and unsuccessful with invalid password
 */
public class verifyRegistrationInfoTest {

    MemberID test1 = new MemberID("AdamChaps", "Password1!");
    MemberID test2 = new MemberID("AdamFails", "password");

    @Test
    public void verifyValidPassword() {

        boolean actual = RegisterServlet.verifyRegistrationInfo(test1);
        assertEquals(true, actual);
    }

    @Test
    public void verifyInvalidPassword() {

        boolean actual = RegisterServlet.verifyRegistrationInfo(test2);
        assertEquals(false, actual);
    }

}
