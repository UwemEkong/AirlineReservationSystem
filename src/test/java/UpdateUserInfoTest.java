import dao.FlightDao;
import dao.UserDao;
import models.Flight;
import models.User;
import models.UserID;
import org.junit.Test;
import servlets.AddFlight;
import servlets.GetFlight;
import testutils.UserUtils;

import static org.junit.Assert.assertEquals;

/**
 * Tests for Adding and Deleting Flights, these should be
 * run together to avoid losing or creating extra data your database
 */
public class UpdateUserInfoTest {

    /**
     * Test Updating User Info
     */
    @Test
    public void TestUpdateUserInfo() {

        UserDao dao = new UserDao();
//'1', '**** **** **** 1234', 'adamLikesFlying1!','Adam', 'Chap', 'adam@fly.com', 'AdamFly', 'MEMBER'
        //UserID user1 = new UserID("Adam", "adamLikesFlying1!",);

        User user1 = dao.getAllUsers().get(0);
        //String firstName, String lastName, String userName, String password, String email, String paymentInfo
        UserID user1ID = new UserID(user1.getFirstName(),user1.getLastName(),user1.getUserName(),user1.getPassword(),user1.getEmail(),user1.getPaymentInfo());

        user1ID.setFirstName("Batman");
        user1ID.setLastName("Batman");
        user1ID.setUserName("Batman");
        user1ID.setPassword("Batman");
        user1ID.setEmail("Batman");
        user1ID.setPaymentInfo("Batman");

        //System.out.println(user1ID.getFirstName());

        dao.updateUser(user1ID, 1);

        User user2 = dao.getAllUsers().get(0);

        UserID checkUser = new UserID(user2.getFirstName(),user2.getLastName(),user2.getUserName(),user2.getPassword(),user2.getEmail(),user2.getPaymentInfo());

        assertEquals("Batman", checkUser.getFirstName());
        assertEquals("Batman", checkUser.getLastName());
        assertEquals("Batman", checkUser.getUserName());
        assertEquals("Batman", checkUser.getPassword());
        assertEquals("Batman", checkUser.getEmail());
        assertEquals("Batman", checkUser.getPaymentInfo());

        user1ID.setFirstName(user1.getFirstName());
        user1ID.setLastName(user1.getLastName());
        user1ID.setUserName(user1.getUserName());
        user1ID.setPassword(user1.getPassword());
        user1ID.setEmail(user1.getEmail());
        user1ID.setPaymentInfo(user1.getPaymentInfo());

        dao.updateUser(user1ID,1);

    }

}
