package com.servlets;

import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.entities.Note;
import com.helper.FactoryProvider;

public class editservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
    public editservlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			String title=request.getParameter("title");
			String content=request.getParameter("content");
			int noteid=Integer.parseInt(request.getParameter("noteid").trim());
			Session session=FactoryProvider.getFactory().openSession();
			Transaction transaction=session.beginTransaction();
			Note note=session.get(Note.class, noteid);
			note.setContent(content);
			note.setTitle(title);
			note.setDate(new Date());
			transaction.commit();
			session.close();
			response.sendRedirect("allnotes.jsp");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
