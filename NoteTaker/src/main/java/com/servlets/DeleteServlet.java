package com.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.entities.Note;
import com.helper.FactoryProvider;

public class DeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public DeleteServlet() {
        super();
        
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			
			int id=Integer.parseInt(request.getParameter("id".trim()));
			Session session=FactoryProvider.getFactory().openSession();
			Transaction transaction=session.beginTransaction();
			Note note=(Note)session.get(Note.class, id);
			session.delete(note);
			transaction.commit();
			session.close();
			response.sendRedirect("allnotes.jsp");
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

}
