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
                    <li class="breadcrumb-item"><a href="/administrator/currencies/">Add Currency</a></li>
                    <li class="breadcrumb-item active" aria-current="page">List of Saved Currencies</li>
                </ol>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12">
                <div class="card">
                    <div class="card-header"><i class="fa fa-table"></i> Please Fill The Below Form To Edit Currency </div>
                    <div class="card-body">
                        <form action="/administrator/currency/update" method="POST" enctype="multipart/form-data">

                            <div class="form-group row ">
                                <div class="col-sm-6">
                                    <label>Currency Name </label>
                                    <input type="text" class="form-control form-control-rounded" name="currencyname" required
                                           placeholder="Enter The Currency Name" value="${currency.currencyname}">
                                    <span style="color: red">** This Field is Required **</span>
                                    <span id="currencyname.errors" class="error">${currencyname.errors}</span>
                                </div>

                                <div class="col-sm-6">
                                    <label>Currency Mnemonic </label>
                                    <input type="text" class="form-control form-control-rounded" name="currencymnemonic" required
                                           placeholder="Enter The Amount" value="${currency.currencymnemonic}">
                                    <span style="color: red">** This Field is Required **</span>
                                    <span id="currencymnemonic.errors" class="error">${currencymnemonic.errors}</span>
                                </div>
                                <input type="hidden" name="currencyid" value="${currency.currencyid}">

                                <div class="col-sm-12" align="center">
                                    <button type="submit" class="btn btn-success btn-lg btn-block" role="status" >
                                        UPDATE THE CURRENCY
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
                    <div class="card-header"><i class="fa fa-table"></i> List of Saved Currencies</div>
                    <div class="card-body">
                        <div class="table-responsive">
                            <table id="default-datatable" class="table table-bordered">
                                <thead>
                                <tr>
                                    <th>S/N</th>
                                    <th>Currency Name</th>
                                    <th>Currency Mnemonic</th>

                                </tr>
                                </thead>

                                <tfoot>
                                <tr>
                                    <th>S/N</th>
                                    <th>Currency Name</th>
                                    <th>Currency Mnemonic</th>
                                </tr>
                                </tfoot>
                                <tbody>
                                <c:forEach var="currencies" items="${currenc}" >
                                    <tr>
                                        <td>
                                            <a href="/administrator/currency/delete/${currencies.currencyid}" class="btn btn-danger"
                                               onclick="return(confirmToDelete());"><i class="fa fa-trash-o"></i></a>
                                            <a href="/administrator/currency/edit/${currencies.currencyid}" class="btn btn-success"
                                               onclick="return(confirmToEdit());"><i class="fa fa-pencil"></i></a>
                                        </td>
                                        <td>${currencies.currencyname}</td>
                                        <td>${currencies.currencymnemonic}</td>


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