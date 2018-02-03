package servlet;

import dao.MongoDao;
import model.TanMu;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import com.alibaba.fastjson.JSON;

@WebServlet("/getTanMu")
public class GetTanMu extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException,IOException {
        response.setContentType("application/json;charset=UTF-8");
        String id = request.getParameter("id");
        MongoDao mongoDao = new MongoDao();
        List<String> comments = mongoDao.getComments(Integer.parseInt(id));
        List<TanMu> tanMus = new ArrayList<>();
        for (String info:
                comments
             ) {
            TanMu tanMu = new TanMu();
            tanMu.setImg("resource/dist/img/barrager.png");
            tanMu.setInfo(info);
            if (info.length()<30)
                tanMus.add(tanMu);
        }
        String jsonString = JSON.toJSONString(tanMus);
        PrintWriter out = response.getWriter();
        out.println(jsonString);

    }
}
