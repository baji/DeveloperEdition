.outlinemenu{
position: absolute; /*leave this alone*/
display: none; /*leave this alone*/
width: 180px; /*default width of menu*/
border: 1px solid black;
overflow-x: hidden;
}

.outlinemenu ul{
list-style-type: none;
margin: 0;
padding: 0;
}

.outlinemenu ul li a{
background: white;
font: bold 13px "Lucida Grande", "Trebuchet MS", Verdana, Helvetica, sans-serif;
color: #00014e;
display: block;
width: auto;
padding: 3px 0;
padding-left: 5px;
text-decoration: none;
border-bottom: 1px solid #B5B5B5;
}

.outlinemenu ul li a:visited, .outlinemenu ul li a:active{
color: #00014e;
}

.outlinemenu ul li a:hover{
color: black;
background: #ffffcb;
}

/* Holly Hack for IE \*/
* html .outlinemenu li {height: 1%; }
* html .outlinemenu li a { height: 1%; }
/* End */