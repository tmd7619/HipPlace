<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="/WEB-INF/views/common/header.jsp"/>
<body>
	
	<section class="breadcrumb-section spad set-bg" data-setbg="img/breadcrumb-bg.jpg">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb-text">
                        <h4>플레이스 등록</h4>
                        <div class="bt-option">
                            <a href="./index.html"><i class="fa fa-home"></i> Home</a>
                            <span>플레이스 등록</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Breadcrumb Section End -->

    <!-- Property Submit Section Begin -->
    <section class="property-submit-section spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="property-submit-form">
                        <form action="#">
                            
                            <div class="pf-title">
                                <h4>제목</h4>
                                <input type="text" placeholder="제목을 입력하세요">
                            </div>

                            <div class="pf-summernote">
                                <h4>내용 작성</h4>
                                <ul class="nav nav-tabs" role="tablist">
                                    <li class="nav-item">
                                        <a class="nav-link texteditor-switch" data-toggle="tab" href="#tabs-1" role="tab">Text</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link texteditor-switch active" data-toggle="tab" href="#tabs-2" role="tab">Visual</a>
                                    </li>
                                </ul>
                                <textarea class="texteditor-content" name="example"></textarea>
                            </div>
                            <div class="pf-title">
                                <h4>해시태그</h4>
                                <input type="text" placeholder=",로 구분">
                            </div>
                            <div class="pf-feature-image">
                                <h4>이미지 첨부</h4>
                                <div class="feature-image-content"></div>
                            </div>
                            <div class="pf-map">
                                <h4>위치</h4>
                                <div class="row">
                                    <div class="col-lg-4">
                                        <div class="map-inputs">
                                            <input type="text" placeholder="주소 입력">
                                        </div>
                                        <button type="button" class="site-btn">주소 검색</button>
                                    </div>
                                    <div class="col-lg-8">
                                        <div class="g-map">
                                            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d735515.5813275519!2d-80.41163541934742!3d43.93644386501528!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x882a55bbf3de23d7%3A0x3ada5af229b47375!2sMono%2C%20ON%2C%20Canada!5e0!3m2!1sen!2sbd!4v1583262687289!5m2!1sen!2sbd" height="245" style="border:0;" allowfullscreen=""></iframe>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>
	
	<jsp:include page="/WEB-INF/views/common/footer.jsp"/>
</body>
</html>