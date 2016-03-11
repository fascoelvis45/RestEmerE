 
<!-- Left side column. contains the logo and sidebar -->
<%@ page import="java.util.*" %>
<%@ page import="java.text.SimpleDateFormat"%>
<%@include file="../../util/conectionDB.jsp" %>
<%  String id_usuario = (String) request.getParameter("id_usuario");%>
<section class="content-header">
    <h1>
        REPORTE PEDIDOS
        <small>Lista de Pedidos PENDIENTES<FECHA DEL SISTEMA> </small>
    </h1>

    <div class="box-body">

<!--        <button class="btn btn-success btn-lg" onclick="cargarURL('pedido/addPedidoListaMesas.jsp?id_usuario=<%=id_usuario%>', 'content')">
            <b>    <i class="fa fa-plus"></i> PEDIDO</b>

        </button>-->

    </div>

<!--</div>-->



</section>

<!-- Main content -->
<section class="content">
    <div class="row">
        <div class="col-md-12">

            <div class="box">


                <div class="box-header with-border">
                    <h3 class="box-title"><b>17/02/2016</b></h3>

                    <div class="btn-group pull-right">

                        <button type="button" class="btn btn-info">PENDIENTES</button> 

                        <!--                        <button type="button" class="btn btn-success">ENTREGADOS</button> -->

                        <button type="button" class="btn btn-danger">TERMINADOS</button>

                    </div>  
                </div><!-- /.box-header -->
                <div class="box-body">
                    <table class="table table-bordered table-hover">
                        <tr>
                            <th style="width: 10px">#</th>
                            <th>Mesa</th>
                            <th>Productos</th>
                            <th style="width: 40px">OPC</th>
                        </tr>

                        <%

                            SQL = "SELECT *   FROM pedido "
                                    + " where    estado ='1'  ";
                            //AND  DATE_FORMAT(fecha,'%m-%d-%Y') = DATE_FORMAT(NOW(),'%m-%d-%Y')  ";

                            rs = scSQL.executeQuery(SQL);

                            while (rs.next()) {
                        %>

                        <tr>
                            <td>x</td>      

                            <td> 

                                <ul>
                                    <%
                                        SQL1 = "SELECT y.numero numero FROM pedido_mesa x "
                                                + " inner join mesa y on x.id_mesa = y.id "
                                                + " where  x.id_pedido = '" + rs.getObject("id") + "' ";

                                        rs1 = scSQL1.executeQuery(SQL1);
                                        while (rs1.next()) {
                                    %>    
                                    <li>
                                        Mesa <%=rs1.getObject("numero")%>
                                    </li>
                                    <%}%>
                                </ul>

                            </td>
                            <td> 
                                <table class="table table-bordered">
                                    <%

                                        SQL2 = " SELECT y.nombre, x.estado_preparacion , x.estado_entrega , x.estado_cobro FROM pedido_destalle x "
                                                + " INNER JOIN producto y ON y.id = x.id_producto "
                                                + " WHERE x.id_pedido = '" + rs.getObject("id") + "' ";

                                        rs2 = scSQL2.executeQuery(SQL2);
                                        while (rs2.next()) {
                                    %>    

                                    <tr><td>
                                            <%=rs2.getObject("nombre")%>
                                        </td>
                                        <td>

                                            <% if (rs2.getObject("estado_preparacion").equals("0")) {%>
                                            <span class="badge bg-red">PREPARACION</span>
                                            <%} else if (rs2.getObject("estado_preparacion").equals("1")) {%>
                                            <span class="badge bg-yellow">PREPARACION</span>
                                            <%} else if (rs2.getObject("estado_preparacion").equals("2")) {%>
                                            <span class="badge bg-green">PREPARACION</span>
                                            <%}%>


                                            <% if (rs2.getObject("estado_entrega").equals("0")) {%>
                                            <span class="badge bg-red">ENTREGA</span>
                                            <%} else if (rs2.getObject("estado_entrega").equals("1")) {%>
                                            <span class="badge bg-yellow">ENTREGA</span>
                                            <%} else if (rs2.getObject("estado_entrega").equals("2")) {%>
                                            <span class="badge bg-green">ENTREGA</span>
                                            <%}%>


                                            <% if (rs2.getObject("estado_cobro").equals("0")) {%>
                                            <span class="badge bg-red">COBRO</span>
                                            <%} else if (rs2.getObject("estado_cobro").equals("1")) {%>
                                            <span class="badge bg-yellow">COBRO</span>
                                            <%} else if (rs2.getObject("estado_cobro").equals("2")) {%>
                                            <span class="badge bg-green">COBRO</span>
                                            <%}%>





                                        </td>
                                    </tr>
                                    <%}%>
                                </table>
                            </td>
                            <td> 
                                 
                                    
                                <button class="btn btn-info btn-sm" onclick="cargarURL('boleta/formBoleta.jsp?id_pedido=<%=rs.getObject("id")%>', 'content')">
                                    <b>    
                                        <!--<i class="fa fa-plus" ></i>-->
                                        BOLETA VENTA</b>
                                </button>

                                <button class="btn btn-success btn-sm" onclick="cargarURL('factura/formFactura.jsp?id_pedido=<%=rs.getObject("id")%>', 'content')">
                                    <b> 
                                        <!--<i class="fa fa-plus" ></i>--> 
                                        FACTURA</b>
                                </button>
                            </td>
                        </tr>

                        <%
                            }
                        %>




                    </table>
                </div><!-- /.box-body -->

                <div class="box-footer clearfix">
                    <ul class="pagination pagination-sm no-margin pull-right">
                        <li><a href="#">&laquo;</a></li>
                        <li><a href="#">1</a></li>
                        <li><a href="#">2</a></li>
                        <li><a href="#">3</a></li>
                        <li><a href="#">&raquo;</a></li>
                    </ul>
                </div>
            </div><!-- /.box -->


        </div><!-- /.col -->

    </div><!-- /.row -->

</section><!-- /.content -->

