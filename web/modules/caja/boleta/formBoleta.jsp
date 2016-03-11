<%@include file="../../util/conectionDB.jsp" %>

<section class="content">
    <div class="row">
        <!-- left column -->
        <div class="col-md-6">
            <!-- general form elements -->

            <!-- Form Element sizes -->
            <div class="box box-success">
                <!--                <div class="box-header with-border">
                                    <h3 class="box-title"><b>BUSCAHR PRODUCTO</b></h3>
                                </div>
                                <div class="box-body">-->



                <form id="buscador" class="form-horizontal"   >
                    <div class="box-body">
                        <div class="form-group">
                            <div class="col-sm-12">

                                <div class="box-header with-border">
                                    <h3 class="box-title"><b>TICKET DE CONSUMO</b></h3>
                                     
                                    <table>
                                        
                                        <tbody>
                                            <tr> 
                                                <td>
                                                    
                                                </td>
                                            </tr>    
                                        </tbody>
                                    </table>
                                </div>

                                <div class="box-body">
                                    <div class="form-group">
                                        <label for="nomCliente" class="col-sm-2 control-label">Sr. (es) </label>

                                        <div class="col-sm-10">
                                            <input type="text" class="form-control" id="nomCliente" placeholder="Nombre Cliente">
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label for="Direccion" class="col-sm-2 control-label">Direccion</label>

                                        <div class="col-sm-10">
                                            <input type="text" class="form-control" id="Direccion" placeholder="Domicio Cliente">
                                        </div>
                                    </div> 

                                    <div class="form-group">
                                        <label for="dni" class="col-sm-2 control-label">DNI</label>

                                        <div class="col-sm-10">
                                            <input type="text" class="form-control" id="dni"  >
                                        </div>
                                    </div>



                                </div>
                                <div class="box-footer">
                                    <button type="submit" class="btn btn-default">Cancel</button>
                                    <button type="submit" class="btn btn-info pull-right">Sign in</button>
                                </div>

                            </div>



                        </div>  


                    </div><!-- /.box-footer -->
                </form>


            </div><!-- /.box-body -->

            <hr>
            <div class="box-header with-border">
                <h3 class="box-title"><b>PRODUCTOS</b></h3>
            </div>
            <div id="idContenedorProdutos" class="box-body">

            </div><!-- /.box-body -->




        </div>
        <div class="col-md-6">
            <div class="box box-success">
                <div class="box-header with-border">
                    <h3 class="box-title"><b>Lista de Productos En El Pedido</b></h3>
                </div>
                <div id="idContenedorProdutoPedidos" class="box-body">

                    <table class="table table-bordered table-hover">
                        <tr>
                            <th>
                                #
                            </th>
                            <th>
                                CANT.
                            </th>
                            <th>
                                PRODUCTO 
                            </th> 
                            <th>
                                PRECIO UNI.
                            </th>
                            <th>
                                TOTAL
                            </th>

                        </tr>


                        <%        String id_pedido = (String) request.getParameter("id_pedido");
                            SQL = "   SELECT x.id ,x.id_producto , x.cantidad_producto ,x.precio_total,x.precio_unitario, p.nombre FROM pedido_destalle x, producto p WHERE  x.id_pedido = '" + id_pedido + "' and x.id_producto = p.id  ";
                            rs = scSQL.executeQuery(SQL);

                            while (rs.next()) {

                        %>
                        <tr>
                            <td> | </td>
                            <td> <%=rs.getObject("cantidad_producto")%></td>
                            <td> <%=rs.getObject("nombre")%></td>
                            <td> <%=rs.getObject("precio_unitario")%></td>
                            <td> <%=rs.getObject("precio_total")%></td>


                        </tr>
                        <%}%>
                    </table>
                </div><!-- /.box-body -->
            </div><!-- /.box --> 
        </div><!--/.col (left) -->
    </div>

</div>   <!-- /.row -->
</section><!-- /.content -->

<script type="text/javascript">

//    var frm = $('#buscador');
//    frm.submit(function (ev) {
//        ev.preventDefault();
//        $.ajax({
//            type: 'POST',
//            url: 'pedido/reporteProductosBuscados.jsp',
//            data: frm.serialize(),
//            target : '#idContenedorProdutos',
//            success: function(responseText, statusText) {
//                $('#idContenedorProdutos').html(responseText);
//            }
//        });
//
//        
//    });

</script>

