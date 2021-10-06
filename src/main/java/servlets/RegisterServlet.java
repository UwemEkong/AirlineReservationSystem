package servlets;

import dao.UserDao;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import models.User;
import models.UserID;

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

        UserID userID = new UserID(firstName, lastName, userName, password, email, paymentMethod);
        String destination = "";

        if (verifyRegistrationInfo(userID)) {
            createNewUser(userID);
            destination = "login.jsp";
        } else {
            destination = "signUp.jsp";
            String message = "Incorrect username/password";
            request.setAttribute("message", message);
        }

        RequestDispatcher rd = request.getRequestDispatcher(destination);
        rd.forward(request, response);

    }

    public boolean checkInvalidPassword(UserID userID) {
        return userID.getPassword().length() < 8;
    }

    public boolean userExists(String username) {
        UserDao userDao = new UserDao();
        User user = userDao.findUserByUsername(username);

        if (user.getFirstName() != null || user.getLastName() != null || user.getUserName() != null) {
            return true;
        }
        return false;
    }

    public boolean checkMissingData(UserID userID) {
        if (userID.getUserName() == null || userID.getFirstName() == null || userID.getLastName() == null
                || userID.getPassword() == null || userID.getEmail() == null || userID.getPaymentInfo() == null) {
            return true;
        }
        return false;
    }
        public  boolean verifyRegistrationInfo (UserID userID){


            String password = userID.getPassword();
            char[] pass = password.toCharArray();
            StringBuilder sb = new StringBuilder();
            int digitCount = 0;
            int upperCaseCount = 0;
            int specialCount = 0;
            for (char c : pass) {
                if (Character.isDigit(c)) {
                    digitCount++;
                } else if (Character.isUpperCase(c)) {
                    upperCaseCount++;
                } else if (String.valueOf(c).matches("[^a-zA-Z0-9]")) {
                    specialCount++;
                }
            }

            if (!checkInvalidPassword(userID) && !userExists(userID.getUserName()) && !checkMissingData(userID) && specialCount >= 1 && upperCaseCount >= 1 && digitCount >= 1) {
                return true;
            } else {
                return false;
            }

        }

        private void createNewUser (UserID userID){
            UserDao userDao = new UserDao();
            userID.setPassword(Integer.toString(userID.getPassword().hashCode()));
            userDao.createUser(userID);
        }
    }

