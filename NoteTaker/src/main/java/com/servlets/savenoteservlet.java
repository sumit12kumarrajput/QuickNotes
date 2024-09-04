package com.servlets;

import java.awt.print.Printable;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.entities.Note;
import com.helper.FactoryProvider;

public class savenoteservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			String title=request.getParameter("title");
			String content=request.getParameter("content");
			
			Note note=new Note(title,content,new Date());
			
			Session session=FactoryProvider.getFactory().openSession();
			Transaction transaction=session.beginTransaction();
			session.save(note);
			transaction.commit();
			session.close();
			response.setContentType("text/html");
			PrintWriter out=response.getWriter();
			out.println("<h1 style=' color: #4CAF50; font-size: 2.5em; text-align: center; margin: 20px;'> Note added successfully</h1>");
			out.println("<a href='index.jsp' style='display: inline-block; padding: 10px 20px; font-size: 16px; color: white; background-color: #007bff;  border: none; border-radius: 4px; text-decoration: none; text-align: center; transition: background-color 0.3s ease, transform 0.3s ease; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2); '>Home</a>");
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

}
