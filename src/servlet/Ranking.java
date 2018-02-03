package servlet;

import dao.MongoDao;
import model.PageBean;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/commentRanking")
public class Ranking extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher rd = getServletContext().getRequestDispatcher("/commentRanking.jsp");
        MongoDao mongoDao = new MongoDao();
        String pNumStr = request.getParameter("pNum");
        int pNum;
        if (pNumStr != null)
            pNum = Integer.parseInt(pNumStr);// 如果不是数字报错
        else
            pNum = 1;
        request.setAttribute("commentRanking", pageQuery(pNum));
        rd.forward(request, response);
    }

    public static final int NUMBERPAGE = 10; // 设置每页条数为常量

    public PageBean pageQuery(int pNum) {
        // 根据页码 和 每页条数 计算开始索引
        int start = (pNum - 1) * NUMBERPAGE;

        PageBean bean = new PageBean();
        MongoDao mongoDao = new MongoDao();
        // 封装当前页码
        bean.setpNum(pNum);

        // 调用DAO进行分页查询 --- 结果数据
        bean.setMusic(mongoDao.getCommentRanking((pNum-1) * 10, (pNum-1) * 10 + 9));

        // 封装总记录条数，findTotalRecordNum()方法见下文
        int totalRecordNum = (int) mongoDao.findTotalMusicNum();
        bean.setTotalRecordNum(totalRecordNum);

        // 计算总页数，很常用！！！
        int totalPageNum = (totalRecordNum + PageBean.NUMPERPAGE - 1)
                / PageBean.NUMPERPAGE;
        bean.setTotalPageNum(totalPageNum);

        return bean;
    }
}
