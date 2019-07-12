<div id="sidebar-wrapper" class="bg-theme bg-theme4" data-simplebar="" data-simplebar-auto-hide="true">
    <div class="brand-logo">
        <a href="/admnistrator/dashboard">
            <img src="/resources/images/jlogo.jpg" class="logo-icon" alt="logo icon">
            <h5 class="logo-text">JBank</h5>
        </a>
    </div>
    <div class="user-details">
        <div class="media align-items-center user-pointer collapsed" data-toggle="collapse" data-target="#user-dropdown">
            <div class="avatar">
                <img class="mr-3 side-user-img" src="/resources/images/jlogo.jpg" alt="user avatar">
            </div>
            <div class="media-body">
                <h6 class="side-user-name">

                   <c:if test="sessionScope.user_id">

                   </c:if>

                </h6>
            </div>
        </div>
        <div id="user-dropdown" class="collapse">
            <ul class="user-setting-menu">
                <li><a href="">
                    <i class="icon-user"></i>  My Profile</a></li>
                <li><a href=""><i class="icon-user"></i>  My Activity Log</a></li>
                <li><a href=""><i class="icon-power"></i> Change Password</a></li>
                <li><a href="/logout"><i class="icon-power"></i> Logout</a></li>
            </ul>
        </div>
    </div>
    <ul class="sidebar-menu do-nicescrol">
        <li class="sidebar-header">MAIN NAVIGATION</li>
        <li><a href="/administrator/dashboard" class="waves-effect"><i class="zmdi zmdi-home text-danger"></i> <span>Dashboard</span></a></li>
        <li><a href="/administrator/users/" class="waves-effect"><i class="fa fa-users text-success"></i> <span>Users</span></a></li>
        <li><a href="/administrator/account_category/" class="waves-effect"><i class="fa fa-cogs text-success"></i> <span>Account Category</span></a></li>
        <li><a href="/administrator/currencies/" class="waves-effect"><i class="fa fa-money text-danger"></i> <span>Currency</span></a></li>
        <li><a href="/administrator/sectors/" class="waves-effect"><i class="fa fa-sitemap text-danger"></i> <span>Sector</span></a></li>
        <li><a href="/administrator/customers/" class="waves-effect"><i class="fa fa-briefcase text-success"></i> <span>Customers</span></a></li>
        <li><a href="/administrator/account_officers/" class="waves-effect"><i class="fa fa-users text-danger"></i> <span>Account Officer</span></a></li>
        <li><a href="/administrator/accounts/" class="waves-effect"><i class="fa fa-money text-danger"></i> <span>Account</span></a></li>
        <li><a href="/administrator/deposite/" class="waves-effect"><i class="fa fa-money text-danger"></i> <span>Transactions</span></a></li>
        <li><a href="/administrator/deposite/" class="waves-effect"><i class="fa fa-money text-danger"></i> <span>Deposite</span></a></li>
<%--        <li>--%>
<%--            <a href="" class="waves-effect">--%>
<%--                <i class="fa fa-book text-success"></i> <span>Products </span>--%>
<%--                <i class="fa fa-angle-left pull-right"></i>--%>
<%--            </a>--%>
<%--            <ul class="sidebar-submenu">--%>
<%--                <li><a href=""><i class="zmdi zmdi-long-arrow-right"></i> Add Products</a></li>--%>
<%--                <li><a href=""><i class="zmdi zmdi-long-arrow-right"></i> View All Products</a></li>--%>
<%--            </ul>--%>
<%--        </li>--%>
<%--        <li>--%>
<%--            <a href="" class="waves-effect">--%>
<%--                <i class="fa fa-book text-success"></i> <span>Payment</span>--%>
<%--                <i class="fa fa-angle-left pull-right"></i>--%>
<%--            </a>--%>
<%--            <ul class="sidebar-submenu">--%>
<%--                <li><a href=""><i class="zmdi zmdi-long-arrow-right"></i> Confirm Payment</a></li>--%>
<%--                <li><a href=""><i class="zmdi zmdi-long-arrow-right"></i> Cancel Payment</a></li>--%>
<%--                <li><a href=""><i class="zmdi zmdi-long-arrow-right"></i> All Payments</a></li>--%>
<%--            </ul>--%>
<%--        </li>--%>

<%--        <li>--%>
<%--            <a href="" class="waves-effect">--%>
<%--                <i class="fa fa-book text-success"></i> <span>Shipping</span>--%>
<%--                <i class="fa fa-angle-left pull-right"></i>--%>
<%--            </a>--%>
<%--            <ul class="sidebar-submenu">--%>
<%--                <li><a href=""><i class="zmdi zmdi-long-arrow-right"></i> Unshipped Order</a></li>--%>
<%--                <li><a href=""><i class="zmdi zmdi-long-arrow-right"></i> Shipped Order</a></li>--%>

<%--            </ul>--%>
<%--        </li>--%>
<%--        <li>--%>
<%--            <a href="" class="waves-effect">--%>
<%--                <i class="fa fa-book text-success"></i> <span>Delivery</span>--%>
<%--                <i class="fa fa-angle-left pull-right"></i>--%>
<%--            </a>--%>
<%--            <ul class="sidebar-submenu">--%>

<%--                <!-- <li><a href="shipped-product.php"><i class="zmdi zmdi-long-arrow-right"></i> Undelivered Order</a></li> -->--%>
<%--                <li><a href=""><i class="zmdi zmdi-long-arrow-right"></i> Delivered Order</a></li>--%>
<%--                <li><a href=""><i class="zmdi zmdi-long-arrow-right"></i> Deliver Order</a></li>--%>
<%--                <li><a href=""><i class="zmdi zmdi-long-arrow-right"></i> Un Deliver Order</a></li>--%>
<%--            </ul>--%>
<%--        </li>--%>
<%--        <li>--%>
<%--            <a href="" class="waves-effect">--%>
<%--                <i class="fa fa-book text-success"></i> <span>Customer Order </span>--%>
<%--                <i class="fa fa-angle-left pull-right"></i>--%>
<%--            </a>--%>

<%--        </li>--%>

    </ul>
</div>

<header class="topbar-nav">
    <nav class="navbar navbar-expand fixed-top">
        <ul class="navbar-nav mr-auto align-items-center">
            <li class="nav-item">
                <a class="nav-link toggle-menu" href="">
                    <i class="icon-menu menu-icon"></i>
                </a>
            </li>
            <li class="nav-item">
                <form class="search-bar">
                    <input type="text" class="form-control" placeholder="Enter keywords">
                    <a href=""><i class="icon-magnifier"></i></a>
                </form>
            </li>
        </ul>

        <ul class="navbar-nav align-items-center right-nav-link">

            <li class="nav-item">
                <a class="nav-link dropdown-toggle dropdown-toggle-nocaret" data-toggle="dropdown" href="#">
                    <span class="user-profile"><img src="/resources/images/jlogo.jpg" class="img-circle" alt="user avatar"></span>
                </a>
                <ul class="dropdown-menu dropdown-menu-right">
                    <li class="dropdown-item user-details">
                        <a href="">
                            <div class="media">
                                <div class="avatar"><img class="align-self-start mr-3" src="/resources/images/jlogo.jpg" alt="user avatar"></div>
                                <div class="media-body">
                                    <h6 class="mt-2 user-title">Taiwo</h6>
                                    <p class="user-subtitle">Olajide</p>
                                </div>
                            </div>
                        </a>
                    </li>

                    <li class="dropdown-item"><i class="icon-power mr-2"></i> Logout</li>
                </ul>
            </li>
        </ul>
    </nav>
</header>