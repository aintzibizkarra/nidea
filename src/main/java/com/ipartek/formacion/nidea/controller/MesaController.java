package com.ipartek.formacion.nidea.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ipartek.formacion.nidea.pojo.Mesa;

/**
 * Servlet implementation class MesaController
 */
public class MesaController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// Crear mesa
		Mesa m = new Mesa();

		// recoger parametros ***SIEMPRE STRING***
		String spatas = request.getParameter("patas");
		String sdimensiones = request.getParameter("dimensiones");
		String smaterial = request.getParameter("material");
		boolean scustom = request.getParameter("custom") != null;

		// si los parametros no son nulos recoger y crear mesa a medida
		if (spatas != null) {
			int patas = Integer.parseInt(spatas);
			int dimension = Integer.parseInt(sdimensiones);
			int material = Integer.parseInt(smaterial);

			m.setNumeroPatas(patas);
			m.setDimension(dimension);
			m.setMaterial(material);

		}

		// Enviar atributos a jsp=> "mesa" es el nombre del atributo del objeto de m
		// Mesa()
		request.setAttribute("mesa", m);

		// Ir a Jsp (request interna)
		request.getRequestDispatcher("mesa.jsp").forward(request, response);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request, response);
	}

}
