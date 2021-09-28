import models.MemberID;
import org.junit.Test;
import static org.junit.Assert.assertEquals;
import servlets.RegisterServlet;

/**
 * Test to make sure user registration is successful with valid password, and unsuccessful with invalid password
 */
public class verifyRegistrationInfoTest {

    MemberID test1 = new MemberID("Adam", "Chaps", "AdamChapss", "Password1!","test@test.com", "***-123-456" );
    MemberID test2 = new MemberID("AdamFails", "password");

    @Test
    public void verifyValidPassword() {
        RegisterServlet registerServlet = new RegisterServlet();

        boolean actual = registerServlet.verifyRegistrationInfo(test1);
        assertEquals(true, actual);
    }

    @Test
    public void verifyInvalidPassword() {
        RegisterServlet registerServlet = new RegisterServlet();
        boolean actual = registerServlet.verifyRegistrationInfo(test2);
        assertEquals(false, actual);
    }

}
