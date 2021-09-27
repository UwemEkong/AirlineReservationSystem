package servlets;

import dao.MemberDao;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import models.Member;
import models.MemberID;

import java.io.IOException;

@WebServlet(urlPatterns = "/login")
public class LoginServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String userName = request.getParameter("userName");
        String password = request.getParameter("password");

        MemberID memberID = new MemberID(userName, password);

        Member member = getMember(memberID);
        System.out.println(member);
        String destination = "";

        if (memberIsValid(member)) {
            destination = "index.jsp";
            HttpSession session = request.getSession();
            session.setAttribute("user",member);
        } else {
            destination = "login.jsp";
            String message = "Incorrect username/password";
            request.setAttribute("message", message);
        }

        RequestDispatcher rd = request.getRequestDispatcher(destination);
        rd.forward(request, response);
    }

    private boolean memberIsValid(Member member) {
        return member != null && member.getFirstName() != null;
    }

    private Member getMember(MemberID memberID) {
        MemberDao memberDao = new MemberDao();

       return memberDao.getMember(memberID);
    }
}
