@charset "utf-8";
/* CSS Document */

#dropdown, #dropdown ul {
	z-index:50;
}
a img { border:0; }
#contentBox a:link    { color: #00539B }
#contentBox a:visited { color: #CA5B1A }
#contentBox a:hover { color: #888888 } 
#contentBox a:active { color: #17a4b1 } 
#contentBox a { text-decoration: none; }
#contentBox {
	width:1000px;
	font-size:12px;
	position:relative;
}
#contentBox blockquote {
	margin:16px 40px;
	padding:0;
}
#contentBox strong {
	font-weight:bold;
}
#contentBox blockquote {
	margin:12px 40px;
	padding:0;
}
#contentBox em {
	font-style:italic;
}
#contentBox ul {
	margin:12px 0;
	padding:0 0 0 40px;
	list-style:disc;
}
#contentBox ol {
	margin:12px 0;
	padding:0 0 0 40px;
	list-style:decimal;
}
#contentBox p {
	margin:11px 0;
	padding:0;
}
.head1,
.head2 {
	font-family: Arial, Helvetica, sans-serif;
	font-size: 16px;
	line-height: 18px;
	font-weight: bold;
	color: #3a3a3a;
}
.subhead1,
.subhead2 {
	font-family: Arial, Helvetica, sans-serif;
	font-size: 14px;
	line-height: 16px;
	font-weight: bold;
	color: #3a3a3a;
}
.last {
	clear:both;
	padding:0;
	margin:0;
	width:0;
	height:0;
}
.thankyou {
	height:520px;
}
.thankyou #mainCopy {
	font-family:Arial, Helvetica, sans-serif;
	font-size:14px;
	color:#3f4852;
	position:absolute;
	top:119px;
	left:457px;
}
	.thankyou #mainCopy ul {
		margin:0;
	}
.thankyou #tyIMG {
	position:absolute;
	top:19px;
	left:134px;
}
.thankyou #spanishVideoBTN {
	display:block;
	width:246px;
	height:33px;
	text-indent:-9000px;
	overflow:hidden;
	background:url(../images/inquiry/spanish-video-btn.gif) 0 0 no-repeat;
}
.thankyou #spanishVideoBTN:hover {
	background:url(../images/inquiry/spanish-video-btn.gif) 0 -33px no-repeat;
}
.wrapper #inquiryHeader {
	width:1000px;
	height:205px;
	position:relative;
	background:url(https://ap1.salesforce.com/resource/1361448445000/awanaHeader) 0 0 no-repeat;
	color:#3f4852;
}
#homeschool .wrapper #inquiryHeader {
	background:url(../images/inquiry/next-steps-bg-homeschool.jpg) 0 0 no-repeat;
	height:226px;
}
#homeschoolFAQ {
	position:absolute;
	top:189px;
	left:397px;
}
.spanish #inquiryHeader {
	background:url(../images/inquiry/bienvenido.jpg) 0 0 no-repeat;
}
.wrapper #headerCopy {
	position:absolute;
	top:80px;
	left:45px;
	width:520px;
}
#homeschool .wrapper #headerCopy {
	top:68px;
}
.spanish #headerCopy {
	width:565px;
}
	.wrapper #headerCopy p {
		margin:4px 0;
	}
.wrapper p.steps {
	padding-left:18px !important;
}
.wrapper #main {
	margin-left:25px;
}
.landing #landingPage {
	position:relative;
	width:1000px;
	height:616px;
	background:url(../images/inquiry/landing-page-bg.jpg) 0 0 no-repeat;
}
.spanish #landingPage {
	background:url(../images/inquiry/admira-sombroso.jpg) 0 0 no-repeat;
}
.landing #mainVideo {
	position:absolute;
	top:188px;
	left:62px;
}
.spanish #landingPage #mainVideo {
	top:194px;
}
.landing #mainCopy {
	position:absolute;
	top:176px;
	left:585px;
	width:380px;
	color:#3f4852;
}
	.landing #mainCopy ul {
		margin:0;
	}
	.spanish #landingPage #mainCopy ul {
		padding-left:16px;
	}
	.landing #mainCopy p {
		padding:0;
		margin:4px 0;
	}
.spanish #landingPage #mainCopy {
	top:161px;
}
.landing .noMargin {
	margin:0;
}
.landing #alumniStudyBTN {
	width:260px;
	height:33px;
	margin-left:60px;

}
.spanish #landingPage #alumniStudyBTN {
	width:341px;
	margin-left:0;
}
	.landing #alumniStudyBTN a {
		display:block;
		width:260px;
		height:33px;
		text-indent:-9000px;
		overflow:hidden;
		background:url(../images/inquiry/alumni-study-btn.png) 0 0 no-repeat;
	}
	.spanish #landingPage #alumniStudyBTN a {
		background:url(../images/inquiry/spanish-alumni-study-btn.png) 0 0 no-repeat;
		width:341px;
		margin-left:0;
	}
	.landing #alumniStudyBTN a:hover,
	.spanish #landingPage #alumniStudyBTN a:hover {
		background-position:0 -33px;
	}
.landing #overviewTourBTN {
	width:260px;
	height:33px;
	margin-left:60px;
}
.spanish #landingPage #overviewTourBTN {
	width:341px;
	height:33px;
	margin-left:0;
}
	.landing #overviewTourBTN a {
		display:block;
		width:260px;
		height:33px;
		text-indent:-9000px;
		overflow:hidden;
		background:url(../images/inquiry/overview-tour-btn.png) 0 0 no-repeat;
	}
	.spanish #landingPage #overviewTourBTN a {
		background:url(../images/inquiry/spanish-overview-tour-btn.png) 0 0 no-repeat;
		width:341px;
		margin-left:0;
	}
	.landing #overviewTourBTN a:hover,
	.spanish #landingPage #overviewTourBTN a:hover {
		background-position:0 -33px;
	}
.landing a {
	color:#3f4852 !important;
	text-decoration:underline !important;
}
.landing ul {
	padding-left:35px;
}


#mainDiv {
	margin:15px;
}
#mainDiv #frmInquiry input[type="text"],
#mainDiv textarea,
#mainDiv select {
	padding:2px;
	background-color: #f6f6f6;
	border:solid 1px #b2b2b2;
	font: 13px Verdana, Arial, Helvetica, sans-serif;
	margin-top:2px;
	margin-bottom:2px;
}
#mainDiv #frmInquiry input[type="text"]:focus,
#mainDiv textarea:focus,
#mainDiv select:focus {
	padding:2px;
	background-color: #e8e3b0;
	border:solid 1px #9b9451;
	font-size: 13px;
	margin-top:2px;
	margin-bottom:2px;
}
#mainDiv #frmInquiry input[type="submit"] {
	font-weight:bold;
}
#mainDiv #frmInquiry input {
	overflow:auto;
}
#mainDiv hr {
	border: 0;
	height:1px;
	color:#ccc;
	background-color:#ccc;
}
#mainDiv .hiddenAddress,
#mainDiv #finalCheck {
	display:none;
}
#mainDiv #state {
	width:160px;
}
#mainDiv #street {
	width:494px;
}
#mainDiv #finalCheck {
	display:none;
	color:#b22222;
}
#mainDiv #00N50000001Jw2X {
	cursor:pointer;
}
#mainDiv #fcIMG {
	vertical-align:middle;
}
#mainDiv .error-messages {
	color:#b22222;
	padding:4px;
	font-weight:bold;
	font-family:Verdana;
	font-size:9px;
}
#mainDiv #errorsTXT {
	color:#b22222;
	padding:4px;
}
#mainDiv .title {
	padding-left:12px;
	padding-right:12px;
	padding-bottom:14px;
	font-size:18px;
	font-weight:bold;
}
#mainDiv .row-label {
	width:200px;
	padding:4px;
	font-size:12px;
	font-weight:bold;
	vertical-align:top;
	color:#333;
}
#mainDiv .cell-label {
	vertical-align:bottom;
}
#mainDiv .row-spacer {
	padding:5px;
}
#mainDiv .wide-input {
	width:460px;
}
#mainDiv .reqField {
	background-color:#f00;
	color:#f00;
	font-size:16px;
	font-family:Arial Narrow;
}
#mainDiv .selections {
	vertical-align:top;
	width:170px;
}
#mainDiv .singleSelects {
	width:160px;
}
#mainDiv #main td {
	width:245px;
}
#mainDiv .radioBTN {
	line-height:10px;
}
.displayNone {
	display:none;
}