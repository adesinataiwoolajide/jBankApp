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
                    <li class="breadcrumb-item"><a href="/administrator/deposite/">Create Deposite</a></li>
                    <li class="breadcrumb-item"><a href="/administrator/deposite/list">View Deposite</a></li>
                    <li class="breadcrumb-item active" aria-current="page">List of Saved Accounts</li>
                </ol>
            </div>
        </div>

        <div class="row">
            <div class="col-lg-12">
                <div class="card">
                    <div class="card-header"><i class="fa fa-table"></i> List of Saved Customer Accounts</div>
                    <div class="card-body">
                        <div class="table-responsive">
                            <table id="default-datatable" class="table table-bordered">
                                <thead>
                                <tr>
                                    <th>S/N</th>
                                    <th>Account Number</th>
                                    <th>Customer Name</th>
                                    <th>Account Category</th>
                                    <th>Currency</th>

                                </tr>
                                </thead>

                                <tfoot>
                                <tr>
                                    <th>S/N</th>
                                    <th>Account Number</th>
                                    <th>Customer Name</th>
                                    <th>Account Category</th>
                                    <th>Currency</th>

                                </tr>
                                </tfoot>
                                <tbody>
                                <c:forEach var="accounts" items="${account}" >
                                    <tr>
                                        <td>
                                            <a href="/administrator/deposite/create/${accounts.accountnumber}/${accounts.accountid}/${accounts.customer.customerid}/"
                                               class="btn btn-outline-danger"
                                               onclick=""><i class="fa fa-money"></i>Deposite</a>

                                        </td>
                                        <td>${accounts.accountnumber}</td>
                                        <td>${accounts.customer.customername}</td>
                                        <td>${accounts.accountCategory.accountcategoryname}</td>
                                        <td>${accounts.currency.currencyname}</td>

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