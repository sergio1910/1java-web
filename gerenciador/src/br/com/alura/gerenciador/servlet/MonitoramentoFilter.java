package br.com.alura.gerenciador.servlet;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

//@WebFilter(urlPatterns="/entrada")
public class MonitoramentoFilter implements Filter {

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		System.out.println("MonitoramentoFilter");
		String acao = request.getParameter("acao");
		Long antes = System.currentTimeMillis();
		
		chain.doFilter(request, response);
		
		
		Long depois = System.currentTimeMillis();
        System.out.println("Tempo de execu��o da a��o "+ acao + " -> " +  (depois - antes));
        
	}
	
	@Override
	public void init(FilterConfig filterConfig) throws ServletException {}

	@Override
	public void destroy() {}

}
