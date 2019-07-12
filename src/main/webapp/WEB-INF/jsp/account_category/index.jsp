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
                    <div class="card-header"><i class="fa fa-table"></i> Please Fill The Below Form To Add New Account Category </div>
                    <div class="card-body">
                        <form action="/administrator/account_category/save" method="POST" enctype="multipart/form-data">

                            <div class="form-group row ">
                                <div class="col-sm-6">
                                    <label>Account Category Name </label>
                                    <input type="text" class="form-control form-control-rounded" name="accountcategoryname" required
                                           placeholder="Enter The Account Category Name">
                                    <span style="color: red">** This Field is Required **</span>
                                    <span id="accountcategoryname.errors" class="error">${accountcategoryname.errors}</span>
                                </div>

                                <div class="col-sm-6">
                                    <label>Amount </label>
                                    <input type="number" class="form-control form-control-rounded" name="amount" required
                                           placeholder="Enter The Amount">
                                    <span style="color: red">** This Field is Required **</span>
                                </div>

                                <div class="col-sm-12" align="center">
                                    <button type="submit" class="btn btn-success btn-lg btn-block" role="status" >
                                        ADD THE ACCOUNT CATEGORY
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
                    <div class="card-header"><i class="fa fa-table"></i> List of Saved Account Categories</div>
                    <div class="card-body">
                        <div class="table-responsive">
                            <table id="default-datatable" class="table table-bordered">
                                <thead>
                                <tr>
                                    <th>S/N</th>
                                    <th>Category Name</th>
                                    <th>Amount</th>

                                </tr>
                                </thead>

                                <tfoot>
                                <tr>
                                    <th>S/N</th>
                                    <th>Full Name</th>
                                    <th>User Name</th>
                                </tr>
                                </tfoot>
                                <tbody>
                                <c:forEach var="account_categories" items="${account_category}" >
                                    <tr>
                                        <td>
                                            <a href="/administrator/account_category/delete/${account_categories.accountcategoryid}" class="btn btn-danger"
                                               onclick="return(confirmToDelete());"><i class="fa fa-trash-o"></i></a>
                                            <a href="/administrator/account_category/edit/${account_categories.accountcategoryid}" class="btn btn-success"
                                               onclick="return(confirmToEdit());"><i class="fa fa-pencil"></i></a>
                                        </td>
                                        <td>${account_categories.accountcategoryname}</td>
                                        <td>&#8358;${account_categories.amount}</td>


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