<%-- 
    Document   : index
    Created on : 15/06/2021, 01:39:40 PM
    Author     : fernandajimenez
--%>

<%@page import="Objetos.Nodo"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%! 
    public ArrayList<Nodo> grafo = new ArrayList(); 
%>
<% 
    String nombre = request.getParameter("nombre");
    if( nombre != null){
        Nodo nodo = new Nodo(nombre);
        grafo.add(nodo);
    }
    String siguiente = request.getParameter("siguiente");
    if( siguiente != null){
        request.setAttribute("grafo", grafo);
        request.getRequestDispatcher("detalles.jsp").forward(request, response);
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-Piv4xVNRyMGpqkS2by6br4gNJ7DXjqk09RmUpJ8jgGtD7zP9yug3goQfGII0yAns" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
        <title>Grafos</title>
    </head>
    <body>
        <div class="container" style="text-align: center; justify-content: center">
            <h1>Bienvenido, crea tu grafo!</h1>
            <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">
            Agregar nodo 
            </button>
            <br/><br/>
            <h2>Tus nodos</h2>
            <br/> 
            <form action="#" method="post"> 
            <% 
                if(grafo.size() > 0)
                    {
            %>       
            <table class="table" style="margin: 0 auto">
                <thead>
                    <tr>
                      <th>No.</th>
                      <th>Nombre</th>
                    </tr>
              </thead>
              <tbody>
                <% 
                   int contador = 1;
                    
                       for(Nodo nodo : grafo)
                       {
                %> 
                    <tr>
                        <td>
                            <%= contador %>
                        </td>
                        <td>
                            <%= nodo.getNombre() %>
                        </td>
                    </tr>
                <%
                    contador++;
                       } 
                    }else{
                %>
                 <h4>Vaya! parece que aún no has agregado ninguno</h4>
                 <br/>
                <% 
                    }
                %>
              </tbody>
            </table>
            <%
                if( grafo.size() > 1 ){
            %>
                <input type="submit" name="siguiente" value="Siguiente" class="btn btn-primary"/>
            <%
                 }else{
            %>
             <h6>Agrega más de un nodo para pasar al siguiente paso</h6>
             <%
                 }
            %>
            </form>
        </div>
        
        <!-- Modal -->
        <div class="modal" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
          <div class="modal-dialog" role="document">
            <div class="modal-content">
              <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Nodo</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span>
                </button>
              </div>
              <form action="#" method="post"> 
                <div style="text-align: left; justify-content: left" class="modal-body">
                    <label for="nombre">Nombre: </label>
                    <input id="nombre" name="nombre" required/>
                </div>
                <div class="modal-footer">
                  <input type="submit"  class="btn btn-secondary" value="Agregar"/>
                  <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
                </div>
             </form>
            </div>
          </div>
        </div>
    </body>
</html>
