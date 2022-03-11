package com.ssafit.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ssafit.dao.VideoDAO;
import com.ssafit.dao.VideoDTO;

/**
 * Servlet implementation class SortedVideoServlet
 */
@WebServlet("/sortedvideo")
public class SortedVideoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SortedVideoServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		List<VideoDTO> listViewNum = VideoDAO.getInstance().sortViewNum();
		List<VideoDTO> listUpper = VideoDAO.getInstance().selectPart("상체");
		List<VideoDTO> listLower = VideoDAO.getInstance().selectPart("하체");
		List<VideoDTO> listWhole = VideoDAO.getInstance().selectPart("전신");
		List<VideoDTO> listMid = VideoDAO.getInstance().selectPart("복부");
		request.setAttribute("listViewNum", listViewNum);
		request.setAttribute("listUpper", listUpper);
		request.setAttribute("listLower", listLower);
		request.setAttribute("listWhole", listWhole);
		request.setAttribute("listMid", listMid);
		request.getRequestDispatcher("Videos/sorted-video.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
