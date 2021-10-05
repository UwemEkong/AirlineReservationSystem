package servlets;

import dao.Connector;

import dao.FlightDao;
import dao.TripDao;
import dao.UserDao;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import models.Flight;
import models.User;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.List;

@WebServlet(urlPatterns = "/bookForUser")
public class showMembers extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<User> users  = listMembers();

        RequestDispatcher rd = request.getRequestDispatcher("bookForUser.jsp");
        request.setAttribute("users", users);

        rd.forward(request, response);


    }

    public static List<User> listMembers(){
        UserDao userDao = new UserDao();
        return userDao.getAllUsers();
    }
}


