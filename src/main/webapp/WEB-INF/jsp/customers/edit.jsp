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
                    <li class="breadcrumb-item"><a href="/administrator/customers/">Add Customer</a></li>
                    <li class="breadcrumb-item"><a href="/administrator/customer/edit/{customerid}">Edit Customer</a></li>
                    <li class="breadcrumb-item active" aria-current="page">List of Saved Customers</li>
                </ol>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12">
                <div class="card">
                    <div class="card-header"><i class="fa fa-table"></i> Please Fill The Below Form To Update the Customer </div>
                    <div class="card-body">
                        <form action="/administrator/customer/update" method="POST" enctype="multipart/form-data">

                            <div class="form-group row ">
                                <div class="col-sm-4">
                                    <label>Customer Name </label>
                                    <input type="text" class="form-control form-control-rounded" name="customername"
                                           required value="${cust.customername}"
                                           placeholder="Enter The Currency Name">
                                    <span style="color: red">** This Field is Required **</span>
                                    <span id="customernaname.errors" class="error">${customername.errors}</span>
                                </div>

                                <div class="col-sm-4">
                                    <label>Customer Mnemonic </label>
                                    <input type="text" class="form-control form-control-rounded"
                                           name="mnemonic" required value="${cust.mnemonic}"
                                           placeholder="Enter The Customer Mnemonic">
                                    <span style="color: red">** This Field is Required **</span>
                                    <span id="mnemonic.errors" class="error">${mnemonic.errors}</span>
                                </div>

                                <div class="col-sm-4">
                                    <label>Gender </label>
                                    <select class="form-control form-control-rounded" name="gender"
                                            required>
                                        <option value="${cust.gender}"> ${cust.gender}</option>
                                        <option value=""></option>
                                        <option value="Male">Male</option>
                                        <option value="Female"> Female</option>
                                    </select>
                                    <span style="color: red">** This Field is Required **</span>
                                    <span id="gebder.errors" class="error">${gender.errors}</span>
                                </div>

                                <div class="col-sm-4">
                                    <label>Phone Number </label>
                                    <input type="text" class="form-control form-control-rounded"
                                           name="phonenumber" required value="${cust.phonenumber}"
                                           placeholder="Enter The Phone Number">
                                    <span style="color: red">** This Field is Required **</span>
                                    <span id="phonenumber.errors" class="error">${phonenumber.errors}</span>
                                </div>

                                <div class="col-sm-4">
                                    <label>Nationality </label>
                                    <select class="form-control form-control-rounded" name="nationality"
                                            required>
                                        <option value="${cust.nationality}">${cust.nationality} </option>
                                        <option value=""></option>
                                        <option value="Nigerian">Nigerian</option>
                                        <option value="Others"> Others</option>
                                    </select>
                                    <span style="color: red">** This Field is Required **</span>
                                    <span id="nationality.errors" class="error">${nationality.errors}</span>
                                </div>

                                <div class="col-sm-4">
                                    <label>Sector </label>
                                    <select class="form-control form-control-rounded" name="sectorid"
                                            required>
                                        <option value=""> ${cust.sector.sectorname}</option>
                                        <option value=""></option>

                                        <c:forEach var="sectors" items="${secto}">
                                            <option value="${sectors.sectorid}">${sectors.sectorname}</option>
                                        </c:forEach>

                                    </select>
                                    <span style="color: red">** This Field is Required **</span>
                                    <span id="sectorid.errors" class="error">${sectorid.errors}</span>
                                </div>

                                <div class="col-sm-4">
                                    <label>Residential Address </label>
                                    <textarea type="text" class="form-control form-control-rounded"
                                              name="address" required placeholder="Enter The Address"> ${cust.address} </textarea>
                                    <span style="color: red">** This Field is Required **</span>
                                    <span id="address.errors" class="error">${address.errors}</span>
                                </div>

                                <div class="col-sm-4">
                                    <label>Next of Kin Name </label>
                                    <input type="text" class="form-control form-control-rounded"
                                           name="kinname" required value="${cust.kinname}"
                                           placeholder="Enter The Kin Name">
                                    <span style="color: red">** This Field is Required **</span>
                                    <span id="kinnane.errors" class="error">${kinname.errors}</span>
                                </div>

                                <div class="col-sm-4">

                                    <label>Kin Address </label>
                                    <textarea type="text" class="form-control form-control-rounded"
                                              name="kinaddress" required placeholder="Enter The Kin Address">
                                        ${cust.kinaddress}
                                    </textarea>
                                    <span style="color: red">** This Field is Required **</span>
                                    <span id="kinaddress.errors" class="error">${kinaddress.errors}</span>
                                </div>
                                <input type="hidden" name="customerid" value="${cust.customerid}">

                                <div class="col-sm-12" align="center">
                                    <button type="submit" class="btn btn-outline-danger btn-lg btn-block">
                                        update THE CUSTOMER
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
                                    <th>Customer Name</th>
                                    <th>Customer Mnemonic</th>
                                    <th>Sector</th>
                                    <th>Phone Number</th>

                                </tr>
                                </thead>

                                <tfoot>
                                <tr>
                                    <th>S/N</th>
                                    <th>Customer Name</th>
                                    <th>Customer Mnemonic</th>
                                    <th>Sector</th>
                                    <th>Phone Number</th>

                                </tr>
                                </tfoot>
                                <tbody>
                                <c:forEach var="customers" items="${customer}" >
                                    <tr>
                                        <td>
                                            <a href="/administrator/customer/delete/${customers.customerid}" class="btn btn-danger"
                                               onclick="return(confirmToDelete());"><i class="fa fa-trash-o"></i></a>
                                            <a href="/administrator/customer/edit/${customers.customerid}" class="btn btn-success"
                                               onclick="return(confirmToEdit());"><i class="fa fa-pencil"></i></a>
                                        </td>
                                        <td>${customers.customername}</td>
                                        <td>${customers.mnemonic}</td>
                                        <td>${customers.sector.sectorname}</td>
                                        <td>${customers.phonenumber}</td>

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