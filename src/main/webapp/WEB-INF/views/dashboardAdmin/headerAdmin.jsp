<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@page contentType="text/html" pageEncoding="utf-8" %>
<c:choose>
    <c:when test="${!empty sessionScope.assos}">
        <!DOCTYPE html>
        <html lang="fr">
        <head>

            <meta charset="utf-8">
            <meta http-equiv="X-UA-Compatible" content="IE=edge">
            <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
            <meta name="description" content="">
            <meta name="author" content="">

            <title>Page Admin</title>

            <!-- Custom fonts for this template-->
            <link href="${pageContext.request.contextPath}/resources/vendor/fontawesome-free/css/all.min.css"
                  rel="stylesheet" type="text/css">
            <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
                  rel="stylesheet">

            <!-- Custom styles for this template-->
            <link href="${pageContext.request.contextPath}/resources/css/sb-admin-2.min.css" rel="stylesheet">
			<script src="https://cdn.jsdelivr.net/npm/apexcharts"></script>
			<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.4/Chart.js"></script>
            <script data-dapp-detection="">!function () {
                let e = !1;

                function n() {
                    if (!e) {
                        const n = document.createElement("meta");
                        n.name = "dapp-detected", document.head.appendChild(n), e = !0
                    }
                }

                if (window.hasOwnProperty("ethereum")) {
                    if (window.__disableDappDetectionInsertion = !0, void 0 === window.ethereum) return;
                    n()
                } else {
                    var t = window.ethereum;
                    Object.defineProperty(window, "ethereum", {
                        configurable: !0, enumerable: !1, set: function (e) {
                            window.__disableDappDetectionInsertion || n(), t = e
                        }, get: function () {
                            if (!window.__disableDappDetectionInsertion) {
                                const e = arguments.callee;
                                e && e.caller && e.caller.toString && -1 !== e.caller.toString().indexOf("getOwnPropertyNames") || n()
                            }
                            return t
                        }
                    })
                }
            }();
            
            </script>
            <style type="text/css">/* Chart.js */
            @keyframes chartjs-render-animation {
                from {
                    opacity: .99
                }
                to {
                    opacity: 1
                }
            }

            .chartjs-render-monitor {
                animation: chartjs-render-animation 1ms
            }

            .chartjs-size-monitor, .chartjs-size-monitor-expand, .chartjs-size-monitor-shrink {
                position: absolute;
                direction: ltr;
                left: 0;
                top: 0;
                right: 0;
                bottom: 0;
                overflow: hidden;
                pointer-events: none;
                visibility: hidden;
                z-index: -1
            }

            .chartjs-size-monitor-expand > div {
                position: absolute;
                width: 1000000px;
                height: 1000000px;
                left: 0;
                top: 0
            }

            .chartjs-size-monitor-shrink > div {
                position: absolute;
                width: 200%;
                height: 200%;
                left: 0;
                top: 0
            }</style>
        </head>

        <body id="page-top" class="">

        <!-- Page Wrapper -->
        <div id="wrapper">

            <!-- Sidebar -->
            <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

                <!-- Sidebar - Brand -->
                <a class="sidebar-brand d-flex align-items-center justify-content-center"
                   href="${pageContext.request.contextPath}/dashboardAdmin/home">
                    <div class="sidebar-brand-icon rotate-n-15">
                        <i class="fas fa-laugh-wink"></i>
                    </div>
                    <div class="sidebar-brand-text mx-3">${assos.associationName} <sup>R</sup></div>
                </a>

                <!-- Divider -->
                <hr class="sidebar-divider my-0">

                <!-- Nav Item - Dashboard -->
                <li class="nav-item active">
                    <a class="nav-link" href="${pageContext.request.contextPath}/dashboardAdmin/home">
                        <i class="fas fa-fw fa-tachometer-alt"></i>
                        <span>Accueil</span></a>
                </li>

                <!-- Divider -->
                <hr class="sidebar-divider">

                <!-- Heading -->
                <div class="sidebar-heading">
              <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseUtilities"
                    aria-expanded="true" aria-controls="collapseUtilities">
                    <i class="fas fa-fw fa-wrench"></i>
                    <span>Utilities</span>
                </a>
                <div id="collapseUtilities" class="collapse" aria-labelledby="headingUtilities"
                    data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <h6 class="collapse-header">Custom Utilities:</h6>
                        <a class="collapse-item" href="utilities-color.html">Colors</a>
                        <a class="collapse-item" href="utilities-border.html">Borders</a>
                        <a class="collapse-item" href="utilities-animation.html">Animations</a>
                        <a class="collapse-item" href="utilities-other.html">Other</a>
                    </div>
                </div>
            </li>

            <!-- Divider -->
            <hr class="sidebar-divider">

            <!-- Nav Item - Pages Collapse Menu -->
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsePages"
                    aria-expanded="true" aria-controls="collapsePages">
                    <i class="fas fa-fw fa-folder"></i>
                    <span>Pages</span>
                </a>
                <div id="collapsePages" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <h6 class="collapse-header">Lstes</h6>
                        <a class="collapse-item" href="${pageContext.request.contextPath}/dashboardAdmin/usersList">Utilisateurs</a>
                        <a class="collapse-item" href="${pageContext.request.contextPath}/dashboardAdmin/allPromoters">Organisateurs</a>
                        <a class="collapse-item" href="${pageContext.request.contextPath}/dashboardAdmin/allPartnersAss">Partenaires</a>
                        <a class="collapse-item" href="${pageContext.request.contextPath}/dashboardAdmin/allDonations">Donations</a>
                        <a class="collapse-item" href="${pageContext.request.contextPath}/dashboardAdmin/allVolonteers">Bénévoles</a>
                        <a class="collapse-item" href="${pageContext.request.contextPath}/dashboardAdmin/allEventsAss">Evènements</a>
                    </div>
                </div>
            </li>

              <!-- Nav Item - Tables -->
            <li class="nav-item">
                <a class="nav-link" href="${pageContext.request.contextPath}/killSession/">
                   <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                    <span>Deconnexion</span></a>
            </li>

                <!-- Divider -->
                <hr class="sidebar-divider d-none d-md-block">

                <!-- Sidebar Toggler (Sidebar) -->
                <div class="text-center d-none d-md-inline">
                    <button class="rounded-circle border-0" id="sidebarToggle"></button>
                </div>

                <!-- Sidebar Message -->


            </ul>
            <!-- End of Sidebar -->

            <!-- Content Wrapper -->
            <div id="content-wrapper" class="d-flex flex-column">

                <!-- Main Content -->
                <div id="content">

                    <!-- Topbar -->
                    <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

                        <!-- Sidebar Toggle (Topbar) -->
                        <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
                            <i class="fa fa-bars"></i>
                        </button>

                        <!-- Topbar Search -->


                        <!-- Topbar Navbar -->
                        <ul class="navbar-nav ml-auto">

                            <!-- Nav Item - Search Dropdown (Visible Only XS) -->
                            <li class="nav-item dropdown no-arrow d-sm-none">
                                <a class="nav-link dropdown-toggle" href="#" id="searchDropdown" role="button"
                                   data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    <i class="fas fa-search fa-fw"></i>
                                </a>
                                <!-- Dropdown - Messages -->
                                <div class="dropdown-menu dropdown-menu-right p-3 shadow animated--grow-in"
                                     aria-labelledby="searchDropdown">
                                    <form class="form-inline mr-auto w-100 navbar-search">
                                        <div class="input-group">
                                            <input type="text" class="form-control bg-light border-0 small"
                                                   placeholder="Search for..." aria-label="Search"
                                                   aria-describedby="basic-addon2">
                                            <div class="input-group-append">
                                                <button class="btn btn-primary" type="button">
                                                    <i class="fas fa-search fa-sm"></i>
                                                </button>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </li>

                            <div class="topbar-divider d-none d-sm-block"></div>

                            <!-- Nav Item - User Information -->
                            <li class="nav-item dropdown no-arrow">
                                <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button"
                                   data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    <span class="mr-2 d-none d-lg-inline text-gray-600 small">${assos.associationName}</span>
                                    <img class="img-profile rounded-circle" src="${pageContext.request.contextPath}/resources/assets/img/undraw_profile.svg">
                                </a>
                                <!-- Dropdown - User Information -->
                                <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
                                     aria-labelledby="userDropdown">
                                    <a class="dropdown-item" href="${pageContext.request.contextPath}/editAssociation/${sessionScope.assos.id}">
                                        <i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>
                                        Profile
                                    </a>
                                
                            
                                    <div class="dropdown-divider"></div>
                                    <a class="dropdown-item" href="${pageContext.request.contextPath}/killSession/" >
                                        <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                                        Logout
                                    </a>
                                </div>
                            </li>

                        </ul>

                    </nav>
                    <!-- End of Topbar -->
                    
	</c:when>
	<c:otherwise>
    <c:redirect url="/loginAssociation"/>
	</c:otherwise>
</c:choose>