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
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        User user = (User) session.getAttribute("user");

        if (user == null) {
            resp.sendRedirect(req.getContextPath() + "/");
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

        req.setAttribute("greeting", greeting);
        req.setAttribute("username", user.username());
        req.getRequestDispatcher("/WEB-INF/views/userinfo.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        session.invalidate();
        resp.sendRedirect(req.getContextPath() + "/");
    }
}