import dao.UserDao;
import models.User;
import models.UserID;
import org.junit.Test;
import static org.junit.Assert.assertEquals;
import java.sql.*;

/**
 * Test to make sure correct user is queried from database given valid username and password
 */
public class UserDaoTest {


    @Test()
    public void getUserTest() throws ClassNotFoundException, SQLException {


        UserID test1 = new UserID("AdamFly", Integer.toString("adamLikesFlying1!".hashCode()));
        User expected = new User();
        expected.setFirstName("Adam");
        expected.setLastName("Chap");
        expected.setUserID(1);
        expected.setFullName();
        User actual = UserDao.getUser(test1);

        assertEquals(expected, actual);



    }

    @Test()
    public void getUserTestFail() throws ClassNotFoundException, SQLException {


        UserID test1 = new UserID("Dad", "run1!!!!");
        User expected = new User();
        expected.setFirstName(null);
        expected.setLastName(null);
        expected.setUserID(0);
        expected.setFullName();
        User actual = UserDao.getUser(test1);

        assertEquals(expected, actual);



    }

    }
