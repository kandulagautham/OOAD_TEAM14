import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.ServletException;
import java.io.IOException;

public class CompanyRegister extends HttpServlet {

    private static final long serialVersionUID = 1L;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Get the parameters from the request object
        String cname = request.getParameter("cname");
        String est = request.getParameter("est");
        String email = request.getParameter("email");
        String contact = request.getParameter("contact");
        String hrname = request.getParameter("hrname");
        String user = request.getParameter("user");
        String pass = request.getParameter("pass");

        // Use the builder pattern to create a new Company object
        Company company = new Company.Builder()
                .setName(cname)
                .setEstablished(est)
                .setEmail(email)
                .setContact(contact)
                .setHrName(hrname)
                .setUsername(user)
                .setPassword(pass)
                .build();

        // Save the new company object to the database or do other business logic

        // Redirect to the CompanyJ.jsp page
        response.sendRedirect("CompanyJ.jsp");
    }
}

class Company {

    private String cname;
    private String est;
    private String email;
    private String contact;
    private String hrname;
    private String user;
    private String pass;

    private Company(Builder builder) {
        this.cname = builder.cname;
        this.est = builder.est;
        this.email = builder.email;
        this.contact = builder.contact;
        this.hrname = builder.hrname;
        this.user = builder.user;
        this.pass = builder.pass;
    }

    // getters and setters

    public static class Builder {

        private String cname;
        private String est;
        private String email;
        private String contact;
        private String hrname;
        private String user;
        private String pass;

        public Builder setName(String cname) {
            this.cname = cname;
            return this;
        }

        public Builder setEstablished(String est) {
            this.est = est;
            return this;
        }

        public Builder setEmail(String email) {
            this.email = email;
            return this;
        }

        public Builder setContact(String contact) {
            this.contact = contact;
            return this;
        }

        public Builder setHrName(String hrname) {
            this.hrname = hrname;
            return this;
        }

        public Builder setUsername(String user) {
            this.user = user;
            return this;
        }

        public Builder setPassword(String pass) {
            this.pass = pass;
            return this;
        }

        public Company build() {
            return new Company(this);
        }
    }
}
