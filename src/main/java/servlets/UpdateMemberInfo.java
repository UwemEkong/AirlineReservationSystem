
package servlets;

import dao.UserDao;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import models.User;
import models.UserID;

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

        UserDao dao = new UserDao();
        UserID userID = new UserID(firstName,lastName,userName,password,email,paymentInfo);

        dao.updateUser(userID,userid);

        //updateMemberInfo(memberID, userid);

        List<User> users = dao.getAllUsers();

        RequestDispatcher rd = request.getRequestDispatcher("showUserInfo.jsp");
        request.setAttribute("users", users);

        rd.forward(request, response);

    }

//    public static void updateMemberInfo(){
//
//
//
//    }
}