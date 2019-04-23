package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.Ad;
import com.codeup.adlister.models.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "controllers.RegisterServlet", urlPatterns = "/register")
public class RegisterServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("WEB-INF/users/register.jsp")
                .forward(request, response);
        // TODO: show the registration form
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String newUser = request.getParameter("username");
        String newUserEmail = request.getParameter("email");
        String newUserPassword = request.getParameter("password");
        String newUserConfirmPassword = request.getParameter("confirm_password");

        boolean sorryUserError = newUser.isEmpty()
                || newUserEmail.isEmpty()
                || newUserPassword.isEmpty()
                || (! newUserPassword.equals(newUserConfirmPassword));

        if (sorryUserError) {
            response.sendRedirect("/register");
        } else {
            User user = new User(
                    newUser,
                    newUserEmail,
                    newUserPassword
            );
            DaoFactory.getUsersDao().insert(user);
            response.sendRedirect("/login");
        }

        // TODO: ensure the submitted information is valid
        // TODO: create a new user based off of the submitted information
        // TODO: if a user was successfully created, send them to their profile
    }
}
