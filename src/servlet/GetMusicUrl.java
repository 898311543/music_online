package servlet;

import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/getmusicurl")
public class GetMusicUrl extends HttpServlet{
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException,IOException {
        OkHttpClient client = new OkHttpClient();
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter pr = response.getWriter();
        Request request1 = new Request.Builder()
                .url("http://localhost:8001/api/get/song/netease?id="+request.getParameter("id"))
                .build();

        Response response1 = client.newCall(request1).execute();
        pr.println(response1.body().string());
    }
}
