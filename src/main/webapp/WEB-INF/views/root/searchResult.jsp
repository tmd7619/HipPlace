<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zxx">

    <head>
    	<link rel="stylesheet" type="text/css" href="css/style.css">
    	<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
        <!-- <script src="js/includeHTML.js"></script> -->
        <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=966d6768ac3ef51f4e01a46f8ef2ab0d"></script>
        <script  src="http://code.jquery.com/jquery-latest.min.js"></script>
    </head>
    <style>
        /* body{
            text-align: center;
            align-items: center;
            margin: 0 auto;
        } */

        .bi-pic {
            width:100%;
            position:relative; 
            cursor:pointer;
            text-align: center;
        }
        .darkness {
            position:absolute;
            top:0;
            left:0;
            width:100%;
            height:100%;
            background:#000000;
            opacity:0;
            transition:all .6s linear;
        }

        .bi-text{
            color: white;
            position:absolute;
            top:0;
            left:0;
            padding: 10% 10%;
            width:100%;
            height:100%;
            text-align: center;
            opacity:0;
            transition:all .6s linear;
        }

        .detail-btn{
            position:absolute;
            top:70%;
            left:80%;
            padding: 20px;
            opacity:0;
            transition:all .6s linear;
        }

        .bi-pic:hover .darkness{
            opacity:0.7;
        }

        .bi-pic:hover .bi-text{
            opacity:1;
        }

        .bi-pic:hover .detail-btn{
            opacity:1;
        }

        .up{
            /* background-image: url("img/up-arrow.png");
            background-color: white; */
            width:30px;
        }

        .down{
            /* background-image: url("img/down-arrow.png");
            background-color: white; */
            width:30px;
        }
        
    </style>
    <script>
        //item-list 요소 toggle
        $(document).ready(function(){
            $('.section-title').click(function(){
                $(this.nextElementSibling).slideToggle();
                var image = this.getElementsByTagName("img")[0];//toggle image
                console.log(image.className);
                if(image.className == 'up'){
                    image.className = "down";
                    image.src = "img/down-arrow.png";
                }else{
                    image.className = "up";
                    image.src = "img/up-arrow.png";
                }
            })
        });

        //장소 선택
        function selectPlace(place, num){
            list = findParentElement(place, 'blog-item-list').children;

            for(let i = 0; i < list.length; i++){
                list[i].firstElementChild.style.border = '';
            }

            // console.log(num+"차");
            // console.log(place.firstElementChild);
            place.firstElementChild.style.border = '2px solid black';

        }

        //부모 list노드 찾기
        function findParentElement(element, className){
            if(element.className == className){
                return element;
            }
            return findParentElement(element.parentElement, className);
        }

    </script>
<body>
    <!-- Page Preloder -->
    <!-- <header include-html="header.html"></header> -->
    <jsp:include page="/WEB-INF/views/common/header.jsp"/>

    
    <!-- Blog Section Begin -->
    <section class="blog-section spad">
        <!-- Kakao map -->
        <div id="kakaoMap" style="margin: auto;width:600px;height:400px;"></div>
        <script>
            var container = document.getElementById("kakaoMap"); //지도를 담을 영역의 DOM 레퍼런스
            var options = { //지도를 생성할 때 필요한 기본 옵션
                center: new kakao.maps.LatLng(33.450701, 126.570667), //지도의 중심좌표.
                level: 3 //지도의 레벨(확대, 축소 정도)
            };

            var map = new kakao.maps.Map(container, options); //지도 생성 및 객체 리턴
        </script>


        <div class="ht-widget" style="width:100%; text-align: right; ">
            <button type="button" class="site-btn" style="margin: 20px 15%;">선택 완료</button> <!-- 루트 확인, 길안내 페이지로 넘어감 -->
        </div>
        <div class="container">
            
            <div class="row">

                <div class="col-lg-4">
                    <div class="section-title" style="display: flex;">
                        <div id="title-name" style="flex:5;">
                            <h4><span>1차</span><span>-음식점</span></h4>
                        </div>
                        <div id="toggle-img" style="flex:1;">
                            <img class="down" src="img/down-arrow.png" style="width: 30px;">
                        </div>
                    </div>
                    <div class="blog-item-list">
                        
                        <div class="blog-item" onclick="selectPlace(this,1);">
                            <div class="bi-pic">
                                <img src="img/blog/blog-2.jpg" alt="">
                                <!--이하 부분 hover 시 표시-->
                                <div class="darkness"></div>
                                <div class="bi-text">
                                    <h2 style="color: white;">을지다락</h2><!--힙플레이스 이름-->
                                    <p>파스타, 편안한, 오므라이스</p><!--태그-->
                                    <ul>
                                        <li>평점 <span style="color: white;">4.5</span></li>
                                        <li>리뷰 <span style="color: white;">1500개</span></li>
                                    </ul>
                                </div>
                                <div class="detail-btn" onclick="location.href='./detail.html'">
                                    <img src="img/click.png" style="width:30px">
                                </div>
                            </div>
                        </div>

                        <div class="blog-item" onclick="selectPlace(this,1);">
                            <div class="bi-pic">
                                <img src="img/blog/blog-2.jpg" alt="">
                                <!--이하 부분 hover 시 표시-->
                                <div class="darkness"></div>
                                <div class="bi-text">
                                    <h2 style="color: white;">을지다락</h2><!--힙플레이스 이름-->
                                    <p>파스타, 편안한, 오므라이스</p><!--태그-->
                                    <ul>
                                        <li>평점 <span style="color: white;">4.5</span></li>
                                        <li>리뷰 <span style="color: white;">1500개</span></li>
                                    </ul>
                                </div>
                                <div class="detail-btn" onclick="location.href='./detail.html'">
                                    <img src="img/click.png" style="width:30px">
                                </div>
                            </div>
                        </div>

                        <div class="blog-item" onclick="selectPlace(this,1);">
                            <div class="bi-pic">
                                <img src="img/blog/blog-2.jpg" alt="">
                                <!--이하 부분 hover 시 표시-->
                                <div class="darkness"></div>
                                <div class="bi-text">
                                    <h2 style="color: white;">을지다락</h2><!--힙플레이스 이름-->
                                    <p>파스타, 편안한, 오므라이스</p><!--태그-->
                                    <ul>
                                        <li>평점 <span style="color: white;">4.5</span></li>
                                        <li>리뷰 <span style="color: white;">1500개</span></li>
                                    </ul>
                                </div>
                                <div class="detail-btn" onclick="location.href='./detail.html'">
                                    <img src="img/click.png" style="width:30px">
                                </div>
                            </div>
                        </div>
                        

                        <div class="blog-pagination property-pagination ">
                            <a href="#">1</a>
                            <a href="#">2</a>
                            <a href="#">3</a>
                            <a href="#" class="icon"><span class="arrow_right"></span></a>
                        </div>
                    </div>
                </div>

                <br>
                <hr>
                <!-- 2차  -->
                <div class="col-lg-4">
                    <div class="section-title" style="display: flex;">
                        <div style="flex:5;">
                            <h4><span>2차</span><span>-카페</span></h4>
                        </div>
                        <div id="toggle-img" style="flex:1;">
                            <img class="down" src="img/down-arrow.png" style="width: 30px;">
                        </div>
                    </div>
                    <div class="blog-item-list">
                        
                        
                        <div class="blog-item" onclick="selectPlace(this,1);">
                            <div class="bi-pic">
                                <img src="img/blog/blog-2.jpg" alt="">
                                <!--이하 부분 hover 시 표시-->
                                <div class="darkness"></div>
                                <div class="bi-text">
                                    <h2 style="color: white;">을지다락</h2><!--힙플레이스 이름-->
                                    <p>파스타, 편안한, 오므라이스</p><!--태그-->
                                    <ul>
                                        <li>평점 <span style="color: white;">4.5</span></li>
                                        <li>리뷰 <span style="color: white;">1500개</span></li>
                                    </ul>
                                </div>
                                <div class="detail-btn" onclick="location.href='./detail.html'">
                                    <img src="img/click.png" style="width:30px">
                                </div>
                            </div>
                        </div>

                        <div class="blog-item" onclick="selectPlace(this,1);">
                            <div class="bi-pic">
                                <img src="img/blog/blog-2.jpg" alt="">
                                <!--이하 부분 hover 시 표시-->
                                <div class="darkness"></div>
                                <div class="bi-text">
                                    <h2 style="color: white;">을지다락</h2><!--힙플레이스 이름-->
                                    <p>파스타, 편안한, 오므라이스</p><!--태그-->
                                    <ul>
                                        <li>평점 <span style="color: white;">4.5</span></li>
                                        <li>리뷰 <span style="color: white;">1500개</span></li>
                                    </ul>
                                </div>
                                <div class="detail-btn" onclick="location.href='./detail.html'">
                                    <img src="img/click.png" style="width:30px">
                                </div>
                            </div>
                        </div>

                        <div class="blog-item" onclick="selectPlace(this,1);">
                            <div class="bi-pic">
                                <img src="img/blog/blog-2.jpg" alt="">
                                <!--이하 부분 hover 시 표시-->
                                <div class="darkness"></div>
                                <div class="bi-text">
                                    <h2 style="color: white;">을지다락</h2><!--힙플레이스 이름-->
                                    <p>파스타, 편안한, 오므라이스</p><!--태그-->
                                    <ul>
                                        <li>평점 <span style="color: white;">4.5</span></li>
                                        <li>리뷰 <span style="color: white;">1500개</span></li>
                                    </ul>
                                </div>
                                <div class="detail-btn" onclick="location.href='./detail.html'">
                                    <img src="img/click.png" style="width:30px">
                                </div>
                            </div>
                        </div>
                        
                        <div class="blog-pagination property-pagination ">
                            <a href="#">1</a>
                            <a href="#">2</a>
                            <a href="#">3</a>
                            <a href="#" class="icon"><span class="arrow_right"></span></a>
                        </div>

                    </div>
                </div>



                <!-- 3차  -->
                <div class="col-lg-4">
                    <div class="section-title" style="display: flex;">
                        <div style="flex:5;">
                            <h4><span>3차</span><span>-술집</span></h4>
                        </div>
                        <div id="toggle-img" style="flex:1;">
                            <img class="down" src="img/down-arrow.png" style="width: 30px;">
                        </div>
                    </div>
                    <div class="blog-item-list">
                        
                        
                        <div class="blog-item" onclick="selectPlace(this,1);">
                            <div class="bi-pic">
                                <img src="img/blog/blog-2.jpg" alt="">
                                <!--이하 부분 hover 시 표시-->
                                <div class="darkness"></div>
                                <div class="bi-text">
                                    <h2 style="color: white;">을지다락</h2><!--힙플레이스 이름-->
                                    <p>파스타, 편안한, 오므라이스</p><!--태그-->
                                    <ul>
                                        <li>평점 <span style="color: white;">4.5</span></li>
                                        <li>리뷰 <span style="color: white;">1500개</span></li>
                                    </ul>
                                </div>
                                <div class="detail-btn" onclick="location.href='./detail.html'">
                                    <img src="img/click.png" style="width:30px">
                                </div>
                            </div>
                        </div>

                        <div class="blog-item" onclick="selectPlace(this,1);">
                            <div class="bi-pic">
                                <img src="img/blog/blog-2.jpg" alt="">
                                <!--이하 부분 hover 시 표시-->
                                <div class="darkness"></div>
                                <div class="bi-text">
                                    <h2 style="color: white;">을지다락</h2><!--힙플레이스 이름-->
                                    <p>파스타, 편안한, 오므라이스</p><!--태그-->
                                    <ul>
                                        <li>평점 <span style="color: white;">4.5</span></li>
                                        <li>리뷰 <span style="color: white;">1500개</span></li>
                                    </ul>
                                </div>
                                <div class="detail-btn" onclick="location.href='./detail.html'">
                                    <img src="img/click.png" style="width:30px">
                                </div>
                            </div>
                        </div>

                        <div class="blog-item" onclick="selectPlace(this,1);">
                            <div class="bi-pic">
                                <img src="img/blog/blog-2.jpg" alt="">
                                <!--이하 부분 hover 시 표시-->
                                <div class="darkness"></div>
                                <div class="bi-text">
                                    <h2 style="color: white;">을지다락</h2><!--힙플레이스 이름-->
                                    <p>파스타, 편안한, 오므라이스</p><!--태그-->
                                    <ul>
                                        <li>평점 <span style="color: white;">4.5</span></li>
                                        <li>리뷰 <span style="color: white;">1500개</span></li>
                                    </ul>
                                </div>
                                <div class="detail-btn" onclick="location.href='./detail.html'">
                                    <img src="img/click.png" style="width:30px">
                                </div>
                            </div>
                        </div>

                        <div class="blog-pagination property-pagination ">
                            <a href="#">1</a>
                            <a href="#">2</a>
                            <a href="#">3</a>
                            <a href="#" class="icon"><span class="arrow_right"></span></a>
                        </div>
                    </div>
                </div>


                
            </div>
        </div>
    </section>
    

    <!-- Footer Section Begin -->
    <!-- <footer include-html="footer.html"></footer> -->
    <jsp:include page="/WEB-INF/views/common/footer.jsp"/>
    
    <!-- <script>
        includeHTML();
    </script> -->
    
    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.magnific-popup.min.js"></script>
    <script src="js/mixitup.min.js"></script>
    <script src="js/jquery-ui.min.js"></script>
    <script src="js/jquery.nice-select.min.js"></script>
    <script src="js/jquery.slicknav.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/jquery.richtext.min.js"></script>
    <script src="js/image-uploader.min.js"></script>
    <script src="js/main.js"></script>
</body>

</html>