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
import com.ssafit.dao.VideoDAO;

/**
 * Servlet implementation class CommentController
 */
@WebServlet("/commentInsert")
public class CommentController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CommentController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		String id = request.getParameter("videoid");
		System.out.println("여기"+id);
		String writer = request.getParameter("writer");
		String comment = request.getParameter("comment");
		request.setAttribute("id", id);
		CommentDAO.getInstance().insert(new CommentDTO(id,writer,comment));
		List<CommentDTO> comments = CommentDAO.getInstance().SelectById(id);
		request.setAttribute("comments", comments);
		request.getRequestDispatcher("Videos/detail.jsp").forward(request, response);
		
	}

}
