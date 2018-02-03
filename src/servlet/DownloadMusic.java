package servlet;

import com.alibaba.fastjson.JSON;
import model.UrlResponse;
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

@WebServlet("/downloadMusic")
public class DownloadMusic extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException,IOException {
        String id = request.getParameter("id");
        String m_name = request.getParameter("m_name");
        String artists = request.getParameter("artists");
        OkHttpClient client = new OkHttpClient();
        Request request1 = new Request.Builder()
                .url("http://localhost:8001/api/get/song/netease?id="+id)
                .build();
        Response response1 = client.newCall(request1).execute();
        String url = response1.body().string();
        UrlResponse urlResponse = JSON.parseObject(url, UrlResponse.class);
        response.setCharacterEncoding("UTF-8");
        response.setContentType("application/object-stream");
        response.addHeader("Content-Disposition","attachment;filename=\"a.mp3"+"\"");
        response.sendRedirect(urlResponse.getUrl());
    }
}
