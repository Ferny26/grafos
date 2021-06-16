<%-- 
    Document   : detalles
    Created on : 15/06/2021, 08:55:56 PM
    Author     : fernandajimenez
--%>

<%@page import="Objetos.Descendiente"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Objetos.Nodo"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%!
     public ArrayList<Nodo> grafo;
%>
<% 
    grafo = (ArrayList<Nodo>) request.getAttribute("grafo");
    String raiz = request.getParameter("contador");
    int costo, indexNodo; 
    Nodo resultado;
    Descendiente relacion;
    if( raiz != null){
        resultado = grafo.get(Integer.parseInt(raiz));
        costo = Integer.parseInt(request.getParameter("costo"));
        indexNodo = Integer.parseInt(request.getParameter("relacion"));
        relacion = new Descendiente(grafo.get(indexNodo), costo);
        resultado.getDescendientes().add(relacion);
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-Piv4xVNRyMGpqkS2by6br4gNJ7DXjqk09RmUpJ8jgGtD7zP9yug3goQfGII0yAns" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
        <title>Detalles</title>
    </head>
    <body>
         <div class="container" style="text-align: center; justify-content: center">
            <h1>Configura las relaciones del grafo</h1>
            <table class="table" style="margin: 0 auto">
                <thead>
                    <tr>
                      <th>No.</th>
                      <th>Nombre</th>
                      <th>Relaciones</th>
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
                         <td>
                             <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal-<%= contador%>">Ver</button>
                        </td>
                    </tr>
                    <div class="modal" id="exampleModal-<%=contador %>" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                        <div class="modal-dialog" role="document">
                          <div class="modal-content">
                            <div class="modal-header">
                              <h5 class="modal-title" id="exampleModalLabel">Nodo</h5>
                              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                              </button>
                            </div>
                            <form action="#" method="post"> 
                              <div class="modal-body">
                                  <p>Nodo: <%= " " + nodo.getNombre() %></p>
                                  <br/>
                                   <div class="form-group">
                                        <label for="relacion">Realción: </label>
                                        <select id="relacion" style="width:70px" name="relacion" class="form-select">
                                          <%
                                            for(int i = 0; i<grafo.size(); i++){
                                          %>   
                                            <%
                                              if(!grafo.get(i).equals(nodo)){
                                                  if(nodo.getDescendientes()== null || !nodo.getDescendientes().contains(grafo.get(i))){
                                            %> 
                                                        <option name="descendiente" value= <%=i %>> <%= grafo.get(i).getNombre() %></option>
                                          <%
                                                    }
                                                }
                                            }
                                          %>
                                        </select>
                                   </div>
                                  <br/>
                                <label for="costo">Costo: </label>
                                <input type="number" id="costo" name="costo" required/>
                                <input type="hidden" id="raiz" name="raiz" value= <%= contador - 1 %>/>
                                <%
                                    if(nodo.getDescendientes() != null ){
                                %>
                                        <table class="table">
                                            <thead>
                                                <tr>
                                                  <th>Nombre</th>
                                                  <th>Costo</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <%
                                                    for(Descendiente d : nodo.getDescendientes()){
                                                %>

                                                <tr>
                                                    <td>
                                                        <%= d.getNodo().getNombre() %>
                                                    </td>
                                                    <td>
                                                        <%= d.getCosto() %>
                                                    </td>
                                                </tr>

                                                <% 
                                                    }
                                                %>
                                            </tbody>
                                        </table>
                                <% 
                                    }
                                %>
                              </div>
                              <div class="modal-footer">
                                <input type="submit"  class="btn btn-secondary" value="Agregar"/>
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
                              </div>
                           </form>
                          </div>
                        </div>
                    </div>
                <%
                    contador++;
                       } 
                %>
         </div>
    </body>
</html>
