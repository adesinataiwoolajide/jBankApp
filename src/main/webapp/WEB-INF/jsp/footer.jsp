<script>
    function confirmToDelete(){
        return confirm("Click Okay to Delete Details and Cancel to Stop");
    }
</script>

<script>
    function confirmToEdit(){
        return confirm("Click okay to Edit and Cancel to Stop");
    }
</script>
<a href="" class="back-to-top"><i class="fa fa-angle-double-up"></i> </a>


</div><!--End wrapper-->


<script src="/resources/js/jquery.min.js"></script>
<script src="/resources/js/popper.min.js"></script>
<script src="/resources/js/bootstrap.min.js"></script>

<!-- simplebar js -->
<script src="/resources/plugins/simplebar/js/simplebar.js"></script>
<!-- sidebar-menu js -->
<script src="/resources/js/sidebar-menu.js"></script>

<!-- Custom scripts -->
<script src="/resources/js/app-script.js"></script>

<!--Data Tables js-->
<script src="/resources/plugins/bootstrap-datatable/js/jquery.dataTables.min.js"></script>
<script src="/resources/plugins/bootstrap-datatable/js/dataTables.bootstrap4.min.js"></script>
<script src="/resources/plugins/bootstrap-datatable/js/dataTables.buttons.min.js"></script>
<script src="/resources/plugins/bootstrap-datatable/js/buttons.bootstrap4.min.js"></script>
<script src="/resources/plugins/bootstrap-datatable/js/jszip.min.js"></script>
<script src="/resources/plugins/bootstrap-datatable/js/pdfmake.min.js"></script>
<script src="/resources/plugins/bootstrap-datatable/js/vfs_fonts.js"></script>
<script src="/resources/plugins/bootstrap-datatable/js/buttons.html5.min.js"></script>
<script src="/resources/plugins/bootstrap-datatable/js/buttons.print.min.js"></script>
<script src="/resources/plugins/bootstrap-datatable/js/buttons.colVis.min.js"></script>

<script src="/resources/Toast/js/Toast.min.js"></script>


<script>
    $(document).ready(function() {
        //Default data table
        $('#default-datatable').DataTable();


        var table = $('#example').DataTable( {
            lengthChange: false,
            buttons: [ 'copy', 'excel', 'pdf', 'print' ]
        } );

        table.buttons().container()
            .appendTo( '#example_wrapper .col-md-6:eq(0)' );

    } );

</script>


<c:if test="${message}">
    <script type="text/javascript">

        new Toast({ message: '${message}', type: 'success' });
    </script>
</c:if>

<%--<script type="text/javascript">--%>
    <%--new Toast({ message: 'Weoclome', type: 'error' });--%>
<%--</script>--%>

<c:if test="error">
    <script type="text/javascript">
        new Toast({ message: '${message}', type: 'error' });
    </script>

</c:if>


</body>
</html>
