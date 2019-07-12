<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="../header.jsp" %>

<%@ include file="../sidebar.jsp" %>

<div class="clearfix"></div>

<div class="content-wrapper">
    <div class="container-fluid">
        <div class="row pt-2 pb-2">
            <div class="col-sm-9">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="./">Home</a></li>
                    <li class="breadcrumb-item"><a href="/administrator/deposite/edit/${deposite.depositeid}">Edit Deposite</a></li>
                    <li class="breadcrumb-item"><a href="/administrator/deposite/">Add Deposite</a></li>
                    <li class="breadcrumb-item"><a href="/administrator/deposite/list">View Deposite</a></li>
                    <li class="breadcrumb-item active" aria-current="page">List of Saved Customer Deposite</li>

                </ol>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12">
                <div class="card">
                    <div class="card-header"><i class="fa fa-table"></i> Please Fill The Below Form To Edit The Deposite Details </div>
                    <div class="card-body">
                        <form action="/administrator/deposite/update" method="POST" enctype="multipart/form-data">

                            <div class="form-group row ">
                                <div class="col-sm-6">
                                    <label>Account Number </label>
                                    <input type="text" class="form-control form-control-rounded" name="" required
                                           placeholder="Enter The Account Number" value="${deposite.account.accountnumber}" readonly>
                                    <span style="color: red">** This Field is Required **</span>
                                </div>
                                <div class="col-sm-6" id="txtHint2">
                                    <label>Customer Name </label>
                                    <input type="text" class="form-control form-control-rounded" name="" required
                                           placeholder="Enter The Amount" value="${deposite.customer.customername}" readonly>
                                    <span style="color: red">** This Field is Required **</span>
                                </div>
                                <input type="hidden" name="depositeid" value="${deposite.depositeid}">
                                <input type="hidden" name="accountid" value="${deposite.account.accountid}">
                                <input type="hidden" name="customerid" value="${deposite.customer.customerid}">
                                <input type="hidden" name="customername" value="${deposite.customer.customername}">
                                <div class="col-sm-4">
                                    <label>Amount </label>
                                    <input type="number" class="form-control form-control-rounded" name="amount" required
                                           placeholder="Enter The Amount" value="${deposite.amount}">
                                    <span style="color: red">** This Field is Required **</span>
                                </div>

                                <div class="col-sm-4">
                                    <label>Sender Name </label>
                                    <input type="text" class="form-control form-control-rounded" name="sendername" required
                                           placeholder="Enter The Sender Name" value="${deposite.sendername}">
                                    <span style="color: red">** This Field is Required **</span>
                                </div>
                                <div class="col-sm-4">
                                    <label>Sender Phone </label>
                                    <input type="number" class="form-control form-control-rounded" name="senderphone" required
                                           placeholder="Enter The Sender Phone" value="${deposite.senderphone}">
                                    <span style="color: red">** This Field is Required **</span>
                                </div>

                                <div class="col-sm-12" align="center">
                                    <button type="submit" id="" class="btn btn-success btn-lg btn-block" >UPDATE THE DEPOSITE
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
                    <div class="card-header"><i class="fa fa-table"></i> List of Saved Customer Deposite</div>
                    <div class="card-body">
                        <div class="table-responsive">
                            <table id="default-datatable" class="table table-bordered">
                                <thead>
                                <tr>
                                    <th>S/N</th>
                                    <th>Account Number</th>
                                    <th>Customer Name</th>
                                    <th>Amount</th>
                                    <th>Sender Name</th>
                                    <th>Sender Phone</th>

                                </tr>
                                </thead>

                                <tfoot>
                                <tr>
                                    <th>S/N</th>
                                    <th>Account Number</th>
                                    <th>Customer Name</th>
                                    <th>Amount</th>
                                    <th>Sender Name</th>
                                    <th>Sender Phone</th>


                                </tr>
                                </tfoot>
                                <tbody>
                                <c:forEach var="accounts" items="${account}" >
                                    <tr>
                                        <td>
                                            <a href="/administrator/deposite/edit/${accounts.depositeid}/"
                                               class="btn btn-outline-success"
                                               onclick="return(confirmToDelete());"><i class="fa fa-pencil-square-o"></i></a>
                                            <a href="/administrator/deposite/delete/${accounts.depositeid}"
                                               class="btn btn-outline-danger"
                                               onclick="return(confirmToEdit());"><i class="fa fa-trash-o"></i></a>


                                        </td>
                                        <td>${accounts.account.accountnumber}</td>
                                        <td>${accounts.customer.customername}</td>
                                        <td>&#8358;${accounts.amount}</td>
                                        <td>${accounts.sendername}</td>
                                        <td>${accounts.senderphone}</td>

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