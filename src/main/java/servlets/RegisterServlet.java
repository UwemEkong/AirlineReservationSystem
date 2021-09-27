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

    public static boolean verifyRegistrationInfo(MemberID memberID) {
            String password = memberID.getPassword();
            char [] pass = password.toCharArray();
            StringBuilder sb = new StringBuilder();
            int digitCount = 0;
            int upperCaseCount = 0;
            int specialCount = 0;
            for (char c : pass){
                if (Character.isDigit(c)) {
                    digitCount++;
                }
                else if (Character.isUpperCase(c)) {
                    upperCaseCount++;
                }
               else if (String.valueOf(c).matches("[^a-zA-Z0-9]")) {
                    specialCount++;
                }
            }

            if (specialCount >= 1 && upperCaseCount >= 1 && digitCount >= 1) {
                return true;
            } else {
                return false;
            }

    }

    private void createNewMember(MemberID memberID) {
        MemberDao memberDao = new MemberDao();
        memberDao.createMember(memberID);
    }
}
