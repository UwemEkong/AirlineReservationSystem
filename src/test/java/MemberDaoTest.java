import dao.MemberDao;
import models.Member;
import models.MemberID;
import org.junit.Test;
import static org.junit.Assert.assertEquals;
import java.sql.*;

/**
 * Test to make sure correct member is queried from database given valid username and password
 */
public class MemberDaoTest {


    @Test()
    public void getMemberTest() throws ClassNotFoundException, SQLException {


        MemberID test1 = new MemberID("AdamFly", "adamLikesFlying1!");
        Member expected = new Member();
        expected.setFirstName("Adam");
        expected.setLastName("Chap");
        expected.setUserID(1);
        expected.setFullName();
        Member actual = MemberDao.getMember(test1);

        assertEquals(expected, actual);



    }

    @Test()
    public void getMemberTestFail() throws ClassNotFoundException, SQLException {


        MemberID test1 = new MemberID("Dad", "run1!!!!");
        Member expected = new Member();
        expected.setFirstName(null);
        expected.setLastName(null);
        expected.setUserID(0);
        expected.setFullName();
        Member actual = MemberDao.getMember(test1);

        assertEquals(expected, actual);



    }

    }
