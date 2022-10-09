package ohremchuk.hometask.task8.servlet;

import java.io.*;
import javax.servlet.ServletException;
import javax.servlet.http.*;

import javax.servlet.annotation.*;

//@WebServlet(name = "ControllerServlet", urlPatterns = "/controller")
public class ControllerServlet extends HttpServlet {

    public void init() {
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        out.println("<html><head><title>First Servlet</title></head></html>");
        out.println("<body><h1>This is First Servlet</h1>");
        out.println("</body></html>");
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }

    public void destroy() {
    }
}