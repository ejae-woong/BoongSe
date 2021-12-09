<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>kakao map</title>
</head>
<body>
	<h1>Araboza <span style="color:#C6A637">붕세권</span> </h1>
	<div id="map" style="width:800px;height:600px;"></div>

	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=9d40283e0f4e7438e21c267e5892be36"></script>
	<script>
	
		// 마커들이 표시될 위치입니다.
	    var MarkerPositions = [
	    {
	        content: '<div>영도대교잉어빵/2021년 2개 천원임 너무비쌈</div>', 
	        latlng: new kakao.maps.LatLng(35.09763,129.03564)
	    },
	    {
	        content: '<div>자갈치시장잉어빵</div>', 
	        latlng: new kakao.maps.LatLng(35.09749,129.02653)
	    },
	    {
	        content: '<div>잉어빵.부산 서구 동대신동. 미용실 건너편. 11월 말에 생겼음. 3개에 천 원.</div>', 
	        latlng: new kakao.maps.LatLng(35.10883,129.02017)
	    },
	    {
	        content: '<div>잉어빵/2021년</div>',
	        latlng: new kakao.maps.LatLng(35.11408,129.01998)
	    },
	    {
	        content: '<div>잉어빵/2021년</div>',
	        latlng: new kakao.maps.LatLng(35.09939,128.98307)
	    },
	    {
	        content: '<div>잉어빵을팔지만고래의꿈을꿉니다대학교옆이라줄이좀긴데긴만큼맛잇는거아닐까요/2021년</div>',
	        latlng: new kakao.maps.LatLng(35.10974,128.96189)
	    },
	    {
	        content: '<div>빅세일마트 맞은 편 황궁잉어빵/2021</div>',
	        latlng: new kakao.maps.LatLng(35.15381,129.00344)
	    },
	    {
	        content: '<div>잉어빵/2021년</div>',
	        latlng: new kakao.maps.LatLng(35.1465,129.00765)
	    },
	    {
	        content: '<div>잉어빵/2021년</div>',
	        latlng: new kakao.maps.LatLng(35.1545,129.03724)
	    },
	    {
	        content: '<div>대연동 국민은행옆건물 앞잉어빵/2021년</div>',
	        latlng: new kakao.maps.LatLng(35.12731,129.10283)
	    },
	    {
	        content: '<div>팥 슈크림 세개천원 존맛</div>',
	        latlng: new kakao.maps.LatLng(35.13803,129.10116)
	    },
	    {
	        content: '<div>수영구청 아래쪽, 정문 옆길따라 내려갈 것</div>',
	        latlng: new kakao.maps.LatLng(35.14587,129.11296)
	    },
	    {
	        content: '<div>잉어빵/2021년</div>',
	        latlng: new kakao.maps.LatLng(35.16845,129.11526)
	    },
	    {
	        content: '<div>개점 아침 10시 이후~11시, 폐점 저녁 8시 ~ 9시</div>',
	        latlng: new kakao.maps.LatLng(35.16958,129.06915)
	    },
	    {
	        content: '<div>잉어빵/2021년</div>',
	        latlng: new kakao.maps.LatLng(35.18105,129.06023)
	    },
	    {
	        content: '<div>잉어빵/2021년</div>',
	        latlng: new kakao.maps.LatLng(35.201,129.06094)
	    },
	    {
	        content: '<div>잉어빵/2021년</div>',
	        latlng: new kakao.maps.LatLng(35.19524,129.07906)
	    },
	    {
	        content: '<div>존맛 해물빵/2021년</div>',
	        latlng: new kakao.maps.LatLng(35.20346,129.07536)
	    },
	    {
	        content: '<div>슈크림, 팥잉어빵/2021년</div>',
	        latlng: new kakao.maps.LatLng(35.201,129.06094)
	    },
	    {
	        content: '<div>가격:3개천원/맛:팥,슈크림</div>',
	        latlng: new kakao.maps.LatLng(35.19166,129.09417)
	    },
	    {
	        content: '<div>버스정류장 옆</div>',
	        latlng: new kakao.maps.LatLng(35.20078,129.09827)
	    },
	    {
	        content: '<div>옷가게인데 앞에서 잉어빵 팝니다</div>',
	        latlng: new kakao.maps.LatLng(35.20103,129.10525)
	    },
	    {
	        content: '<div>신호등앞에 있습니당</div>',
	        latlng: new kakao.maps.LatLng(35.19417,129.10861)
	    },
	    {
	        content: '<div>할머니 께서 하시는 잉어빵집!!/2021년</div>',
	        latlng: new kakao.maps.LatLng(35.18724,129.10212)
	    },
	    {
	        content: '<div>잉어빵아주머니 등장</div>',
	        latlng: new kakao.maps.LatLng(35.18218,129.10414)
	    },
	    {
	        content: '<div>붕잉어빵/2021년</div>',
	        latlng: new kakao.maps.LatLng(35.16845,129.11526)
	    },
	    {
	        content: '<div>땅콩빵</div>',
	        latlng: new kakao.maps.LatLng(35.23107,129.08872)
	    },
	    {
	        content: '<div>팥 많아욧 오픈 시간은 모르겠지만 닫는 시간은 9시쯤이면 접으시는것 같습니다.</div>',
	        latlng: new kakao.maps.LatLng(35.23117,129.08996)
	    },
	    {
	        content: '<div>잉어빵/2021년</div>',
	        latlng: new kakao.maps.LatLng(35.23211,129.15538)
	    },
	    {
	        content: '<div>잉어빵/2021년</div>',
	        latlng: new kakao.maps.LatLng(35.2302,129.15534)
	    },
	    {
	        content: '<div>반송2동잉어빵/2017년</div>',
	        latlng: new kakao.maps.LatLng(35.2288,129.16049)
	    }
	    ];
	
		var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
		    mapOption = { 
		        center: new kakao.maps.LatLng(35.16382, 128.98378), // 지도의 중심좌표
		        level: 3 // 지도의 확대 레벨
		    };
		
		var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
	
		var imageSrc = 'https://w7.pngwing.com/pngs/285/550/png-transparent-taiyaki-wagashi-sweet-bean-paste-okonomiyaki-parfait-chocolate-food-parfait-adzuki-bean.png', // 마커이미지의 주소입니다    
		    imageSize = new kakao.maps.Size(36, 24), // 마커이미지의 크기입니다
		    imageOption = {offset: new kakao.maps.Point(27, 69)}; 
		// 마커이미지의 옵션입니다. 마커의 좌표와 일치시킬 이미지 안에서의 좌표를 설정합니다.
		    
		// 마커의 이미지정보를 가지고 있는 마커이미지를 생성합니다
		for (var i = 0; i < MarkerPositions.length; i++) {
			var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize, imageOption),
		    markerPosition = MarkerPositions[i].latlng; // 마커가 표시될 위치입니다
	
		    
		    
		// 마커를 생성합니다
		var marker = new kakao.maps.Marker({
		    position: markerPosition, 
		    image: markerImage // 마커이미지 설정 
		});
	
		    var infowindow = new kakao.maps.InfoWindow({
		        content: MarkerPositions[i].content // 인포윈도우에 표시할 내용
		    });
		    
		    kakao.maps.event.addListener(marker, 'mouseover', makeOverListener(map, marker, infowindow));
		    kakao.maps.event.addListener(marker, 'mouseout', makeOutListener(infowindow));
		    
		// 마커가 지도 위에 표시되도록 설정합니다
		marker.setMap(map); 
			
		}
		
		function makeOverListener(map, marker, infowindow) {
		    return function() {
		        infowindow.open(map, marker);
		    };
		}

		// 인포윈도우를 닫는 클로저를 만드는 함수입니다 
		function makeOutListener(infowindow) {
		    return function() {
		        infowindow.close();
		    };
		}
	
	</script>
	
</body>
</html>