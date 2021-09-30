
package servlets;

import dao.MemberDao;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import models.Member;
import models.MemberID;

import java.io.IOException;
import java.util.List;

/**
 * This servlet handles all POST requests to the '/updateMemberInfo' endpoint
 */
@WebServlet(urlPatterns = "/updateMemberInfo")
public class UpdateMemberInfo extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

//        String firstName, String lastName, String userName, String password, String email, String paymentInfo

        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String userName = request.getParameter("userName");
        String password = request.getParameter("password");
        String email = request.getParameter("email");
        String paymentInfo = request.getParameter("paymentInfo");
        int userid = Integer.parseInt(request.getParameter("userId"));

        MemberDao dao = new MemberDao();
        MemberID memberID = new MemberID(firstName,lastName,userName,password,email,paymentInfo);

        dao.updateMember(memberID,userid);

        //updateMemberInfo(memberID, userid);

        List<Member> members = dao.getAllMembers();

        RequestDispatcher rd = request.getRequestDispatcher("showUserInfo.jsp");
        request.setAttribute("members", members);

        rd.forward(request, response);

    }

//    public static void updateMemberInfo(){
//
//
//
//    }
}