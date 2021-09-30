package servlets;

import dao.MemberDao;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import models.Member;

import java.io.IOException;
import java.util.List;

/**
 * This servlet handles all GET requests to the '/showUserInfo' endpoint
 */
@WebServlet(urlPatterns = "/showUserInfo")
public class ShowUserInfo extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        List<Member> members = listAllMembers();

        RequestDispatcher rd = request.getRequestDispatcher("showUserInfo.jsp");
        request.setAttribute("members", members);

        rd.forward(request, response);

    }

    public static List<Member> listAllMembers(){
        MemberDao dao = new MemberDao();
        return dao.getAllMembers();
    }
}
