package br.com.alura.gerenciador.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//@WebServlet(urlPatterns = "/ola")
public class OiMundoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	 public OiMundoServlet() { 
	        System.out.println("Criando Oi Mundo Servlet");
	    } 

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		PrintWriter out = resp.getWriter();
		out.println("<html>");
		out.println("<body>");
		out.println("oi mundo, parabens vc escreveu o primeiro servlets.");
		out.println("</body>");
		out.println("</html>");
		
		
		 System.out.println("o servlet OiMundoServlet foi chamado");
	}
}
