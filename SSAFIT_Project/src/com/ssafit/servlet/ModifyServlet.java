package com.ssafit.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ssafit.dao.CommentDAO;
import com.ssafit.dao.CommentDTO;

/**
 * Servlet implementation class ModifyServlet
 */
@WebServlet("/modify")
public class ModifyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ModifyServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		// response.getWriter().append("Served at: ").append(request.getContextPath());
		int no = Integer.parseInt(request.getParameter("no"));
		String id = request.getParameter("videoid");
		List<CommentDTO> comments = CommentDAO.getInstance().SelectById(id);
		request.setAttribute("comments", comments);
		CommentDTO comment = CommentDAO.getInstance().selectOne(no);
		request.setAttribute("id", id);
		request.setAttribute("commenteach", comment);
		request.getRequestDispatcher("/Videos/modify.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		// doGet(request, response);
		request.setCharacterEncoding("UTF-8");
		int no = Integer.parseInt(request.getParameter("no"));
		String id = request.getParameter("id");
		String writer = request.getParameter("writer");
		String comment = request.getParameter("comment");
		CommentDAO.getInstance().modify(no,id,writer,comment);
		List<CommentDTO> comments = CommentDAO.getInstance().SelectById(id);
		request.setAttribute("comments", comments);
		request.setAttribute("id", id);
		request.getRequestDispatcher("/Videos/detail.jsp").forward(request, response);
	}

}
