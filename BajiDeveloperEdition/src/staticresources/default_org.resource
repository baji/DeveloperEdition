* { margin: 0; padding: 0; }

ul {list-style: none;}
#wrapper {width:1000px;margin:0 auto;}
.clear { clear:both; }

/* Header */
#header {width:1000px;height:80px;}
#headerLogo {position:relative;top:30px;left:-5px;background:url(https://ap1.salesforce.com/resource/1361360618000/awanaLogo) no-repeat;width:131px;height:30px;}
#headerNavigation {position:relative;top:10px;left:150px;font-size:79.5%;font-family:Arial, Helvetica, sans-serif;}
#headerNavigation ul li {float:left;list-style:none;}
#headerNavigation ul li a {text-decoration:none;color:#6f87a1;padding:0 13px;border-left:1px solid #6f87a1;}
#headerNavigation ul li a:hover {text-decoration:underline;}
#headerNavigation ul li a.liFirst {border:none;}
#headerSearch {position:relative;top:-7px;left:780px;width:230px;height:30px;}
#headerSearch p {font-size:14px;color:#6f87a1;}
#headerSearch input {width:142px;height:18px;font-size:14px;color:#6f87a1;}
#headerSearch button {background:url(../images/header_searchButton.jpg) no-repeat;width:25px;height:24px;border:none;position:relative;top:-5px;left:2px;}
#headerSearch button span {display:none;outline:none;}

#mainNavigation {
	background:url(../images/nav_x.jpg) repeat-x;
	width:1000px;
	height:28px;
	margin-bottom:3px;
}

#dropdown, #dropdown ul{
     margin:0;
     padding:0;
     list-style-type:none;
     list-style-position:outside;
     position:relative;
     line-height:20px;
 }
 
 ul#dropdown a.top-level
 {
 	padding:0 16px;
 	background:transparent;
 	border:0;
 	font-weight: bold;
 	font-size:12px;
 }
 
 #dropdown a:link, #dropdown a:active, #dropdown a:visited{
    display:block;
    padding:0px 5px;
    color:#fff;
    text-decoration:none;
    background:#f98435;
    line-height:24px;
    font-size:12px;
 }

#dropdown a:hover{
    background-color:#feaf38;
}

#dropdown li{
    float:left;
    position:relative;
}
 
#dropdown ul {
    position:absolute;
    width:200px;
    top:100%;
    display:none;
}

#dropdown li ul a{
    width:200px;
    float:left;
}

#dropdown ul ul{
	top:auto;
	}

#dropdown li ul ul {
    left:180px;
    margin:0px 0 0 10px;
    }

#dropdown li:hover ul ul, #dropdown li:hover ul ul ul, #dropdown li:hover ul ul ul ul{
    display:none;
    }
#dropdown li:hover ul, #dropdown li li:hover ul, #dropdown li li li:hover ul, #dropdown li li li li:hover ul{
    display:block;
    }

/* Feature Headlines */
#featureHeadlines {background:url(../images/uicomp_featureheadlines.jpg) no-repeat;width:1000px;height:29px;margin:2px 0 15px 0;}

/* Main Content */
#mainContent { float:left; width:820px; height:500px; }
#banner1 {background:url(../images/uicomp_maincontent.jpg) no-repeat;width:820px;height:500px;}

#shop_by_club{width:820px;padding:15px 50px 0 50px;height:145px;background:url(../images/bg-homepg-scroller.png) center no-repeat;position:relative;}
#shop_by_club .title {font-weight:bold;font-size:16px;color:#d75026;margin-bottom:10px;}
#shop_by_club div.jcarousel-prev,
#shop_by_club div.jcarousel-next{position:absolute;width:11px;height:33px;display:block;cursor:pointer;}
#shop_by_club div.jcarousel-prev{background:url(../images/icn-scroll-prev.png) center no-repeat;top:68px;left:25px;}
#shop_by_club div.jcarousel-next{background:url(../images/icn-scroll-next.png) center no-repeat;top:68px;right:25px;}
#shop_by_club div.jcarousel-clip {width:875px;height:100px;z-index:2;overflow:hidden;position:relative;}
#shop_by_club div.jcarousel-list {width:875px;height:100px;z-index:1;overflow:hidden;position:relative;top:0;}
#shop_by_club li.jcarousel-item {float:left;width:124px;height:100px;border-right:1px solid #ffe191;}
#shop_by_club li.jcarousel-item a {display:block;width:124px;height:100px;text-align:center;}
#shop_by_club li.jcarousel-item div { color:#d75026; }
#shop_by_club li.jcarousel-item a img {display:block;text-decoration:none;border:none;margin-bottom:5px;}

/* Right Content */
#rightContent {float:left;margin-left:10px;width:170px;height:515px;}
#rightContent #login {margin-bottom:10px;}
#rightContent #login #loginHeader {background:url(../images/right_loginHeader.jpg) no-repeat;width:171px;height:40px;}
#rightContent #login #loginBody {background:#d0ecfb;padding:10px 0 10px 10px;}
#rightContent #login #loginBody p {color:#666;font-size:12px;margin:0}
#rightContent #login #loginBody p input {width:135px;height:15px;}
#rightContent #login #loginBody p span {font-size:10px;}
#rightContent #login #loginBody .usrEx {padding-bottom:10px;}
#rightContent #login #loginBody .fgtPwd {padding-bottom:10px;}
#rightContent #login #loginBody button {background:url(../images/right_loginButton.jpg) no-repeat;width:33px;height:16px;border:none;}
#rightContent #login #loginBody button span {display:none;}
#rightContent #login #loginBody span.createAccount {font-size:12px;position:relative;top:3px;}
#rightContent #login #loginBody a {color:#6f87a1;}
#rightContent #login #loginFooter {background:url(../images/right_loginFooter.jpg) no-repeat;width:171px;height:10px;}

#rightContent #onlineCatalog {background:url(../images/right_onlineCatalog.jpg) no-repeat;width:171px;height:144px;margin-bottom:12px;}
#rightContent #stayConnected {background:url(../images/right_stayConnected.jpg) no-repeat;width:147px;height:123px;margin-left:12px;}

/* Footer */
#footer {width:820px;}
#footer #footerNavigation {position:relative;top:-3px;left:3px;}
#footer #footerNavigation ul li {list-style:none; float:left;}
#footer #footerNavigation ul li a {padding:0 10px;margin:5px 0;color:#000;font-size:11px;text-decoration:none;border-left:1px solid #000;}
#footer #footerNavigation ul li a:hover {text-decoration:underline;}
#footer #footerNavigation ul li a.liFirst {border:none;}
#footerLogo { float:left; background:url(../images/footer_logo.jpg) no-repeat; width:117px; height:29px; margin:35px 10px 0 20px; }
#footerCopyright { float:left; width:490px; height:65px; font-size:10px; color:#666; margin-top:20px; }
#footerSiteLinks a {text-decoration:none; color:#000;}
#footerSiteLinks a:hover { text-decoration:underline; }
#footerStamps { float:left; background:url(../images/footer_stamps.jpg) no-repeat; width:131px; height:66px; margin:15px;}
