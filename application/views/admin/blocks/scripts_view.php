<!doctype html>
<html lang="en">

<head>
        <meta charset="utf-8"/>
        <title>PDR Admin Panel</title>
        
        <link rel="stylesheet" href="/assets/css/layout.css" type="text/css" media="screen" />
        <link href="/assets/css/button.css" rel="stylesheet">
        <!--[if lt IE 9]>
        <link rel="stylesheet" href="css/ie.css" type="text/css" media="screen" />
        <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->
        <script type="text/javascript" src="/assets/js/ckeditor/ckeditor.js"></script>
        <script src="/assets/js/jquery-1.11.3.js" type="text/javascript"></script>
        <script src="/assets/js/hideshow.js" type="text/javascript"></script>
        <script src="/assets/js/jquery.tablesorter.min.js" type="text/javascript"></script>
        <script type="text/javascript" src="/assets/js/jquery.equalHeight.js"></script>
        <script type="text/javascript">
        $(document).ready(function() 
        { 
          $(".tablesorter").tablesorter(); 
         } 
        );
        $(document).ready(function() {

        //When page loads...
        $(".tab_content").hide(); //Hide all content
        $("ul.tabs li:first").addClass("active").show(); //Activate first tab
        $(".tab_content:first").show(); //Show first tab content

        //On Click Event
        $("ul.tabs li").click(function() {

                $("ul.tabs li").removeClass("active"); //Remove any "active" class
                $(this).addClass("active"); //Add "active" class to selected tab
                $(".tab_content").hide(); //Hide all tab content

                var activeTab = $(this).find("a").attr("href"); //Find the href attribute value to identify the active tab + content
                $(activeTab).fadeIn(); //Fade in the active ID content
                return false;
                });
                });
        </script>
        <script type="text/javascript">
                $(function(){
                $('.column').equalHeight();
                });
        </script>

</head>

<body>
