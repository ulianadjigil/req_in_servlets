import javax.servlet.RequestDispatcher;
import java.io.IOException;
import java.lang.Math;
import static java.lang.Math.cos;


public class TestServlet extends javax.servlet.http.HttpServlet {
    protected void doPost(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {

        try {

            double no1 = Double.parseDouble(request.getParameter("no1"));
            double no2 = Double.parseDouble(request.getParameter("no2"));
            double no3 = Double.parseDouble(request.getParameter("no3"));
            double no4 = Double.parseDouble(request.getParameter("no4"));

            double result = 5 * no1 /cos(no1) + Math.sqrt(Math.sinh(Math.abs(no2)*no3))/ Math.tan(no4);
            if(Double.isNaN(result)||Double.isInfinite(result)){
                Object o2 = "Неприемлемый параметр";
                request.setAttribute("result", o2);
                RequestDispatcher view = request.getRequestDispatcher("/index.jsp");
                view.forward(request, response);
            }
            request.setAttribute("result", result);
            RequestDispatcher view = request.getRequestDispatcher("/index.jsp");
            view.forward(request, response);
        }catch (Exception e){
            request.setAttribute("result",e);
            RequestDispatcher view = request.getRequestDispatcher("/index.jsp");
            view.forward(request, response);
        }
    }

}