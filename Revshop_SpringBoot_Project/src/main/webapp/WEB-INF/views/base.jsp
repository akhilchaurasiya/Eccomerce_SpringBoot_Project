<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>

<html lang="en">

<head>

    <meta charset="ISO-8859-1">
    <title>RevShop</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Adding Font Awesome CDN -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">


	
    <link rel="stylesheet" href="/css/style.css">

    <style>
        a:hover {
            color: blue;
        }
    </style>

</head>

<body>

    <!-- Start Navbar -->
    <nav class="navbar navbar-expand-lg fixed-top navbar-dark" style="background-color: black;">
        <div class="container-fluid">
            <a class="navbar-brand" href="#">
                <label style="color:blue; font-weight:599">Shop Here</label>
                <i class="fas fa-cart-shopping" style="color: blue;"></i> <!-- Corrected Font Awesome icon class -->
            </a>

            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <c:choose>
                        <c:when test="${empty user}">
                            <li class="nav-item"><a class="nav-link active" aria-current="page" href="/"><i class="fas fa-house"></i> Home</a></li> <!-- Corrected Font Awesome icon class -->
                        </c:when>

                        <c:otherwise>
                            <c:if test="${user.role == 'ROLE_ADMIN'}">
                                <li class="nav-item"><a class="nav-link active" aria-current="page" href="/admin/"><i class="fas fa-house"></i> Home</a></li> <!-- Corrected Font Awesome icon class -->
                            </c:if>

                            <c:if test="${user.role == 'ROLE_USER'}">
                                <li class="nav-item"><a class="nav-link active" aria-current="page" href="/"><i class="fas fa-house"></i> Home</a></li> <!-- Corrected Font Awesome icon class -->
                            </c:if>
                        </c:otherwise>
                    </c:choose>

                    <li class="nav-item"><a class="nav-link active" aria-current="page" href="/products">Product</a></li>

                </ul>

                <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                    <c:choose>
                        <c:when test="${empty user}">
                            <li class="nav-item"><a class="nav-link active" aria-current="page" href="/signin"><i class="fas fa-right-to-bracket"></i> LOGIN</a></li> <!-- Corrected Font Awesome icon class -->
                            <li class="nav-item"><a class="nav-link active" aria-current="page" href="/register">REGISTER</a></li>
                        </c:when>

                        <c:otherwise>
                            <c:if test="${user.role == 'ROLE_USER'}">
                                <li class="nav-item"><a class="nav-link active" aria-current="page" href="/cart/view"><i class="fas fa-cart-shopping"></i> Cart [ ${countCart} ]</a></li> <!-- Corrected Font Awesome icon class -->
                                <li class="nav-item"><a class="nav-link active" aria-current="page" href="/wishlist/view"><i class="fas fa-heart"></i> Wishlist</a></li> <!-- Corrected Font Awesome icon class -->
                            </c:if>

                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle active" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                    <i class="fas fa-user"></i> ${user.name} <!-- Corrected Font Awesome icon class -->
                                </a>

                                <ul class="dropdown-menu">
                                    <c:if test="${user.role == 'ROLE_USER'}">
                                        <li><a class="dropdown-item" href="/user/profile">Profile</a></li>
                                    </c:if>

                                    <c:if test="${user.role == 'ROLE_ADMIN'}">
                                        <li><a class="dropdown-item" href="/admin/profile">Profile</a></li>
                                    </c:if>

                                    <c:if test="${user.role == 'ROLE_USER'}">
                                        <li><a class="dropdown-item" href="/order/user-orders">My Orders</a></li>
                                    </c:if>

                                    <li><a class="dropdown-item" href="/logout">Logout</a></li>
                                </ul>
                            </li>
                        </c:otherwise>
                    </c:choose>
                </ul>
            </div>
        </div>
    </nav>
    <!-- End Navbar -->

    <div>
        <!-- Content to be included here -->
    </div>

    <!-- Start Footer -->
    <!-- End Footer -->

    <!-- JavaScript -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

</body>

</html>
