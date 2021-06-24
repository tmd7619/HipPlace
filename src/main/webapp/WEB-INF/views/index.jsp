<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="zxx">

<head>
<!-- <script src="js/includeHTML.js"></script> -->
<!-- Js Plugins -->

<style>
.bt {
	border-top-left-radius: 5px;
	border-bottom-left-radius: 5px;
	border-top-right-radius: 5px;
	border-bottom-right-radius: 5px;
	margin-right: -4px;
}

.bt {
	border: 1px solid #d41800;
	background-color: rgba(0, 0, 0, 0);
	color: #d41800;
	padding: 5px;
}

.bt:hover {
	color: #ffffff;
	background-color: #d41800;
}
</style>


</head>
<body>
	<jsp:include page="/WEB-INF/views/common/header.jsp"/>

	<!-- Search Section Begin -->
	<section class="search-section spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-7">
					<div class="section-title">
						<h4>힙플레이스 검색</h4>
					</div>
				</div>
				<div class="col-lg-5">
					<div class="change-btn">
						<div class="cb-item" onclick="javascript:show_layer('1')">
							<label for="cb-rent" class="active"> 단일 검색 <input
								type="radio" id="cb-rent">
							</label>
						</div>
						<div class="cb-item" onclick="javascript:show_layer('2')">
							<label for="cb-sale"> 주소 검색 <input type="radio"
								id="cb-sale">
							</label>
						</div>
					</div>
				</div>

			</div>

			<div class="row">
				<form action="#" class="filter-form">
					<button type="button" class="bt">#삼각지</button>
				</form>

				<div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div>

				<form action="#" class="filter-form">
					<button type="button" class="bt">#삼각지</button>
				</form>

				<div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div>

				<form action="#" class="filter-form">
					<button type="button" class="bt">#삼각지</button>
				</form>

				<div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div>

				<form action="#" class="filter-form">
					<button type="button" class="bt">#삼각지</button>
				</form>

				<div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div>

				<form action="#" class="filter-form">
					<button type="button" class="bt">#삼각지</button>
				</form>

				<div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div>

				<form action="#" class="filter-form">
					<button type="button" class="bt">#삼각지</button>
				</form>

				<div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div>

				<form action="#" class="filter-form">
					<button type="button" class="bt">#삼각지</button>
				</form>

				<div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div>

				<form action="#" class="filter-form">
					<button type="button" class="bt">#삼각지</button>
				</form>

				<div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div>

				<form action="#" class="filter-form">
					<button type="button" class="bt">#삼각지</button>
				</form>

				<div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div>

				<form action="#" class="filter-form">
					<button type="button" class="bt">#삼각지</button>
				</form>
			</div>


			<br></br>
			<div class="search-form-content" id="divInput1">
				<form action="./table.html" class="filter-form">

					<input type="text" placeholder="힙플레이스 검색">
					<button type="text" id="mainButton">검색</button>
				</form>
			</div>

			<div class="container" id="divInput2" style="display: none;">
				<div class="row">
					<div class="col-lg-12">
						<div class="property-submit-form">
							<form action="">
								<div class="pf-map">
									<h4>힙플레이스 N차 검색</h4>
									<div class="row">
										<div class="col-lg-3">
											<div class="map-inputs">
												<select class="sm-width">
													<option value="">인원수&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;</option>
													<option value="">1</option>
													<option value="">2</option>
													<option value="">3</option>
													<option value="">4</option>
												</select>
											</div>

										</div>
										<div class="col-lg-3">
											<select class="sm-width">
												<option value="">n차&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;</option>
												<option value="">1</option>
												<option value="">2</option>
												<option value="">3</option>
												<option value="">4</option>
											</select>

										</div>
										<div class="col-lg-3">
											<select class="sm-width">
												<option value="">분야&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;</option>
												<option value="">음식점</option>
												<option value="">카페</option>
												<option value="">미술관</option>
												<option value="">박물관</option>
											</select>

										</div>
										<div class="col-lg-3">
											<button type="button" class="site-btn"
												onclick="">검색</button><!-- location.href='./searchResult.html' -->
										</div>
										<!-- <div class="col-lg-12">
                                        <button style="margin-top: 30px;" type="button" class="site-btn">검색</button>
                                    </div>-->
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
			<!--        <div class="search-form-content" id="divInput2" style="display:none;">
            <form action="#" class="filter-form">
                
                <input type="text" placeholder="힙플레이스 검색2">
                <input type="text" placeholder="힙플레이스 검색2">
                <input type="text" placeholder="힙플레이스 검색2">
                <button type="button" id="mainButton">검색</button>
            </form>
        </div>
-->

			<div class="more-option">
				<div class="accordion" id="accordionExample">
					<div class="card">
						<div id="collapseOne" class="collapse"
							data-parent="#accordionExample">
							<div class="card-body">
								<div class="mo-list">
									<div class="ml-column">
										<label for="air">Air conditioning <input
											type="checkbox" id="air"> <span class="checkbox"></span>
										</label> <label for="lundry">Laundry <input type="checkbox"
											id="lundry"> <span class="checkbox"></span>
										</label> <label for="refrigerator">Refrigerator <input
											type="checkbox" id="refrigerator"> <span
											class="checkbox"></span>
										</label> <label for="washer">Washer <input type="checkbox"
											id="washer"> <span class="checkbox"></span>
										</label>
									</div>
									<div class="ml-column">
										<label for="barbeque">Barbeque <input type="checkbox"
											id="barbeque"> <span class="checkbox"></span>
										</label> <label for="lawn">Lawn <input type="checkbox"
											id="lawn"> <span class="checkbox"></span>
										</label> <label for="sauna">Sauna <input type="checkbox"
											id="sauna"> <span class="checkbox"></span>
										</label> <label for="wifi">Wifi <input type="checkbox"
											id="wifi"> <span class="checkbox"></span>
										</label>
									</div>
									<div class="ml-column">
										<label for="dryer">Dryer <input type="checkbox"
											id="dryer"> <span class="checkbox"></span>
										</label> <label for="microwave">Microwave <input
											type="checkbox" id="microwave"> <span
											class="checkbox"></span>
										</label> <label for="pool">Swimming Pool <input
											type="checkbox" id="pool"> <span class="checkbox"></span>
										</label> <label for="window">Window Coverings <input
											type="checkbox" id="window"> <span class="checkbox"></span>
										</label>
									</div>
									<div class="ml-column last-column">
										<label for="gym">Gym <input type="checkbox" id="gym">
											<span class="checkbox"></span>
										</label> <label for="shower">OutdoorShower <input
											type="checkbox" id="shower"> <span class="checkbox"></span>
										</label> <label for="tv">Tv Cable <input type="checkbox"
											id="tv"> <span class="checkbox"></span>
										</label>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Search Section End -->

	<!-- Hero Section Begin -->
	<section class="hero-section">
		<div class="container">
			<div class="hs-slider owl-carousel">
				<div class="hs-item set-bg" data-setbg="img/hero/hero-1.jpg">
					<div class="row">
						<div class="col-lg-12">
							<div class="hc-inner-text">
								<div class="hc-text">
									<h4>어프로치</h4>
									<div class="label">#성수동</div>
									<div class="label">#커피</div>
									<div class="label">#용리단길</div>
									<div class="label">#삼각지</div>
									<div class="label">#삼각지</div>
									<div class="label">#삼각지</div>
									<div class="label">#삼각지</div>
									<div class="label">#삼각지</div>
									<div class="label">#삼각지</div>
									<div class="label">#삼각지</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="hs-item set-bg" data-setbg="img/hero/hero-2.jpg">
					<div class="row">
						<div class="col-lg-12">
							<div class="hc-inner-text">
								<div class="hc-text">
									<h4>쿼츠커피</h4>
									<div class="label">#삼각지</div>
									<div class="label">#스페셜티</div>
									<div class="label">#삼각지</div>
									<div class="label">#삼각지</div>
									<div class="label">#삼각지</div>
									<div class="label">#삼각지</div>
									<div class="label">#삼각지</div>
									<div class="label">#삼각지</div>
									<div class="label">#삼각지</div>
									<div class="label">#삼각지</div>
									<div class="label">#삼각지</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="hs-item set-bg" data-setbg="img/hero/hero-3.jpg">
					<div class="row">
						<div class="col-lg-12">
							<div class="hc-inner-text">
								<div class="hc-text">
									<h4>베르트</h4>
									<div class="label">#와인바</div>
									<div class="label">#홈메이드</div>
									<div class="label">#분위기</div>
									<div class="label">#삼각지</div>
									<div class="label">#삼각지</div>
									<div class="label">#삼각지</div>
									<div class="label">#삼각지</div>
									<div class="label">#삼각지</div>
									<div class="label">#삼각지</div>
									<div class="label">#삼각지</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<!-- Hero Section End -->
	<jsp:include page="/WEB-INF/views/common/footer.jsp"/>

<!-- 	<script>
		includeHTML();
	</script> -->

	<script type="text/javascript">
		// Login 전환
		function show_layer(div_name) {

			document.all.divInput1.style.display = "none";
			document.all.divInput2.style.display = "none";

			switch (div_name) {
			case '1':
				document.all.divInput1.style.display = "";
				break;
			case '2':
				document.all.divInput2.style.display = "";
				break;
			}
		}
	</script>


</body>

</html>