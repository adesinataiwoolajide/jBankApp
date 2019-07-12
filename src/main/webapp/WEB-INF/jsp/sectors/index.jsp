<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="../header.jsp" %>

<%@ include file="../sidebar.jsp" %>

<div class="clearfix"></div>

<div class="content-wrapper">
    <div class="container-fluid">
        <div class="row pt-2 pb-2">
            <div class="col-sm-12">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="./">Home</a></li>
                    <li class="breadcrumb-item"><a href="/administrator/account_category/">Add Account Category</a></li>
                    <li class="breadcrumb-item active" aria-current="page">List of Saved Account Categories</li>
                </ol>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12">
                <div class="card">
                    <div class="card-header"><i class="fa fa-table"></i> Please Fill The Below Form To Add New Sector </div>
                    <div class="card-body">
                        <form action="/administrator/sector/save" method="POST" enctype="multipart/form-data">

                            <div class="form-group row ">
                                <div class="col-sm-8">

                                    <input type="text" class="form-control form-control-rounded" name="sectorname" required
                                           placeholder="Enter The Sector Name">

                                    <span id="sectorname.errors" class="error">${sectorname.errors}</span>
                                </div>


                                <div class="col-sm-4" align="center">
                                    <button type="submit" class="btn btn-success btn-lg btn-block"  >
                                        ADD THE SECTOR
                                    </button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12">
                <div class="card">
                    <div class="card-header"><i class="fa fa-table"></i> List of Saved Sectors</div>
                    <div class="card-body">
                        <div class="table-responsive">
                            <table id="default-datatable" class="table table-bordered">
                                <thead>
                                <tr>
                                    <th>S/N</th>
                                    <th>Sector Name</th>

                                </tr>
                                </thead>

                                <tfoot>
                                <tr>
                                    <th>S/N</th>
                                    <th>Sector Name</th>
                                </tr>
                                </tfoot>
                                <tbody>
                                <c:forEach var="sectors" items="${sector}" >
                                    <tr>
                                        <td>
                                            <a href="/administrator/sector/delete/${sectors.sectorid}" class="btn btn-danger"
                                               onclick="return(confirmToDelete());"><i class="fa fa-trash-o"></i></a>
                                            <a href="/administrator/sector/edit/${sectors.sectorid}" class="btn btn-success"
                                               onclick="return(confirmToEdit());"><i class="fa fa-pencil"></i></a>
                                        </td>
                                        <td>${sectors.sectorname}</td>


                                    </tr>
                                </c:forEach>
                                </tbody>

                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>
    <!-- End container-fluid-->

</div><!--End content-wrapper-->


<a href="" class="back-to-top"><i class="fa fa-angle-double-up"></i>Go Up </a>
<%@ include file="../footer.jsp" %>