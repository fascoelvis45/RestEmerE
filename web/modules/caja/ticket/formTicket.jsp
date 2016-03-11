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

                <div class="box-header with-border">
                    <h3 class="box-title"><b>TICKET DE CONSUMO</b></h3>
                </div>

                <form id="buscador" class="form-horizontal"   >
                    <div class="box-body">
                        <div class="form-group">
                            <div class="col-sm-9">
                                <input  type="text" name="dato" class="form-control" id="dato" placeholder="Buscar"/>
                                <input  type="hidden" name="id_pedido" value ="" />
                            </div>
                            <div class="col-sm-3">
                                <button type="submit" class="btn btn-info pull-right"><samp><i class="fa fa-search" /> </samp>BUSCAR</button>
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

