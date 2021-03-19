
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<DOCOTYPE! html>
    <html lang="vi">
        <head>
            <title>Home Page</title>
            <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>

            <meta name="viewport" content="width=device-width, initial-scale=1">
            <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
            <link href="css/bootstrap.css" rel="stylesheet">

            <!-- Material Design Bootstrap -->
            <link href="css/mdb.css" rel="stylesheet">
            <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css" />
            <link rel="stylesheet" href="css/homepage.css" />            
        </head>
        <body class="container">
            <div class="content-top">
                <!-------------------------------------------------------------------------------------------------------->  
                <jsp:include page="sourcesHome/Header.jsp"></jsp:include>
                    <!-------------------------------------------------------------------------------------------------------->    
                    <div class="swiper-container">
                        <div class="parallax-bg" style="background-image:url(./img/User.jpg); height: 500px;" data-swiper-parallax="-23%"></div>
                        <div class="swiper-wrapper">
                            <div class="swiper-slide">
                                <div class="imgbox" >
                                    <img src="./img/2.jpg">
                                </div>
                                <div class="detail">
                                    <div class="title" data-swiper-parallax="-300">Ta Vạn Năng Hỏa Chủng
                                    </div>
                                    <div class="subtitle" data-swiper-parallax="-200">Subtitle</div>
                                    <div class="Stars" style="--rating: 2.3;" aria-label="Rating of this product is 2.3 out of 5."><span>Voted</span></div>
                                    <div class="text" data-swiper-parallax="-100">
                                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam dictum mattis velit, sit amet faucibus
                                            felis iaculis nec. Nulla laoreet justo vitae porttitor porttitor. Suspendisse in sem justo. Integer laoreet
                                            magna nec elit suscipit, ac laoreet nibh euismod. Aliquam hendrerit lorem at elit facilisis rutrum. Ut at
                                            ullamcorper velit. Nulla ligula nisi, imperdiet ut lacinia nec, tincidunt ut libero. Aenean feugiat non eros
                                            quis feugiat.</p>
                                    </div>
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <div class="imgbox" >
                                    <img src="./img/2.jpg">
                                </div>
                                <div class="detail">
                                    <div class="title" data-swiper-parallax="-300">Ta Vạn Năng Hỏa Chủng
                                    </div>
                                    <div class="subtitle" data-swiper-parallax="-200">Subtitle</div>
                                    <div class="Stars" style="--rating: 2.3;" aria-label="Rating of this product is 2.3 out of 5."><span>Voted</span></div>
                                    <div class="text" data-swiper-parallax="-100">
                                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam dictum mattis velit, sit amet faucibus
                                            felis iaculis nec. Nulla laoreet justo vitae porttitor porttitor. Suspendisse in sem justo. Integer laoreet
                                            magna nec elit suscipit, ac laoreet nibh euismod. Aliquam hendrerit lorem at elit facilisis rutrum. Ut at
                                            ullamcorper velit. Nulla ligula nisi, imperdiet ut lacinia nec, tincidunt ut libero. Aenean feugiat non eros
                                            quis feugiat.</p>
                                    </div>
                                </div>
                            </div>

                            <div class="swiper-slide">
                                <div class="title" data-swiper-parallax="-300">Slide 3</div>
                                <div class="subtitle" data-swiper-parallax="-200">Subtitle</div>
                                <div class="text" data-swiper-parallax="-100">
                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam dictum mattis velit, sit amet faucibus
                                        felis iaculis nec. Nulla laoreet justo vitae porttitor porttitor. Suspendisse in sem justo. Integer laoreet
                                        magna nec elit suscipit, ac laoreet nibh euismod. Aliquam hendrerit lorem at elit facilisis rutrum. Ut at
                                        ullamcorper velit. Nulla ligula nisi, imperdiet ut lacinia nec, tincidunt ut libero. Aenean feugiat non eros
                                        quis feugiat.</p>
                                </div>
                            </div>
                        </div>
                        <!-- Add Pagination -->
                        <div class="swiper-pagination swiper-pagination-white"></div>
                        <!-- Add Navigation -->
                        <div class="swiper-button-prev swiper-button-white color"></div>
                        <div class="swiper-button-next swiper-button-white color"></div>
                    </div>
                </div>
                <div class="content">
                    <div class="carousel slide carousel-fade pt-4"></div>
                <jsp:include page="sourcesHome/Navbar.jsp"></jsp:include>
                    <div class="row">
                    <jsp:include page="sourcesHome/LeftPage.jsp"></jsp:include>
                    <jsp:include page="sourcesHome/RightPage.jsp"></jsp:include>
                    </div>
                </div>
            <jsp:include page="sourcesHome/Footer.jsp"></jsp:include>
        </body>




        <script src="https://unpkg.com/swiper/swiper-bundle.js"></script>
        <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
        <script>
            var swiper = new Swiper('.swiper-container', {
                speed: 600,
                parallax: true,
                pagination: {
                    el: '.swiper-pagination',
                    clickable: true,
                },
                navigation: {
                    nextEl: '.swiper-button-next',
                    prevEl: '.swiper-button-prev',
                },
                pagination: {
                    el: '.swiper-pagination',
                },
            });
            var myIndex = 0;
            carousel();

            function carousel() {
                var i;
                var x = document.getElementsByClassName("mySlides");
                for (i = 0; i < x.length; i++) {
                    x[i].style.display = "none";
                }
                myIndex++;
                if (myIndex > x.length) {
                    myIndex = 1
                }
                x[myIndex - 1].style.display = "block";
                setTimeout(carousel, 2500);
            }
        </script>S
    </html>