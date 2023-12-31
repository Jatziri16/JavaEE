/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.5.78
 * Generated at: 2023-12-06 18:04:58 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class FormularioVideojuego_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = null;
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
      throws java.io.IOException, javax.servlet.ServletException {

    final java.lang.String _jspx_method = request.getMethod();
    if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method) && !javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSPs only permit GET, POST or HEAD. Jasper also permits OPTIONS");
      return;
    }

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n");
      out.write("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01//EN\" \"http://www.w3.org/TR/html4/strict.dtd\">\r\n");
      out.write("<html = lang \"es\">\r\n");
      out.write("	<head>\r\n");
      out.write("		<meta charset=\"UTF-8\">\r\n");
      out.write("		<title>Formulario Alta Videojuego</title>\r\n");
      out.write("		<link rel=stylesheet href=\"css/style.css\" type=\"text/css\">\r\n");
      out.write("		<!-- Bootstrap -->\r\n");
      out.write("	 		<link href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css\" rel=\"stylesheet\" integrity=\"sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3\" crossorigin=\"anonymous\">\r\n");
      out.write("		<script type=\"text/javascript\" src=\"js/validaciones_vid.js\"></script>\r\n");
      out.write("	</head>\r\n");
      out.write("	<body style='background-color: rgba(50, 50, 50, 0.3);'>\r\n");
      out.write("		<div id=\"fondo\">\r\n");
      out.write("			<h3 class=\"text-center mt-5 mb-1\">Formulario Alta de Nuevo Videojuego</h3>\r\n");
      out.write("			<div class=\"container rounded-3 contenedor\">\r\n");
      out.write("				<div class=\"row align-items-stretch justify-content-center\">\r\n");
      out.write("					<div class=\"login-container  col-7 col-sm-6 col-md-5 col-xl-5 rounded-end shadow\">\r\n");
      out.write("						<p class=\"text-center\">Ingresa los siguientes datos:</p>\r\n");
      out.write("						<div class=\"centrar\">\r\n");
      out.write("							<!-- FORM -->\r\n");
      out.write("							<form>\r\n");
      out.write("								<label for=\"clave\">Clave:</label>\r\n");
      out.write("								<input class=\"form-control mb-2\" type=\"text\" placeholder=\"Clave\" name=\"cve\" id=\"clave\">\r\n");
      out.write("								\r\n");
      out.write("								<label for=\"titulo\">TÃ­tulo:</label>\r\n");
      out.write("								<input class=\"form-control mb-2\" type=\"text\" placeholder=\"TÃ­tulo\" name=\"titulo\" id=\"titulo\">\r\n");
      out.write("								\r\n");
      out.write("								<label for=\"precio\">Precio:</label>\r\n");
      out.write("								<input class=\"form-control mb-2\" type=\"text\" placeholder=\"Precio\" name=\"precio\" id=\"precio\">\r\n");
      out.write("								\r\n");
      out.write("								<label for=\"cveprov\">Clave del proveedor:</label>\r\n");
      out.write("								<input class=\"form-control mb-2\" type=\"text\" placeholder=\"Clave del proveedor\" name=\"cveprov\" id=\"cveprov\">\r\n");
      out.write("								\r\n");
      out.write("								<label for=\"inventario\">Inventario:</label>\r\n");
      out.write("								<input class=\"form-control mb-4\" type=\"text\" placeholder=\"Inventario\" name=\"inventario\" id=\"inventario\">\r\n");
      out.write("								\r\n");
      out.write("								<button class=\"btn btn-primary w-100\" onclick=\"validarForms()\" type=\"button\">Insertar</button>\r\n");
      out.write("							</form>\r\n");
      out.write("						</div>\r\n");
      out.write("					</div>\r\n");
      out.write("				</div>\r\n");
      out.write("			</div>\r\n");
      out.write("		</div>\r\n");
      out.write("	</body>\r\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
