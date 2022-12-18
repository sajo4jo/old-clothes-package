<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://kit.fontawesome.com/5231ffc51c.js" crossorigin="anonymous"></script>
<title>Insert title here</title>
    <!-- CSS FILES -->
   	<link href="<c:url value="/resources/css/bootstrap.min.css"/>" rel="stylesheet" type="text/css"/>
	<link href="<c:url value="/resources/css/bootstrap-icons.css"/>" rel="stylesheet" type="text/css"/>
	<link href="<c:url value="/resources/css/templatemo-kind-heart-charity.css"/>" rel="stylesheet" type="text/css"/>
<style>
body {
    font-family: 'SUIT-Regular';
}
.site-header {
	font-weight: 500;
}
</style>
</head>
<body id="section_1">
    <main>
    <header class="site-header">
        <div class="container">
            <div class="row">

                <div class="col-lg-8 col-12 d-flex flex-wrap">
                    <p class="d-flex me-4 mb-0">
                       	<img src="/image/location-pin.png" style="width:30px;" class="bi-geo-alt me-2" alt="쪽지">
							KOSTA
                    </p>

                </div>

                <div class="col-lg-3 col-12 ms-auto d-lg-block d-none">
                    <ul class="social-icon">
                            <a href="https://github.com/sajo4jo/old-clothes-package" class="social-icon-link">
                               	<img src="/image/github.png" style="width:30px;" class="bi-geo-alt me-2" alt="쪽지" />
                   	 		</a>
                    </ul>
                </div>

            </div>
        </div>
    </header>

    <nav class="navbar navbar-expand-lg bg-light shadow-lg">
        <div class="container">
            <a class="navbar-brand" href="index.html">
                <span>
                	<img src="image/logo1.png" class="logo img-fluid" alt="Kind Heart Charity">
                </span>
            </a>

            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item">
                        <a class="nav-link click-scroll" href="#top">하우헌옷</a>
                    </li>

                    <li class="nav-item dropdown">
                        <a class="nav-link click-scroll dropdown-toggle" href="#section_2" id="navbarLightDropdownMenuLink" role="button" data-bs-toggle="dropdown"
                            aria-expanded="false">버리기/기부 ∨
                        </a>
                            <ul class="dropdown-menu dropdown-menu-light" aria-labelledby="navbarLightDropdownMenuLink">
	                            <li><a class="dropdown-item" href="/clothingbin">내 주변 헌옷 수거함</a></li>
	
	                            <li><a class="dropdown-item" href="/information">기부처 안내</a></li>
                        	</ul>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link" href="/sharingList">무료나눔</a>
                    </li>

                    <li class="nav-item dropdown">
                        <a class="nav-link click-scroll dropdown-toggle" href="#section_4" id="navbarLightDropdownMenuLink" role="button" data-bs-toggle="dropdown"
                            aria-expanded="false">헌옷 사고 팔기</a>
                   		<ul class="dropdown-menu dropdown-menu-light" aria-labelledby="navbarLightDropdownMenuLink">
                            <li><a class="dropdown-item" href="/businessinfo">업체 판매</a></li>
                            <li><a class="dropdown-item" href="/sellList">개인 판매</a></li>
                        </ul>        
                    </li>

                    <li class="nav-item">
                        <a class="nav-link" href="/freeList">커뮤니티</a>
                    </li>
				<c:choose>
					<c:when test="${authUser == null }">
	                    <li class="nav-item ms-3">
	                        <a class="nav-link custom-btn custom-border-btn btn" href="/login">Login</a>
	                    </li>
	                    <li class="nav-item ms-3">
	                        <a class="nav-link custom-btn custom-border-btn btn" href="/joinform">Join</a>
	                    </li>
	                </c:when>
	                <c:otherwise>
						<c:if test="${authUser.sect=='users' }">
							<li class="nav-item ms-3">
						        <a class="nav-link custom-btn custom-border-btn btn" href="/mypage/umypage/${authUser.userno }/sell">Mypage</a>
						        <a class="nav-link custom-btn custom-border-btn btn" href="/logout">Logout</a>
						    </li>     
				        </c:if>
				        <c:if test="${authUser.sect=='business' }">
				       		<li class="nav-item ms-3">
					        	<a class="nav-link custom-btn custom-border-btn btn" href="/mypage/bmypage/${authUser.bno }/apply">Mypage</a>
						        <a class="nav-link custom-btn custom-border-btn btn" href="/logout">Logout</a>
						    </li>    
						</c:if>		                
	                </c:otherwise>
	            </c:choose>        
                </ul>
            </div>
        </div>
    </nav>
        <section class="hero-section hero-section-full-height">
            <div class="container-fluid">
                <div class="row">

                    <div class="col-lg-12 col-12 p-0">
                        <div id="hero-slide" class="carousel carousel-fade slide" data-bs-ride="carousel">
                            <div class="carousel-inner">
                                <div class="carousel-item active">
                                    <img src="image/first.jpg"
                                        class="carousel-image img-fluid" alt="...">

                                    <div class="carousel-caption d-flex flex-column justify-content-end">
                                        <h1>기부하기</h1>

                                        <p>헌 옷 기부로 당신의 마음을 나누어보세요.</p>
                                    </div>
                                </div>

                                <div class="carousel-item">
                                    <img src="image/second.jpg"
                                        class="carousel-image img-fluid" alt="...">

                                    <div class="carousel-caption d-flex flex-column justify-content-end">
                                        <h1>수거함 찾기</h1>

                                        <p>내 집 주변 헌옷 수거함을 찾아보세요.</p>
                                    </div>
                                </div>

                                <div class="carousel-item">
                                    <img src="image/donationpeople.jpg"
                                        class="carousel-image img-fluid" alt="...">

                                    <div class="carousel-caption d-flex flex-column justify-content-end">
                                        <h1>헌 옷 판매</h1>

                                        <p>헌 옷 사고 팔기로 헌 옷을 처리해보세요.</p>
                                    </div>
                                </div>
                            </div>

                            <button class="carousel-control-prev" type="button" data-bs-target="#hero-slide"
                                data-bs-slide="prev">
                                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                <span class="visually-hidden">Previous</span>
                            </button>

                            <button class="carousel-control-next" type="button" data-bs-target="#hero-slide"
                                data-bs-slide="next">
                                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                <span class="visually-hidden">Next</span>
                            </button>
                        </div>
                    </div>

                </div>
            </div>
        </section>


        <section class="section-padding">
            <div class="container">
                <div class="row">

                    <div class="col-lg-10 col-12 text-center mx-auto">
                        <h2 class="mb-5">하우헌옷에 오신 것을 환영합니다!</h2>
                    </div>
                    
                    <div class="col-lg-3 col-md-6 col-12 mb-4 mb-lg-0 mb-md-4">
                        <div class="featured-block d-flex justify-content-center align-items-center">
                            <a href="/clothingbin" class="d-block">
                                <img src="image/earthheart.png" class="featured-block-image img-fluid" alt="">

                                <p class="featured-block-text">헌 옷<strong> 수거함</strong> 찾기</p>
                            </a>
                        </div>
                    </div>
                    
                    <div class="col-lg-3 col-md-6 col-12 mb-4 mb-lg-0 mb-md-4">
                        <div class="featured-block d-flex justify-content-center align-items-center">
                            <a href="/information" class="d-block">
                                <img src="image/receive.png" class="featured-block-image img-fluid" alt="">

                                <p class="featured-block-text">헌 옷<strong> 기부</strong>하기</p>
                            </a>
                        </div>
                    </div>
                    
                    <div class="col-lg-3 col-md-6 col-12 mb-4 mb-lg-0">
                        <div class="featured-block d-flex justify-content-center align-items-center">
                            <a href="/sharingList" class="d-block">
                                <img src="image/hands.png" class="featured-block-image img-fluid" alt="">

                                <p class="featured-block-text">헌 옷 <strong>무료 나눔</strong>하기</p>
                            </a>
                        </div>
                    </div>

                    <div class="col-lg-3 col-md-6 col-12 mb-4 mb-lg-0">
                        <div class="featured-block d-flex justify-content-center align-items-center">
                            <a href="/businessinfo" class="d-block">
                                <img src="image/scholarship.png" class="featured-block-image img-fluid" alt="">

                                <p class="featured-block-text">헌 옷 <strong>사고 팔기</strong></p>
                            </a>
                        </div>
                    </div>

                </div>
            </div>
        </section>

        <section class="section-padding section-bg" id="section_2">
            <div class="container">
                <div class="row">

                    <div class="col-lg-6 col-12 mb-5 mb-lg-0">
                        <img src="images/group-people-volunteering-foodbank-poor-people.jpg"
                            class="custom-text-box-image img-fluid" alt="">
                    </div>

                    <div class="col-lg-6 col-12">
                        <div class="custom-text-box">
                            <h2 class="mb-2">Our Story</h2>

                            <h5 class="mb-3">Kind Heart Charity, Non-Profit Organization</h5>

                            <p class="mb-0">This is a Bootstrap 5.2.2 CSS template for charity organization websites.
                                You can feel free to use it. Please tell your friends about TemplateMo website. Thank
                                you.</p>
                        </div>

                        <div class="row">
                            <div class="col-lg-6 col-md-6 col-12">
                                <div class="custom-text-box mb-lg-0">
                                    <h5 class="mb-3">Our Mission</h5>

                                    <p>Sed leo nisl, posuere at molestie ac, suscipit auctor quis metus</p>

                                    <ul class="custom-list mt-2">
                                        <li class="custom-list-item d-flex">
                                            <i class="bi-check custom-text-box-icon me-2"></i>
                                            Charity Theme
                                        </li>

                                        <li class="custom-list-item d-flex">
                                            <i class="bi-check custom-text-box-icon me-2"></i>
                                            Semantic HTML
                                        </li>
                                    </ul>
                                </div>
                            </div>

                            <div class="col-lg-6 col-md-6 col-12">
                                <div class="custom-text-box d-flex flex-wrap d-lg-block mb-lg-0">
                                    <div class="counter-thumb">
                                        <div class="d-flex">
                                            <span class="counter-number" data-from="1" data-to="2009"
                                                data-speed="1000"></span>
                                            <span class="counter-number-text"></span>
                                        </div>

                                        <span class="counter-text">Founded</span>
                                    </div>

                                    <div class="counter-thumb mt-4">
                                        <div class="d-flex">
                                            <span class="counter-number" data-from="1" data-to="120"
                                                data-speed="1000"></span>
                                            <span class="counter-number-text">B</span>
                                        </div>

                                        <span class="counter-text">Donations</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
       </main> 
		<div>
			<c:import url='/WEB-INF/views/includes/footer.jsp' />
		</div>	        
    <!-- JAVASCRIPT FILES -->
    <script src="/resources/js/jquery.min.js"></script>
    <script src="/resources/js/bootstrap.min2.js"></script>
    <script src="/resources/js/jquery.sticky.js"></script>
    <script src="/resources/js/click-scroll.js"></script>
    <script src="/resources/js/counter.js"></script>
    <script src="/resources/js/custom.js"></script>        
</body>
</html>