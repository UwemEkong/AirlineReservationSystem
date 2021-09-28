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

    /**
     * Test that shows if a member is found in query
     */
    @Test()
    public void getMemberTest() {


        MemberID test1 = new MemberID("AdamFly", "adamLikesFlying1!");
        Member expected = new Member();
        expected.setFirstName("Adam");
        expected.setLastName("Chap");
        expected.setUserID(1);
        expected.setFullName();
        Member actual = MemberDao.getMember(test1);

        assertEquals(expected, actual);



    }

    /**
     * Test to make sure no user returns from a faulty query
     */
    @Test()
    public void getMemberTestFail()  {


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
