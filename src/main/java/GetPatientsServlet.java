import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Patient;
import repository.PatientRepository;

import java.io.IOException;
import java.util.List;

@WebServlet("/patient")
public class GetPatientsServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        PatientRepository repository = new PatientRepository();
        List<Patient> patients = repository.getAllPatients();

        resp.setContentType("text/html");
        resp.getWriter().println("<html>");
        resp.getWriter().println("<head><title>Patient List From DO GET method</title></head>");
        resp.getWriter().println("<body>");
        resp.getWriter().println("<h1>Patient List From DO GET method</h1>");
        resp.getWriter().println("<table border=\"1\">");
        resp.getWriter().println("<tr><th>ID</th><th>Name</th><th>Email</th><th>Phone</th></tr>");

        for (Patient patient : patients) {
            resp.getWriter().println("<tr>");
            resp.getWriter().println("<td>" + patient.getId() + "</td>");
            resp.getWriter().println("<td>" + patient.getName() + "</td>");
            resp.getWriter().println("<td>" + patient.getEmail() + "</td>");
            resp.getWriter().println("</tr>");
        }

        resp.getWriter().println("</table>");
        resp.getWriter().println("</body>");
        resp.getWriter().println("</html>");
    }
}