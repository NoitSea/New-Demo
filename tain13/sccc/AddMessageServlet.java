package com.sccc;

import com.sccc.MessageBean;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class AddMessageServlet extends HttpServlet {
          	
	private static final long serialVersionUID = 1L;
    
	public AddMessageServlet(){	
	        super();
	      
	    }
    
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {		
		doPost(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String author=new String(request.getParameter("author").getBytes("ISO-8859-1"),"UTF-8");
		String title=new String(request.getParameter("title").getBytes("ISO-8859-1"),"UTF-8");
		String content=new String(request.getParameter("content").getBytes("ISO-8859-1"),"UTF-8");
		SimpleDateFormat format=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String today=format.format(new Date());
		MessageBean mm=new MessageBean();
		mm.setAuthor(author);
		mm.setTitle(title);
		mm.setContent(content);
		mm.setTime(today);
		
		HttpSession session=request.getSession();
		ServletContext scx=session.getServletContext();				
		ArrayList wordlist=(ArrayList)scx.getAttribute("wordlist");
		 if(wordlist==null)
			 wordlist=new ArrayList();
		     wordlist.add(mm);
		     scx.setAttribute("wordlist", wordlist);
		
		response.sendRedirect("showMessage.jsp");
	}

}
