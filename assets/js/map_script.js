function initialize(){
  
var jsonResponce = [
		{
	  	"name":"Garage",
			"address":"12345 Украина, Харьков, Пллощадь Конституции, 18"
	  },

];

// запрос выполянющий геокодинг
function xhr(pos,callback,i){
	var response,
		  xhr = new XMLHttpRequest();
	xhr.open('GET', '//maps.googleapis.com/maps/api/geocode/json?address='+pos+'&sensor=false&language=ru', true);
	xhr.send();
  xhr.onreadystatechange = function() { 
  	if (xhr.readyState===4 && xhr.status===200){
			callback(JSON.parse(xhr.responseText),i);    
	  }
	}
}
// присваивает обектам еще одно поле с координатами
function addPos(pos,i){
  	jsonResponce[i].latLng = pos.results[0].geometry.location;  
		addMarker(i);
     
  }
//добывляем маркер на карту
function addMarker(i){
	var marker = new google.maps.Marker({
    	map: map,
    	position: jsonResponce[i].latLng,
   		title: jsonResponce[i].name
   });
   addMarkerInfoWin(marker,i);
}
// добавляем информационное окно маркеру
function addMarkerInfoWin(marker,i){
  google.maps.event.addListener(marker, 'click', function() {
    infoWindow.setContent('<div> Информация: '+jsonResponce[i].name+'</br>'+jsonResponce[i].address+'</div>');
    infoWindow.open(map,marker);
  });
};
// начальные координаты
var myLatLng = {lat: 50.000, lng: 36.250};  
// создаем карту
var map = new google.maps.Map(document.getElementById('map'), {
   center: myLatLng,
   scrollwheel: true,
   zoom: 12 //приближение карты
});
//объявляю глобальный инфовиндов для того чтобы одновременно было открыто только одно инфо
var infoWindow = new google.maps.InfoWindow;
//клик по карте для закрытия инфо
google.maps.event.addListener(map, 'click', function() {
infoWindow.close();
});
// перебираем обекты имен и явок для добавления им координат
for(var i = 0; i < jsonResponce.length; i++){
  xhr(jsonResponce[i].address,addPos,i);    
};
}