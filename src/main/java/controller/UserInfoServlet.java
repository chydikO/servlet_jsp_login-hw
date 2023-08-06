package controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.User;

import java.io.IOException;
import java.util.Date;

@WebServlet(urlPatterns = "/userinfo")
public class UserInfoServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");

        if (user == null) {
            response.sendRedirect(request.getContextPath() + "/");
            return;
        }

        // Отримуємо поточний час для привітання в залежності від часу доби
        int hour = new Date().getHours();
        String greeting;

        if (hour >= 6 && hour < 12) {
            greeting = "Доброго ранку";
        } else if (hour >= 12 && hour < 18) {
            greeting = "Доброго дня";
        } else if (hour >= 18 && hour < 22) {
            greeting = "Доброго вечора";
        } else {
            greeting = "Доброї ночі";
        }

        request.setAttribute("greeting", greeting);
        request.setAttribute("username", user.username());
        request.getRequestDispatcher("/WEB-INF/views/userinfo.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        session.invalidate();
        response.sendRedirect(request.getContextPath() + "/");
    }
}