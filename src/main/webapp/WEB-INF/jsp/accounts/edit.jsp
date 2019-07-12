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
                    <li class="breadcrumb-item"><a href="/administrator/accounts/">Create Account</a></li>
                    <li class="breadcrumb-item active" aria-current="page">List of Saved Accounts</li>
                </ol>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12">
                <div class="card">
                    <div class="card-header"><i class="fa fa-table"></i> Please Fill The Below Form To Update Customer Account </div>
                    <div class="card-body">
                        <form action="/administrator/account/update" method="POST" enctype="multipart/form-data">

                            <div class="form-group row ">
                                <div class="col-sm-3">
                                    <label>Customer Name </label>
                                    <select class="form-control form-control-rounded" name="customerid"
                                            required>
                                        <option value="${acct.customer.customerid}"> ${acct.customer.customername}</option>
                                        <option value=""></option>

                                        <c:forEach var="customers" items="${customer}">
                                            <option value="${customers.customerid}">${customers.customername}</option>
                                        </c:forEach>

                                    </select>
                                    <span style="color: red">** This Field is Required **</span>
                                    <span id="customernaname.errors" class="error">${customername.errors}</span>
                                </div>

                                <div class="col-sm-3">
                                    <label>Account Category </label>
                                    <select class="form-control form-control-rounded" name="accountcategoryid"
                                            required>
                                        <option value="${acct.accountCategory.accountcategoryid}"> ${acct.accountCategory.accountcategoryname}</option>
                                        <option value=""></option>

                                        <c:forEach var="categories" items="${category}">
                                            <option value="${categories.accountcategoryid}">${categories.accountcategoryname}</option>
                                        </c:forEach>

                                    </select>
                                    <span style="color: red">** This Field is Required **</span>
                                    <span id="accountcategoryname.errors" class="error">${accountcategoryname.errors}</span>
                                </div>


                                <div class="col-sm-3">
                                    <label>Currency </label>
                                    <select class="form-control form-control-rounded" name="currencyid"
                                            required>
                                        <option value="${acct.currency.currencyid}"> ${acct.currency.currencyname}</option>
                                        <option value=""></option>

                                        <c:forEach var="currencies" items="${currency}">
                                            <option value="${currencies.currencyid}">${currencies.currencyname}</option>
                                        </c:forEach>

                                    </select>
                                    <span style="color: red">** This Field is Required **</span>
                                    <span id="currencyname.errors" class="error">${currencyname.errors}</span>
                                </div>


                                <div class="col-sm-3">

                                    <label>Account Officer </label>
                                    <select class="form-control form-control-rounded" name="officerid"
                                            required>
                                        <option value="${acct.accountOfficer.officerid}"> ${acct.accountOfficer.officername}</option>
                                        <option value=""></option>

                                        <c:forEach var="officers" items="${officer}">
                                            <option value="${officers.officerid}">${officers.officername}</option>
                                        </c:forEach>

                                    </select>
                                    <span style="color: red">** This Field is Required **</span>
                                    <span id="officerid.errors" class="error">${officerid.errors}</span>
                                </div>
                                <input type="hidden" name="accountnumber" value="${acct.accountnumber}">
                                <input type="hidden" name="accountid" value="${acct.accountid}">
                                <div class="col-sm-12" align="center">
                                    <button type="submit" class="btn btn-outline-danger btn-lg btn-block" role="status" >
                                        UPDATE THE ACCOUNT
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
                    <div class="card-header"><i class="fa fa-table"></i> List of Saved Customers</div>
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
                                    <th>Account Officer</th>
                                </tr>
                                </thead>

                                <tfoot>
                                <tr>
                                    <th>S/N</th>
                                    <th>Account Number</th>
                                    <th>Customer Name</th>
                                    <th>Account Category</th>
                                    <th>Currency</th>
                                    <th>Account Officer</th>
                                </tr>
                                </tfoot>
                                <tbody>
                                <c:forEach var="accounts" items="${account}" >
                                    <tr>
                                        <td>
                                            <a href="/administrator/account/delete/${accounts.accountid}" class="btn btn-danger"
                                               onclick="return(confirmToDelete());"><i class="fa fa-trash-o"></i></a>
                                            <a href="/administrator/account/edit/${accounts.accountid}" class="btn btn-success"
                                               onclick="return(confirmToEdit());"><i class="fa fa-pencil"></i></a>
                                        </td>
                                        <td>${accounts.accountnumber}</td>
                                        <td>${accounts.customer.customername}</td>
                                        <td>${accounts.accountCategory.accountcategoryname}</td>
                                        <td>${accounts.currency.currencyname}</td>
                                        <td>${accounts.accountOfficer.officername}</td>

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