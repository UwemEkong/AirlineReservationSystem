package dao;

import models.Member;
import models.MemberID;

import java.sql.ResultSet;
import java.sql.Statement;

/**
 * The MemberDao class is used to write queries to the 'Software' database. This class helps us separate our 'database logic' from our 'servlet logic'. Without this class, we would have to
 * put all of our queries and connections to the database inside the servlet class. By using the 'dao' (data access object) design pattern, we take advantage of loose coupling.
 *
 * @see <a href="https://www.baeldung.com/java-dao-pattern">https://www.baeldung.com/java-dao-pattern</a>
 */
public class MemberDao {

    /**
     * Validates the user's userName and Password by checking the database for a record that has the same username and password
     *
     * @param memberID - userName and password of the user attempting to login
     * @return Member
     */
    public Member getMember(MemberID memberID) {
        Member member = new Member();
        try {
            Connector.connect();
            Statement statement = Connector.connection.createStatement();

            String query = String.format("SELECT * FROM Software.Member " +
                    "WHERE Software.Member.userName = '%s'" +
                    "AND Software.Member.password = '%s'", memberID.getUserName(), memberID.getPassword());

            ResultSet rs = statement.executeQuery(query);

            if (rs.next()) {
                member.setFirstName(rs.getString("firstName"));
                member.setLastName(rs.getString("lastName"));
                member.setFullName();
            }
        } catch (Exception e) {

        }
        return member;
    }
}
