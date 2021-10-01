import models.UserID;
import org.junit.Test;
import static org.junit.Assert.assertEquals;
import servlets.RegisterServlet;

/**
 * Test to make sure user registration is successful with valid password, and unsuccessful with invalid password
 */
public class verifyRegistrationInfoTest {

    UserID test1 = new UserID("Adam", "Chaps", "AdamChapss", "Password1!","test@test.com", "***-123-456" );
    UserID test2 = new UserID("AdamFails", "password");

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
