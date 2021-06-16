package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.ArrayList;
import Objetos.Nodo;

public final class detalles_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {


     public ArrayList<Nodo> grafo;

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write('\n');
 
    grafo = (ArrayList<Nodo>) request.getAttribute("grafo");

      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <script src=\"https://code.jquery.com/jquery-3.5.1.slim.min.js\" integrity=\"sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj\" crossorigin=\"anonymous\"></script>\n");
      out.write("        <script src=\"https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js\" integrity=\"sha384-Piv4xVNRyMGpqkS2by6br4gNJ7DXjqk09RmUpJ8jgGtD7zP9yug3goQfGII0yAns\" crossorigin=\"anonymous\"></script>\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css\" integrity=\"sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l\" crossorigin=\"anonymous\">\n");
      out.write("        <title>Detalles</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("         <div class=\"container\" style=\"text-align: center; justify-content: center\">\n");
      out.write("            <h1>Configura las relaciones del grafo</h1>\n");
      out.write("            <table class=\"table\" style=\"margin: 0 auto\">\n");
      out.write("                <thead>\n");
      out.write("                    <tr>\n");
      out.write("                      <th>No.</th>\n");
      out.write("                      <th>Nombre</th>\n");
      out.write("                      <th>Relaciones</th>\n");
      out.write("                    </tr>\n");
      out.write("              </thead>\n");
      out.write("              <tbody>\n");
      out.write("                ");
 
                   int contador = 1;
                    for(Nodo nodo : grafo)
                    {
                
      out.write(" \n");
      out.write("                    <tr>\n");
      out.write("                        <td>\n");
      out.write("                            ");
      out.print( contador );
      out.write("\n");
      out.write("                        </td>\n");
      out.write("                        <td>\n");
      out.write("                            ");
      out.print( nodo.getNombre() );
      out.write("\n");
      out.write("                        </td>\n");
      out.write("                         <td>\n");
      out.write("                             <button type=\"button\" class=\"btn btn-primary\" data-toggle=\"modal\" data-target=\"#exampleModal-");
      out.print( nodo.getNombre() );
      out.write("\">Ver</button>\n");
      out.write("                        </td>\n");
      out.write("                    </tr>\n");
      out.write("                    <div class=\"modal\" id=\"exampleModal-");
      out.print( nodo.getNombre() );
      out.write("\" tabindex=\"-1\" role=\"dialog\" aria-labelledby=\"exampleModalLabel\" aria-hidden=\"true\">\n");
      out.write("                        <div class=\"modal-dialog\" role=\"document\">\n");
      out.write("                          <div class=\"modal-content\">\n");
      out.write("                            <div class=\"modal-header\">\n");
      out.write("                              <h5 class=\"modal-title\" id=\"exampleModalLabel\">Nodo</h5>\n");
      out.write("                              <button type=\"button\" class=\"close\" data-dismiss=\"modal\" aria-label=\"Close\">\n");
      out.write("                                <span aria-hidden=\"true\">&times;</span>\n");
      out.write("                              </button>\n");
      out.write("                            </div>\n");
      out.write("                            <form action=\"#\" method=\"post\"> \n");
      out.write("                              <div class=\"modal-body\">\n");
      out.write("                                  <label >Nombre: ");
      out.print( nodo.getNombre() );
      out.write("</label>ç\n");
      out.write("                                   <select class=\"form-select\">\n");
      out.write("                                  ");

                                    for(int i = 0; i<grafo.size(); i++){
                                  
      out.write("   \n");
      out.write("                                    ");

                                      if(grafo.get(i) != nodo ){
                                    
      out.write(" \n");
      out.write("                                       <option value=\"1\">One</option>\n");
      out.write("                                       <option value=\"2\">Two</option>\n");
      out.write("                                       <option value=\"3\">Three</option>\n");
      out.write("                                  ");

                                    }
                                  
      out.write("\n");
      out.write("                                  </select>\n");
      out.write("                                  ");

                                    if(nodo.getDescendientes().size() > 0){
                                        
                                    }
                                      
                                 
      out.write("\n");
      out.write("                                <label for=\"costo\">Costo: </label>\n");
      out.write("                                <input type=\"number\" id=\"costo\" name=\"costo\" />\n");
      out.write("                                    \n");
      out.write("                                 \n");
      out.write("                                  \n");
      out.write("                              </div>\n");
      out.write("                              <div class=\"modal-footer\">\n");
      out.write("                                <input type=\"submit\"  class=\"btn btn-secondary\" value=\"Agregar\"/>\n");
      out.write("                                <button type=\"button\" class=\"btn btn-secondary\" data-dismiss=\"modal\">Cancelar</button>\n");
      out.write("                              </div>\n");
      out.write("                           </form>\n");
      out.write("                          </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                ");

                    contador++;
                       } 
                
      out.write("\n");
      out.write("         </div>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
