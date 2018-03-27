package com.ipartek.formacion.nidea.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ipartek.formacion.nidea.pojo.Alert;

/**
 * Servlet implementation class CalculadoraController
 */
public class CalculadoraController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private RequestDispatcher dispatch;

	public static final int OP_SUMAR = 0;
	public static final int OP_RESTAR = 1;
	public static final int OP_MULTIPLICAR = 2;
	public static final int OP_DIVIDIR = 3;

	int operacion = OP_SUMAR;

	// Aplicar logica de negocio

	float num1 = 0;
	float num2 = 0;

	float resu = 0;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// Nos llaman a traves de un enlace, petición GET

		request.getRequestDispatcher("views/calculadora/index.jsp").forward(request, response);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	// Nos llaman a traves de un formulario con method = "post"
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		try {

			getParameters(request);
			calcular();
			request.setAttribute("resultado", resu);
			dispatch = request.getRequestDispatcher("views/calculadora/resultado.jsp");

		} catch (NumberFormatException e) {
			e.printStackTrace();
			request.setAttribute("msg", new Alert("Por favor introduce un numero"));
			dispatch = request.getRequestDispatcher("views/calculadora/index.jsp");

		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("msg", new Alert());
			dispatch = request.getRequestDispatcher("views/calculadora/index.jsp");
		} finally {

			dispatch.forward(request, response);

		}

	}

	private void calcular() {
		// Aplicar logica de negocio
		switch (operacion) {

		case OP_SUMAR:
			resu = num1 + num2;
			break;
		case OP_RESTAR:
			resu = num1 - num2;
			break;
		case OP_MULTIPLICAR:
			resu = num1 * num2;
			break;
		case OP_DIVIDIR:
			resu = num1 / num2;
			break;
		default:

			break;

		}

	}

	private void getParameters(HttpServletRequest request) {

		String snum1 = request.getParameter("num1");
		String snum2 = request.getParameter("num2");
		String soperacion = request.getParameter("operacion");

		operacion = Integer.parseInt(soperacion);
		num1 = Float.parseFloat(snum1);
		num2 = Float.parseFloat(snum2);

		resu = 0f;

	}

}
