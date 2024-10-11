<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
	integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
	crossorigin="anonymous"></script>

<link rel="stylesheet" type="text/css"
	href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css" />
<script
	src="https://cdn.jsdelivr.net/npm/lazyload@2.0.0-rc.2/lazyload.js"></script>
<link rel="stylesheet" href="./css/bootstrap.min.css">
<script src="./js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet" href="./css/slick.css">
<script src="./js/slick.min.js"></script>
<script src="./js/jquery-3.6.0.min.js"></script>
<script src="./js/jquery-migrate-3.3.2.min.js"></script>
<link rel="stylesheet" href="./css/body.css">
<body>
	<div id="root">
		<div class="app">
			<div class="row">
				<h2>NETFLIX ONLOAD</h2>
				<div class="row__posters">
					<c:forEach var="item" items="${homes }">
						<div class="lazy row__poster row__posterLarge ">
							<a href="/asm/adminn/detail"
								onclick="event.preventDefault(); window.location.href='/asm/adminn/detail?id=${item.id}'">
								<c:if test="${not empty item.poster}">
									<img class="w-100 " style="height: 250px; object-fit: cover;"
										src="https://img.youtube.com/vi/${item.poster}/maxresdefault.jpg"
										alt="Card image">
								</c:if> <c:if test="${empty item.poster}">
									<img class="w-100 " style="height: 250px; object-fit: cover;"
										src="/asm/image/video/netflix.jpg" alt="Card image">
								</c:if>
							</a>
						</div>
					</c:forEach>
					<img class="lazy row__poster row__posterLarge"
						src="https://image.tmdb.org/t/p/original//obLBdhLxheKg8Li1qO11r2SwmYO.jpg"
						alt="Cobra Kai" /><img class="lazy row__poster row__posterLarge"
						src="https://image.tmdb.org/t/p/original//3NTAbAiao4JLzFQw6YxP1YZppM8.jpg"
						alt="Elite" /><img class="lazy row__poster row__posterLarge"
						src="https://image.tmdb.org/t/p/original//x2LSRK2Cm7MZhjluni1msVJ3wDF.jpg"
						alt="Stranger Things" /><img
						class="lazy row__poster row__posterLarge"
						src="https://image.tmdb.org/t/p/original//MoEKaPFHABtA1xKoOteirGaHl1.jpg"
						alt="Money Heist" /><img
						class="lazy row__poster row__posterLarge"
						src="https://image.tmdb.org/t/p/original//scZlQQYnDVlnpxFTxaIv2g0BWnL.jpg"
						alt="The Umbrella Academy" /><img
						class="lazy row__poster row__posterLarge"
						src="https://image.tmdb.org/t/p/original//Q1ZYG3kDS8iVIHOYOJ9NQmV0q7.jpg"
						alt="Haunted: Latin America" /><img
						class="lazy row__poster row__posterLarge"
						src="https://image.tmdb.org/t/p/original//sgxawbFB5Vi5OkPWQLNfl3dvkNJ.jpg"
						alt="Lupin" /><img class="lazy row__poster row__posterLarge"
						src="https://image.tmdb.org/t/p/original//yxMpoHO0CXP5o9gB7IfsciilQS4.jpg"
						alt="Chilling Adventures of Sabrina" /><img
						class="lazy row__poster row__posterLarge"
						src="https://image.tmdb.org/t/p/original//lqS90fU1IEHSbga7X6Gej5amBvR.jpg"
						alt="Castlevania" /><img
						class="lazy row__poster row__posterLarge"
						src="https://image.tmdb.org/t/p/original//e4aqizYQ8eeTGNZMq6WiFfqoZbz.jpg"
						alt="Ginny &amp; Georgia" /><img
						class="lazy row__poster row__posterLarge"
						src="https://image.tmdb.org/t/p/original//4Bph0hhnDH6dpc0SZIV522bLm4P.jpg"
						alt="Sex Education" /><img
						class="lazy row__poster row__posterLarge"
						src="https://image.tmdb.org/t/p/original//uBRpPFcYAYLM7V3x6x7bP3Ucumj.jpg"
						alt="Halston" /><img class="lazy row__poster row__posterLarge"
						src="https://image.tmdb.org/t/p/original//apbrbWs8M9lyOpJYU5WXrpFbk1Z.jpg"
						alt="Dark" /><img class="lazy row__poster row__posterLarge"
						src="https://image.tmdb.org/t/p/original//6USbtATMqFLkeafx3FV3wcGZTNo.jpg"
						alt="The Innocent" />
				</div>
			</div>
			<div class="row">
				<h2>Trending Now</h2>
				<div class="row__posters">
					<img class="lazy row__poster undefined"
						src="https://image.tmdb.org/t/p/original//6ELCZlTA5lGUops70hKdB83WJxH.jpg" /><img
						class="lazy row__poster undefined"
						src="https://image.tmdb.org/t/p/original//gUttUEqsrvaMlK5oL5TSQ54iE96.jpg" /><img
						class="lazy row__poster undefined"
						src="https://image.tmdb.org/t/p/original//ouOojiypBE6CD1aqcHPVq7cJf2R.jpg" /><img
						class="lazy row__poster undefined"
						src="https://image.tmdb.org/t/p/original//jedggylU3FyIN7XRAl9WY8mrT6H.jpg" /><img
						class="lazy row__poster undefined"
						src="https://image.tmdb.org/t/p/original//fPGeS6jgdLovQAKunNHX8l0avCy.jpg" /><img
						class="lazy row__poster undefined"
						src="https://image.tmdb.org/t/p/original//daXzoOWNBwSoG03RFh5tEqzl1sH.jpg" /><img
						class="lazy row__poster undefined"
						src="https://image.tmdb.org/t/p/original//inJjDhCjfhh3RtrJWBmmDqeuSYC.jpg" /><img
						class="lazy row__poster undefined"
						src="https://image.tmdb.org/t/p/original//egxe0rPverBETHzV6COXFGL4edC.jpg" /><img
						class="lazy row__poster undefined"
						src="https://image.tmdb.org/t/p/original//4YKkS95v9o9c0tBVA46xIn6M1tx.jpg"
						alt="Jupiter's Legacy" /><img class="lazy row__poster undefined"
						src="https://image.tmdb.org/t/p/original//sjxtIUCWR74yPPcZFfTsToepfWm.jpg"
						alt="The Bad Batch" /><img class="lazy row__poster undefined"
						src="https://image.tmdb.org/t/p/original//7prYzufdIOy1KCTZKVWpjBFqqNr.jpg" /><img
						class="lazy row__poster undefined"
						src="https://image.tmdb.org/t/p/original//6zbKgwgaaCyyBXE4Sun4oWQfQmi.jpg" /><img
						class="lazy row__poster undefined"
						src="https://image.tmdb.org/t/p/original//b0WmHGc8LHTdGCVzxRb3IBMur57.jpg"
						alt="The Falcon and the Winter Soldier" /><img
						class="lazy row__poster undefined"
						src="https://image.tmdb.org/t/p/original//xPpXYnCWfjkt3zzE0dpCNME1pXF.jpg" /><img
						class="lazy row__poster undefined"
						src="https://image.tmdb.org/t/p/original//pcDc2WJAYGJTTvRSEIpRZwM3Ola.jpg" /><img
						class="lazy row__poster undefined"
						src="https://image.tmdb.org/t/p/original//gPKcJzrbgs1670fOeKN1xQH9mNa.jpg" /><img
						class="lazy row__poster undefined"
						src="https://image.tmdb.org/t/p/original//gOvUJzah5i3DMf3mGUjqfcP05tp.jpg" /><img
						class="lazy row__poster undefined"
						src="https://image.tmdb.org/t/p/original//owOBJlzH3j3YHUbr3XqSH10CWzo.jpg" /><img
						class="lazy row__poster undefined"
						src="https://image.tmdb.org/t/p/original//8LHSDyRizQ4kQz5rEHPKyXPvMG3.jpg" /><img
						class="lazy row__poster undefined"
						src="https://image.tmdb.org/t/p/original//8z9qQkx7wA6FXpLV8Tiw9mfsRFK.jpg"
						alt="Shadow and Bone" />
				</div>
			</div>
			<div class="row">
				<h2>Top Rated</h2>
				<div class="row__posters">
					<img class="lazy row__poster undefined"
						src="https://image.tmdb.org/t/p/original//gNBCvtYyGPbjPCT1k3MvJuNuXR6.jpg" /><img
						class="lazy row__poster undefined"
						src="https://image.tmdb.org/t/p/original//iNh3BivHyg5sQRPP1KOkzguEX0H.jpg" /><img
						class="lazy row__poster undefined"
						src="https://image.tmdb.org/t/p/original//jtAI6OJIWLWiRItNSZoWjrsUtmi.jpg" /><img
						class="lazy row__poster undefined"
						src="https://image.tmdb.org/t/p/original//rSPw7tgCH9c6NqICZef4kZjFOQ5.jpg" /><img
						class="lazy row__poster undefined"
						src="https://image.tmdb.org/t/p/original//fQq1FWp1rC89xDrRMuyFJdFUdMd.jpg" /><img
						class="lazy row__poster undefined"
						src="https://image.tmdb.org/t/p/original//w2uGvCpMtvRqZg6waC1hvLyZoJa.jpg" /><img
						class="lazy row__poster undefined"
						src="https://image.tmdb.org/t/p/original//loRmRzQXZeqG78TqZuyvSlEQfZb.jpg" /><img
						class="lazy row__poster undefined"
						src="https://image.tmdb.org/t/p/original//poec6RqOKY9iSiIUmfyfPfiLtvB.jpg" /><img
						class="lazy row__poster undefined"
						src="https://image.tmdb.org/t/p/original//dIWwZW7dJJtqC6CgWzYkNVKIUm8.jpg" /><img
						class="lazy row__poster undefined"
						src="https://image.tmdb.org/t/p/original//Ab8mkHmkYADjU7wQiOkia9BzGvS.jpg" /><img
						class="lazy row__poster undefined"
						src="https://image.tmdb.org/t/p/original//TU9NIjwzjoKPwQHoHshkFcQUCG.jpg" /><img
						class="lazy row__poster undefined"
						src="https://image.tmdb.org/t/p/original//yeJhRNtE4XW2lOoVVFO9iuDr3AL.jpg" /><img
						class="lazy row__poster undefined"
						src="https://image.tmdb.org/t/p/original//xMIyotorUv2Yz7zpQz2QYc8wkWB.jpg" /><img
						class="lazy row__poster undefined"
						src="https://image.tmdb.org/t/p/original//88J6waYVTta8Qz3iX3qUeWNA5d5.jpg" /><img
						class="lazy row__poster undefined"
						src="https://image.tmdb.org/t/p/original//pcDc2WJAYGJTTvRSEIpRZwM3Ola.jpg" /><img
						class="lazy row__poster undefined"
						src="https://image.tmdb.org/t/p/original//suaEOtk1N1sgg2MTM7oZd2cfVp3.jpg" /><img
						class="lazy row__poster undefined"
						src="https://image.tmdb.org/t/p/original//qqHQsStV6exghCM7zbObuYBiYxw.jpg" /><img
						class="lazy row__poster undefined"
						src="https://image.tmdb.org/t/p/original//9guoVF7zayiiUq5ulKQpt375VIy.jpg" /><img
						class="lazy row__poster undefined"
						src="https://image.tmdb.org/t/p/original//uWVkEo9PWHu9algZsiLPi6sRU64.jpg" /><img
						class="lazy row__poster undefined"
						src="https://image.tmdb.org/t/p/original//pm0RiwNpSja8gR0BTWpxo5a9Bbl.jpg" />
				</div>
			</div>
			<div class="row">
				<h2>Action Movies</h2>
				<div class="row__posters">
					<img class="lazy row__poster undefined"
						src="https://image.tmdb.org/t/p/original//fPGeS6jgdLovQAKunNHX8l0avCy.jpg" /><img
						class="lazy row__poster undefined"
						src="https://image.tmdb.org/t/p/original//6ELCZlTA5lGUops70hKdB83WJxH.jpg" /><img
						class="lazy row__poster undefined"
						src="https://image.tmdb.org/t/p/original//6zbKgwgaaCyyBXE4Sun4oWQfQmi.jpg" /><img
						class="lazy row__poster undefined"
						src="https://image.tmdb.org/t/p/original//inJjDhCjfhh3RtrJWBmmDqeuSYC.jpg" /><img
						class="lazy row__poster undefined"
						src="https://image.tmdb.org/t/p/original//pcDc2WJAYGJTTvRSEIpRZwM3Ola.jpg" /><img
						class="lazy row__poster undefined"
						src="https://image.tmdb.org/t/p/original//xPpXYnCWfjkt3zzE0dpCNME1pXF.jpg" /><img
						class="lazy row__poster undefined"
						src="https://image.tmdb.org/t/p/original//7prYzufdIOy1KCTZKVWpjBFqqNr.jpg" /><img
						class="lazy row__poster undefined"
						src="https://image.tmdb.org/t/p/original//5Zv5KmgZzdIvXz2KC3n0MyecSNL.jpg" /><img
						class="lazy row__poster undefined"
						src="https://image.tmdb.org/t/p/original//jFINtstDUh0vHOGImpMAmLrPcXy.jpg" /><img
						class="lazy row__poster undefined"
						src="https://image.tmdb.org/t/p/original//z7HLq35df6ZpRxdMAE0qE3Ge4SJ.jpg" /><img
						class="lazy row__poster undefined"
						src="https://image.tmdb.org/t/p/original//mYM8x2Atv4MaLulaV0KVJWI1Djv.jpg" /><img
						class="lazy row__poster undefined"
						src="https://image.tmdb.org/t/p/original//ovggmAOu1IbPGTQE8lg4lBasNC7.jpg" /><img
						class="lazy row__poster undefined"
						src="https://image.tmdb.org/t/p/original//z8TvnEVRenMSTemxYZwLGqFofgF.jpg" /><img
						class="lazy row__poster undefined"
						src="https://image.tmdb.org/t/p/original//eTgQlyIQH0nA5BsmYpvCzSPAorg.jpg" /><img
						class="lazy row__poster undefined"
						src="https://image.tmdb.org/t/p/original//h9DIlghaiTxbQbt1FIwKNbQvEL.jpg" /><img
						class="lazy row__poster undefined"
						src="https://image.tmdb.org/t/p/original//6TPZSJ06OEXeelx1U1VIAt0j9Ry.jpg" /><img
						class="lazy row__poster undefined"
						src="https://image.tmdb.org/t/p/original//srYya1ZlI97Au4jUYAktDe3avyA.jpg" /><img
						class="lazy row__poster undefined"
						src="https://image.tmdb.org/t/p/original//y0SiXoTLQp93NbLQ4XhgVz18UAS.jpg" /><img
						class="lazy row__poster undefined"
						src="https://image.tmdb.org/t/p/original//lOSdUkGQmbAl5JQ3QoHqBZUbZhC.jpg" /><img
						class="lazy row__poster undefined"
						src="https://image.tmdb.org/t/p/original//9xeEGUZjgiKlI69jwIOi0hjKUIk.jpg" />
				</div>
			</div>
			<div class="row">
				<h2>Horror Movies</h2>
				<div class="row__posters">
					<img class="lazy row__poster undefined"
						src="https://image.tmdb.org/t/p/original//lkInRiMtLgl9u9xE0By5hqf66K8.jpg" /><img
						class="lazy row__poster undefined"
						src="https://image.tmdb.org/t/p/original//jFINtstDUh0vHOGImpMAmLrPcXy.jpg" /><img
						class="lazy row__poster undefined"
						src="https://image.tmdb.org/t/p/original//czHYg6LQ5926OL8wj5kC09pNR12.jpg" /><img
						class="lazy row__poster undefined"
						src="https://image.tmdb.org/t/p/original//fRrpOILyXuWaWLmqF7kXeMVwITQ.jpg" /><img
						class="lazy row__poster undefined"
						src="https://image.tmdb.org/t/p/original//54yrEMg3KeTbpr3kYpIGU04a9D5.jpg" /><img
						class="lazy row__poster undefined"
						src="https://image.tmdb.org/t/p/original//yuxdzbQHEecWGOvaXeEYVtIyAfn.jpg" /><img
						class="lazy row__poster undefined"
						src="https://image.tmdb.org/t/p/original//u5WUCO6irZoq27qbYYrtLUrCGDV.jpg" /><img
						class="lazy row__poster undefined"
						src="https://image.tmdb.org/t/p/original//y07caIA4yErsDOZ2IzfSDGzTz7B.jpg" /><img
						class="lazy row__poster undefined"
						src="https://image.tmdb.org/t/p/original//7KL4yJ4JsbtS1BNRilUApLvMnc5.jpg" /><img
						class="lazy row__poster undefined"
						src="https://image.tmdb.org/t/p/original//2F6zpkkMianLO9JRRvnujpW4bzp.jpg" /><img
						class="lazy row__poster undefined"
						src="https://image.tmdb.org/t/p/original//eqVgQwv8HfDN2tv4XWhqW5GryV4.jpg" /><img
						class="lazy row__poster undefined"
						src="https://image.tmdb.org/t/p/original//iID0at69rWzZOIarUIFrfDOFJA.jpg" /><img
						class="lazy row__poster undefined"
						src="https://image.tmdb.org/t/p/original//8rIoyM6zYXJNjzGseT3MRusMPWl.jpg" /><img
						class="lazy row__poster undefined"
						src="https://image.tmdb.org/t/p/original//7JENyUT8ABxcvrcijDBVpdjgCY9.jpg" /><img
						class="lazy row__poster undefined"
						src="https://image.tmdb.org/t/p/original//d2UxKyaJ5GgzuHaSsWinFfv3g6L.jpg" /><img
						class="lazy row__poster undefined"
						src="https://image.tmdb.org/t/p/original//buop8brXQ8gGiOPrVTxZZUqE8Oa.jpg" /><img
						class="lazy row__poster undefined"
						src="https://image.tmdb.org/t/p/original//9WlJFhOSCPnaaSmsrv0B4zA8iUb.jpg" /><img
						class="lazy row__poster undefined"
						src="https://image.tmdb.org/t/p/original//vxZaw8C5w4XlYEPtptzKJ7lBIFH.jpg" /><img
						class="lazy row__poster undefined"
						src="https://image.tmdb.org/t/p/original//vgLJBfNAUaR6u0NHkG8thTIiIvy.jpg" /><img
						class="lazy row__poster undefined"
						src="https://image.tmdb.org/t/p/original//ww7eC3BqSbFsyE5H5qMde8WkxJ2.jpg" />
				</div>
			</div>
			<div class="row">
				<h2>Romance Movies</h2>
				<div class="row__posters">
					<img class="lazy row__poster undefined"
						src="https://image.tmdb.org/t/p/original//jw0849O7WLarbYKJkA9WpRLeGKG.jpg" /><img
						class="lazy row__poster undefined"
						src="https://image.tmdb.org/t/p/original//6hgItrYQEG33y0I7yP2SRl2ei4w.jpg" /><img
						class="lazy row__poster undefined"
						src="https://image.tmdb.org/t/p/original//dUbtr5cXaCyFByz41ch806Omyj9.jpg" /><img
						class="lazy row__poster undefined"
						src="https://image.tmdb.org/t/p/original//kzIiKLccwuzD3qD5OHFyPIkiqEw.jpg" /><img
						class="lazy row__poster undefined"
						src="https://image.tmdb.org/t/p/original//u1wHUA0R48FH4WV3sGqjwx3aNZm.jpg" /><img
						class="lazy row__poster undefined"
						src="https://image.tmdb.org/t/p/original//997ToEZvF2Obp9zNZbY5ELVnmrW.jpg" /><img
						class="lazy row__poster undefined"
						src="https://image.tmdb.org/t/p/original//ize3ZieqSy0TCWljmVoEiy8fSFS.jpg" /><img
						class="lazy row__poster undefined"
						src="https://image.tmdb.org/t/p/original//2VnghbG2qWChcE6CdZBMDtDQKCF.jpg" /><img
						class="lazy row__poster undefined"
						src="https://image.tmdb.org/t/p/original//hQQTE285UQB1lLY1XiioQ77LYnC.jpg" /><img
						class="lazy row__poster undefined"
						src="https://image.tmdb.org/t/p/original//1eq896TCOEeN9Q8iTJL0n9u31Qf.jpg" /><img
						class="lazy row__poster undefined"
						src="https://image.tmdb.org/t/p/original//nN4Gs3vZAOJ1D6FRtrwbU9VGYwU.jpg" /><img
						class="lazy row__poster undefined"
						src="https://image.tmdb.org/t/p/original//gzycjJWGw04DF6C7IYOA1F0cWhc.jpg" /><img
						class="lazy row__poster undefined"
						src="https://image.tmdb.org/t/p/original//88J6waYVTta8Qz3iX3qUeWNA5d5.jpg" /><img
						class="lazy row__poster undefined"
						src="https://image.tmdb.org/t/p/original//y7b78soqvJq4aQ8G0Zt72inSQoE.jpg" /><img
						class="lazy row__poster undefined"
						src="https://image.tmdb.org/t/p/original//7IGKrY1f1KfwMipx9wZC4NRgIdF.jpg" /><img
						class="lazy row__poster undefined"
						src="https://image.tmdb.org/t/p/original//dIWwZW7dJJtqC6CgWzYkNVKIUm8.jpg" /><img
						class="lazy row__poster undefined"
						src="https://image.tmdb.org/t/p/original//2VnghbG2qWChcE6CdZBMDtDQKCF.jpg" /><img
						class="lazy row__poster undefined"
						src="https://image.tmdb.org/t/p/original//yY7kr7Rgvo8W0Kr3U0bMV8Zq1qM.jpg" /><img
						class="lazy row__poster undefined"
						src="https://image.tmdb.org/t/p/original//Aw07IupDF1ubyVNrcWwDPbnCQRP.jpg" /><img
						class="lazy row__poster undefined"
						src="https://image.tmdb.org/t/p/original//dyvN0x7kjfadYGDszWi18llr1ZY.jpg" />
				</div>
			</div>
			<div class="row">
				<h2>Documentaries Movies</h2>
				<div class="row__posters">
					<img class="lazy row__poster undefined"
						src="https://image.tmdb.org/t/p/original//xOukYlFEuiY9FZXd5kjWiigjBJA.jpg" /><img
						class="lazy row__poster undefined"
						src="https://image.tmdb.org/t/p/original//uO6ZUez70Twan92pqoV60T9kiGH.jpg" /><img
						class="lazy row__poster undefined"
						src="https://image.tmdb.org/t/p/original//hl02jzJ80MozdW71Naf5Ee2881n.jpg" /><img
						class="lazy row__poster undefined"
						src="https://image.tmdb.org/t/p/original//uILX4gGU9OqpndR7JXENn29MoEv.jpg" /><img
						class="lazy row__poster undefined"
						src="https://image.tmdb.org/t/p/original//slh9qCbyDcMN2rC9FiueZ6pR2fj.jpg" /><img
						class="lazy row__poster undefined"
						src="https://image.tmdb.org/t/p/original//3mzmeYYUENlILaXGzu3Uv7TCT90.jpg" /><img
						class="lazy row__poster undefined"
						src="https://image.tmdb.org/t/p/original//7OlCmUwpJzJepUaOZ0n6oiCbNMP.jpg" /><img
						class="lazy row__poster undefined"
						src="https://image.tmdb.org/t/p/original//kfLlBmKDLAdTZSpj8bzFEnnVh1c.jpg" /><img
						class="lazy row__poster undefined"
						src="https://image.tmdb.org/t/p/original//pgsxHZO2Tf7nHpRnBoQZitAPguA.jpg" /><img
						class="lazy row__poster undefined"
						src="https://image.tmdb.org/t/p/original//1Gf5YdhlJ1G7Tf7WkSRrs6ssZ3G.jpg" /><img
						class="lazy row__poster undefined"
						src="https://image.tmdb.org/t/p/original//4ftNxKONVuvs6189D2VayUq3SFL.jpg" /><img
						class="lazy row__poster undefined"
						src="https://image.tmdb.org/t/p/original//hDyoS3r1QT5AGAa48ipRojU3PH0.jpg" /><img
						class="lazy row__poster undefined"
						src="https://image.tmdb.org/t/p/original//cpZH1cytFcftuAgeaEOasL4xK3r.jpg" /><img
						class="lazy row__poster undefined"
						src="https://image.tmdb.org/t/p/original//dZ1sOBUIrgX4iIEKjo6GiQpUMiL.jpg" /><img
						class="lazy row__poster undefined"
						src="https://image.tmdb.org/t/p/original//oamFPL6EMqVNCfF152KiMfrWsXp.jpg" /><img
						class="lazy row__poster undefined"
						src="https://image.tmdb.org/t/p/original//bV7eAcBrYb57PwjpQ2ODT6VyFPd.jpg" /><img
						class="lazy row__poster undefined"
						src="https://image.tmdb.org/t/p/original//4LOxoeZWt5wr9mooxEZRFK96lDd.jpg" /><img
						class="lazy row__poster undefined"
						src="https://image.tmdb.org/t/p/original/null" /><img
						class="lazy row__poster undefined"
						src="https://image.tmdb.org/t/p/original//t0kHIE4ERtw3h4qwTSmzt5LyhRY.jpg" /><img
						class="lazy row__poster undefined"
						src="https://image.tmdb.org/t/p/original//69GY219MYBurtf8joA2okEa3x8I.jpg" />
				</div>
			</div>
		</div>
	</div>
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"
		integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
		crossorigin="anonymous"></script>
	<script src="https://code.jquery.com/jquery-migrate-3.3.2.min.js"
		integrity="sha256-Ap4KLoCf1rXb52q+i3p0k2vjBsmownyBTE1EqlRiMwA="
		crossorigin="anonymous"></script>
	<script type="text/javascript"
		src="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
	<script type="text/javascript">
		$(document).ready(function() {
			$(".row__posters").slick({
				dots : true,
				infinite : false,
				speed : 300,
				slidesToShow : 8,
				slidesToScroll : 4,
				dots : false,
				prevArrow : false,
				nextArrow : false,
			});
		});
		$("img.lazy").lazyload({
			effect : "fadeIn"
		});

		// Lấy giá trị tham số id từ URL
		const urlParams = new URLSearchParams(window.location.search);
		const videoID = urlParams.get('id');
		const shareID = urlParams.get('id');
	</script>
</body>
</html>