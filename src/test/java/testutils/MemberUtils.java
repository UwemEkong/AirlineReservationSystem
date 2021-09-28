package testutils;

import models.MemberID;

/**
 * Utility class used for storing dummy data for JUnit testing. Without this class, we would have to keep recreating testing data whenever we want to write a new test case.
 */
public class MemberUtils {

    public static final MemberID invalidMemberID = new MemberID("Uwemtest123", "Uwem456");

    public static final MemberID validMemberID = new MemberID("Uwemfly", "uwemhatesFlying1!");

    public static final MemberID newMemberID = new MemberID("newMember", "newMember1!");

    public static final MemberID invalidMemberID2 = new MemberID("Uwem", "Ekong",null, "mypassword!", "test@test.com",
            "test***-***");

    public static final MemberID validMemberID2 = new MemberID("Uwem", "Ekong","test1234", "mypassword!", "test@test.com",
            "test***-***");
}
