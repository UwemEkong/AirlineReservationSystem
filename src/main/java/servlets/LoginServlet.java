package servlets;

import dao.UserDao;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import models.User;
import models.UserID;

import java.io.IOException;

@WebServlet(urlPatterns = "/login")
public class LoginServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String userName = request.getParameter("userName");
        String password = Integer.toString(request.getParameter("password").hashCode());

        UserID userID = new UserID(userName, password);

        User user = getUser(userID);
        System.out.println(user);
        String destination = "";

        if (userIsValid(user)) {
            destination = "welcomepage.jsp";
            HttpSession session = request.getSession();
            session.setAttribute("user", user);
            System.out.print("correct");
        } else {
            destination = "login.jsp";
            String message = "Incorrect username/password";
            request.setAttribute("message", message);
            System.out.print("incorrect");
        }

        RequestDispatcher rd = request.getRequestDispatcher(destination);
        rd.forward(request, response);
    }

    private boolean userIsValid(User user) {
        return user != null && user.getFirstName() != null;
    }

    private User getUser(UserID userID) {
        UserDao userDao = new UserDao();
        return userDao.getUser(userID);
    }
}
