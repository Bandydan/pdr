$(document).ready(function(){

/* Переменная-флаг для отслеживания того, происходит ли в данный момент ajax-запрос. В самом начале даем ей значение false, т.е. запрос не в процессе выполнения */
var inProgress = false;
/* С какой статьи надо делать выборку из базы при ajax-запросе */
var startFrom = 3;

var config_cat = "<?php echo json_encode($config['categories']); ?>";

    /* Используйте вариант $('#more').click(function() для того, чтобы дать пользователю возможность управлять процессом, кликая по кнопке "Дальше" под блоком статей (см. файл index.php) */
    $(window).scroll(function() {

        /* Если высота окна + высота прокрутки больше или равны высоте всего документа и ajax-запрос в настоящий момент не выполняется, то запускаем ajax-запрос */
        if($(window).scrollTop() + $(window).height() >= $(document).height() && !inProgress) {

        $.ajax({
            /* адрес файла-обработчика запроса */
            //url: "http://pdr/index.php/Scrolling/works",
            url: "works",
            /* метод отправки данных */
            // type: "POST",
            //dataType: 'json',
            method: 'POST',
            /* данные, которые мы передаем в файл-обработчик */
            data: {"startFrom" : startFrom},
            /* что нужно сделать до отправки запрса */
            beforeSend: function() {
            /* меняем значение флага на true, т.е. запрос сейчас в процессе выполнения */
            inProgress = true;},

            error: function(){
            console.log("ajaxError");},

            /* что нужно сделать по факту выполнения запроса */
            }).done(function(data){
//console.log(data);
            /* Преобразуем результат, пришедший от обработчика - преобразуем json-строку обратно в массив */
            data = jQuery.parseJSON(data);
 console.log(config_cat);
            /* Если массив не пуст (т.е. статьи там есть) */
            if (data.length > 0) {

            /* Делаем проход по каждому результату, оказвашемуся в массиве,
            где в index попадает индекс текущего элемента массива, а в data - сам текст */
            $.each(data, function(index, data){

                var arrAllPhoto = [],
                    divSlider = document.createElement('div'),
                    divWrapSlider = document.createElement('div');

                for(var i=0; i < data.photo_before.length; i++){
                    arrAllPhoto.push(data.photo_before[i]);
                    arrAllPhoto.push(data.photo_after[i]);
                }

                divSlider.className = "slider";
                divWrapSlider.className = "wrapSlider";

                $.each(arrAllPhoto, function(index, value){
                    var div = document.createElement('div');
                    $(div).append($('<img />',{
                        class:'img-responsive',
                        src: value
                    }));
                   
                    $(divSlider).append(div);
                });
                

      
                $(".main").append($(divWrapSlider).append(divSlider)).append("<h3>" + data.category + "</h3><p>" + data.about + "</p>");

            $(".slider").each(function(i,item){
                if (!($(item).hasClass("slick-slider"))){
                    $(item).slick({
                        slidesToShow: 2,
                        slidesToScroll: 2,
                        arrows: true,
                        autoplay: true,
                        autoplaySpeed: 9000,
                        cssEase: 'linear'
                    }); 
                }
            });
 
            /* По факту окончания запроса снова меняем значение флага на false */
            inProgress = false;
            // Увеличиваем на 3 порядковый номер статьи, с которой надо начинать выборку из базы
            startFrom += 3;
            }});
        }
    });
});