@charset "utf-8";
/* CSS Document */

#headerNavigation {
    width:665px;
}
#headerLogo a {
	height:30px;
	width:131px;
	display:block;
	text-decoration:none;
}
ul#dropdown > li > ul {
	top:28px !important;
}
ul#dropdown a.top-level {
    line-height: 28px;
}
#dropdown>li:last-child {
	background:url(../../images/nav-x-red.gif) 0 0 repeat-x;
	float:right;
}
.primaryNavLastChild {
	background:url(../../images/nav-x-red.gif) 0 0 repeat-x;
	float:right !important;
}
#dropdown>li:last-child a:after
{
	content:url(../../images/nav-cart.gif);
	vertical-align:sub;
} 
.primaryNavLastChild a:after
{
	content:url(../../images/nav-cart.gif);
	vertical-align:sub;
}
#header {
	height:99px;
	position:relative;
}
#headerLogo {
	position:absolute;
	top:35px;
}
#headerSearch {
	position:absolute;
	top:13px;
	left:788px;
}
#SimpleSearchForm label {
	text-transform:uppercase;
	color:#424243;
	font-size:13px;
}
#SimpleSearchForm button {
	display:none;
}
#searchinput {
	background:#fff url(../images/home/home-search-icon.gif) 128px 4px no-repeat;
	width:124px !important;
	height:25px !important;
	padding-right:26px;
	border:2px solid #4f4f50;
	-webkit-border-radius:4px;
	-moz-border-radius:4px;
	-ms-border-radius:4px;
	-o-border-radius:4px;
	border-radius:4px;
}
#headerSearch p {
	color:#424243;
	font-size:13px;
	text-transform:uppercase;
}
#headerLogin {
	position:absolute;
	top:47px;
	right:0;
}
	#headerLogin input {
		height:23px;
		background:#fff;
		border:1px solid #424243;
		-webkit-border-radius:3px;
		-moz-border-radius:3px;
		-ms-border-radius:3px;
		-o-border-radius:3px;
		border-radius:3px;
	}
#headerun,
#headerpassword {
	color:#424243;
}
#headerLogin input#headerun {
	background-image:url(../images/home/user-name-txt.gif);
	background-position:center center;
	background-repeat:no-repeat;
	width:121px;
}
#headerLogin input#headerpassword {
	background-image:url(../images/home/art-login-txt.gif);
	background-position:center center;
	background-repeat:no-repeat;
	width:94px;
}
#headerNavigation ul li a {
	border:0;
	color:#424243;
	padding:0 12px;
}
#headerNavigation {
	position:absolute;
	left:175px;
	top:41px;
}
#formLinks {
	text-align:right;
	margin-top:3px;
	font-size:11px;
}
	#formLinks a {
		color:#424243;
	}





#dropdown > li:last-child a:after {
	line-height:0;
}
#mainNavigation {
	background: #15b5dc; /* Old browsers */
	background: -moz-linear-gradient(top,  #15b5dc 0%, #19a3d8 100%); /* FF3.6+ */
	background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,#15b5dc), color-stop(100%,#19a3d8)); /* Chrome,Safari4+ */
	background: -webkit-linear-gradient(top,  #15b5dc 0%,#19a3d8 100%); /* Chrome10+,Safari5.1+ */
	background: -o-linear-gradient(top,  #15b5dc 0%,#19a3d8 100%); /* Opera 11.10+ */
	background: -ms-linear-gradient(top,  #15b5dc 0%,#19a3d8 100%); /* IE10+ */
	background: linear-gradient(to bottom,  #15b5dc 0%,#19a3d8 100%); /* W3C */
	filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#15b5dc', endColorstr='#19a3d8',GradientType=0 ); /* IE6-9 */
}
.primaryNavLastChild,
#dropdown > li:last-child {
	width:57px;
	padding-right:35px;
	text-align:center;
	text-transform:uppercase;
	background: #ff9458; /* Old browsers */
	background: -moz-linear-gradient(top,  #ff9458 0%, #fe874d 100%); /* FF3.6+ */
	background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,#ff9458), color-stop(100%,#fe874d)); /* Chrome,Safari4+ */
	background: -webkit-linear-gradient(top,  #ff9458 0%,#fe874d 100%); /* Chrome10+,Safari5.1+ */
	background: -o-linear-gradient(top,  #ff9458 0%,#fe874d 100%); /* Opera 11.10+ */
	background: -ms-linear-gradient(top,  #ff9458 0%,#fe874d 100%); /* IE10+ */
	background: linear-gradient(to bottom,  #ff9458 0%,#fe874d 100%); /* W3C */
	filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#ff9458', endColorstr='#fe874d',GradientType=0 ); /* IE6-9 */
}
	.primaryNavLastChild a:after,
	#dropdown > li:last-child a:after {
		content:url(https://ap1.salesforce.com/resource/1361447734000/shoppingCart);
		position:absolute;
		top:1px;
		left:46px;
	}
#dropdown a:link,
#dropdown a:active,
#dropdown a:visited {
	background:#1ba4d8;
}
ul#dropdown li a.top-level {
	padding:0 6px;
}
#headerNavigation ul li a {
	border:0;
	color:#424243;
	padding:0 12px;
}
#headerNavigation {
	left:116px;
}
@media screen and (min-width: 768px) and (max-width: 1024px) {
	#dropdown > li > a {
		padding:0 7px !important;
	}
}