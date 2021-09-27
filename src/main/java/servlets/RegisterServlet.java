package servlets;

import dao.MemberDao;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import models.MemberID;

import java.io.IOException;

@WebServlet(urlPatterns = "/register")
public class RegisterServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");

        String userName = request.getParameter("userName");
        String password = request.getParameter("password");

        String email = request.getParameter("email");
        String paymentMethod = request.getParameter("paymentMethod");

        MemberID memberID = new MemberID(firstName, lastName, userName, password, email, paymentMethod);
        String destination = "";

        if (verifyRegistrationInfo(memberID)) {
            createNewMember(memberID);
            destination = "login.jsp";
        } else {
            destination = "signup.jsp";
            String message = "Incorrect username/password";
            request.setAttribute("message", message);
        }

        RequestDispatcher rd = request.getRequestDispatcher(destination);
        rd.forward(request, response);

    }

    private boolean verifyRegistrationInfo(MemberID memberID) {
        return true;
    }

    private void createNewMember(MemberID memberID) {
        MemberDao memberDao = new MemberDao();
        memberDao.createMember(memberID);
    }
}
