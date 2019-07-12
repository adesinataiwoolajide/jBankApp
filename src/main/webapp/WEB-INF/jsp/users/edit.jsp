<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="color" uri="http://www.springframework.org/tags/form" %>

<%@ include file="../header.jsp" %>

<%@ include file="../sidebar.jsp" %>

<div class="clearfix"></div>

<div class="content-wrapper">
    <div class="container-fluid">
        <div class="row pt-2 pb-2">
            <div class="col-sm-9">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="./">Home</a></li>
                    <li class="breadcrumb-item"><a href="/administrator/users/edit/${lists.user_id}">Edit User</a></li>
                    <li class="breadcrumb-item"><a href="/administrator/users/">Add User</a></li>
                    <li class="breadcrumb-item active" aria-current="page">Edit A User Details</li>
                </ol>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12">
                <div class="card">
                    <div class="card-header"><i class="fa fa-table"></i> Please Fill The Below Form To Add Edit The User Details</div>
                    <div class="card-body">
                        <form action="/administrator/users/update" method="POST" enctype="multipart/form-data">

                            <div class="form-group row ">
                                <div class="col-sm-3">
                                    <label>Full Name </label>
                                    <input type="text" class="form-control form-control-rounded" name="fullname" required
                                           placeholder="Enter The Full Name" value="${lists.name}">
                                    <span style="color: red">** This Field is Required **</span>
                                </div>
                                <div class="col-sm-3">
                                    <label>User Role </label>
                                    <select class="form-control form-control-rounded" name="role" required>
                                        <option value="${lists.role}">${lists.role}</option>
                                        <option value=""></option>

                                        <option value="Admin">Admin</option>
                                        <option value="Manager">Manager</option>
                                        <option value="Sales Girl">Sales Girl</option>
                                    </select>
                                    <span style="color: red">** This Field is Required **</span>
                                </div>
                                <div class="col-sm-3">
                                    <label>User Name </label>
                                    <input type="text" class="form-control form-control-rounded" name="username" required
                                           placeholder="Enter The User Name" value="${lists.username}">
                                    <span style="color:color:color: red">** This Field is Required **</span>
                                </div>
                                <div class="col-sm-3">
                                    <label>Password </label>
                                    <input type="password" class="form-control form-control-rounded" name="password"
                                           placeholder="Enter The Password Name">
                                    <span style="color: forestgreen">** This Field is Optional **</span>
                                </div>
                                <input type="hidden" name="user_id" value="${lists.user_id}">

                                <div class="col-sm-12" align="center">
                                    <button type="submit" id="" class="btn btn-success btn-lg btn-block" role="status" >UPDATE THE USER
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
                    <div class="card-header"><i class="fa fa-table"></i> List of Saved Users</div>
                    <div class="card-body">
                        <div class="table-responsive">
                            <table id="default-datatable" class="table table-bordered">
                                <thead>
                                <tr>
                                    <th>S/N</th>
                                    <th>Full Name</th>
                                    <th>User Name</th>
                                    <th>Role</th>
                                    <th>Status</th>
                                </tr>
                                </thead>

                                <tfoot>
                                <tr>
                                    <th>S/N</th>
                                    <th>Full Name</th>
                                    <th>User Name</th>
                                    <th>Role</th>
                                    <th>Status</th>
                                </tr>
                                </tfoot>
                                <tbody>
                                <c:forEach var="user" items="${users}" >
                                    <tr>
                                        <td>
                                            <a href="/administrator/users/delete/${user.user_id}" class="btn btn-danger"
                                               onclick="return(confirmToDelete());"><i class="fa fa-trash-o"></i></a>
                                            <a href="/administrator/users/edit/${user.user_id}" class="btn btn-success"
                                               onclick="return(confirmToEdit());"><i class="fa fa-pencil"></i></a>
                                        </td>
                                        <td>${user.name}</td>
                                        <td>${user.username}</td>
                                        <td>${user.role}</td>
                                        <td>${user.status}</td>

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