
package servlets;

import dao.UserDao;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import models.User;

import java.io.IOException;
import java.util.List;

/**
 * This servlet handles all GET requests to the '/showMemberInfo' endpoint
 */
@WebServlet(urlPatterns = "/showMemberInfo")
public class showMemberInfo extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        List<User> users = listAllMembers();

        RequestDispatcher rd = request.getRequestDispatcher("showUserInfo.jsp");
        request.setAttribute("users", users);

        rd.forward(request, response);

    }

    public static List<User> listAllMembers(){
        UserDao dao = new UserDao();
        return dao.getAllUsers();
    }
}