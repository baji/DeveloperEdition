/*
    ColorBox Core Style
    The following rules are the styles that are consistant between themes.
    Avoid changing this area to maintain compatability with future versions of ColorBox.
*/
#colorbox, #cboxOverlay, #cboxWrapper{position:absolute; top:0; left:0; z-index:9999; overflow:hidden;}
#cboxOverlay{position:fixed; width:100%; height:100%;}
#cboxMiddleLeft, #cboxBottomLeft{clear:left;}
#cboxContent{position:relative; overflow:hidden;}
#cboxLoadedContent{overflow:auto;}
#cboxLoadedContent iframe{display:block; width:100%; height:100%; border:0;}
#cboxTitle{margin:0;}
#cboxLoadingOverlay, #cboxLoadingGraphic{position:absolute; top:0; left:0; width:100%;}
#cboxPrevious, #cboxNext, #cboxClose, #cboxSlideshow{cursor:pointer;}

/* 
    Example user style
    The following rules are ordered and tabbed in a way that represents the
    order/nesting of the generated HTML, so that the structure easier to understand.
*/
#cboxOverlay{background:#555;}

.colorboxDialogHeader {width:auto;height:45px;background:#ffc324;margin:20px;-moz-border-radius:8px;-webkit-border-radius:8px;}
.colorboxDialogHeader h3 {padding:13px 0 0 15px;color:#fff;font-size:16px;font-weight:bold;}
.colorboxDialogHeader #colorboxDialogCloseButton {position:relative;float:right;cursor:pointer;top:-20px;right:10px;width:52px;height:20px;background:url(../images/buttons/btn-close-yellow.gif) 0 0 no-repeat;}

#colorbox{}
    #cboxTopLeft{width:21px; height:21px; background:url(../images/controls.png) -100px 0 no-repeat;}
    #cboxTopRight{width:21px; height:21px; background:url(../images/controls.png) -129px 0 no-repeat;}
    #cboxBottomLeft{width:21px; height:21px; background:url(../images/controls.png) -100px -29px no-repeat;}
    #cboxBottomRight{width:21px; height:21px; background:url(../images/controls.png) -129px -29px no-repeat;}
    #cboxMiddleLeft{width:21px; background:url(../images/controls.png) left top repeat-y;}
    #cboxMiddleRight{width:21px; background:url(../images/controls.png) right top repeat-y;}
    #cboxTopCenter{height:21px; background:url(../images/border.png) 0 0 repeat-x;}
    #cboxBottomCenter{height:21px; background:url(../images/border.png) 0 -29px repeat-x;}
    #cboxContent{background:#fff;}
        #cboxLoadedContent{margin-bottom:0px;}
        #cboxTitle{position:absolute; bottom:4px; left:0; text-align:center; width:100%; color:#949494;}
        #cboxCurrent{position:absolute; bottom:4px; left:58px; color:#949494;}
        #cboxSlideshow{position:absolute; bottom:4px; right:30px; color:#0092ef;}
        #cboxPrevious{position:absolute; bottom:0; left:0px; background:url(../images/controls.png) -75px 0px no-repeat; width:25px; height:25px; text-indent:-9999px;}
        #cboxPrevious.hover{background-position:-75px -25px;}
        #cboxNext{position:absolute; bottom:0; left:27px; background:url(../images/controls.png) -50px 0px no-repeat; width:25px; height:25px; text-indent:-9999px;}
        #cboxNext.hover{background-position:-50px -25px;}
        #cboxLoadingOverlay{background:url(../images/loading_background.png) center center no-repeat;}
        #cboxLoadingGraphic{background:url(../images/loading.gif) center center no-repeat;}
        #cboxClose{display:none;position:absolute; bottom:0; right:0; background:url(../images/controls.png) -25px 0px no-repeat; width:25px; height:25px; text-indent:-9999px;}
        #cboxClose.hover{display:none; background-position:-25px -25px;}

/*
    The following fixes png-transparency for IE6.  
    It is also necessary for png-transparency in IE7 & IE8 to avoid 'black halos' with the fade transition
    
    Since this method does not support CSS background-positioning, it is incompatible with CSS sprites.
    Colorbox preloads navigation hover classes to account for this.
    
    !! Important Note: AlphaImageLoader src paths are relative to the HTML document,
    while regular CSS background images are relative to the CSS document.

.cboxIE #cboxTopLeft{background:transparent; filter: progid:DXImageTransform.Microsoft.AlphaImageLoader(src=../images/internet_explorer/borderTopLeft.png, sizingMethod='scale');}
.cboxIE #cboxTopCenter{background:transparent; filter: progid:DXImageTransform.Microsoft.AlphaImageLoader(src=../images/internet_explorer/borderTopCenter.png, sizingMethod='scale');}
.cboxIE #cboxTopRight{background:transparent; filter: progid:DXImageTransform.Microsoft.AlphaImageLoader(src=../images/internet_explorer/borderTopRight.png, sizingMethod='scale');}
.cboxIE #cboxBottomLeft{background:transparent; filter: progid:DXImageTransform.Microsoft.AlphaImageLoader(src=../images/internet_explorer/borderBottomLeft.png, sizingMethod='scale');}
.cboxIE #cboxBottomCenter{background:transparent; filter: progid:DXImageTransform.Microsoft.AlphaImageLoader(src=../images/internet_explorer/borderBottomCenter.png, sizingMethod='scale');}
.cboxIE #cboxBottomRight{background:transparent; filter: progid:DXImageTransform.Microsoft.AlphaImageLoader(src=../images/internet_explorer/borderBottomRight.png, sizingMethod='scale');}
.cboxIE #cboxMiddleLeft{background:transparent; filter: progid:DXImageTransform.Microsoft.AlphaImageLoader(src=../images/internet_explorer/borderMiddleLeft.png, sizingMethod='scale');}
.cboxIE #cboxMiddleRight{background:transparent; filter: progid:DXImageTransform.Microsoft.AlphaImageLoader(src=../images/internet_explorer/borderMiddleRight.png, sizingMethod='scale');}
*/
/*
    ColorBox Core Style
    The following rules are the styles that are consistant between themes.
    Avoid changing this area to maintain compatability with future versions of ColorBox.

#colorbox, #cboxOverlay, #cboxWrapper{position:absolute; top:0; left:0; z-index:9999; overflow:hidden;}
#cboxOverlay{position:fixed; width:100%; height:100%;}
#cboxMiddleLeft, #cboxBottomLeft{clear:left;}
#cboxContent{position:relative; overflow:visible;}
#cboxLoadedContent{overflow:auto;}
#cboxLoadedContent iframe{display:block; width:100%; height:100%; border:0;}
#cboxTitle{margin:0;}
#cboxLoadingOverlay, #cboxLoadingGraphic{position:absolute; top:0; left:0; width:100%;}
#cboxPrevious, #cboxNext, #cboxClose, #cboxSlideshow{cursor:pointer;}


    ColorBox example user style
    The following rules are ordered and tabbed in a way that represents the
    order/nesting of the generated HTML, so that the structure easier to understand.

#cboxOverlay{background:#000;opacity:.5 !important;}

.colorboxDialogHeader {width:545px;height:45px;background:#ffc324;margin:20px auto;-moz-border-radius:8px;-webkit-border-radius:8px;}
.colorboxDialogHeader h3 {padding:13px 0 0 15px;color:#fff;font-size:16px;font-weight:bold;}
.colorboxDialogHeader #colorboxDialogCloseButton {position:relative;float:right;cursor:pointer;top:-20px;right:10px;width:52px;height:20px;background:url(../images/buttons/btn-close-yellow.gif) 0 0 no-repeat;}

#colorbox{}
    #cboxTopLeft{width:14px; height:14px; background:url(images/controls.png) 0 0 no-repeat;}
    #cboxTopCenter{height:14px; background:url(images/border.png) top left repeat-x;}
    #cboxTopRight{width:14px; height:14px; background:url(images/controls.png) -36px 0 no-repeat;}
    #cboxBottomLeft{width:14px; height:43px; background:url(images/controls.png) 0 -32px no-repeat;}
    #cboxBottomCenter{height:43px; background:url(images/border.png) bottom left repeat-x;}
    #cboxBottomRight{width:14px; height:43px; background:url(images/controls.png) -36px -32px no-repeat;}
    #cboxMiddleLeft{width:14px; background:url(images/controls.png) -175px 0 repeat-y;}
    #cboxMiddleRight{width:14px; background:url(images/controls.png) -211px 0 repeat-y;}
    #cboxContent{background:#fff;-moz-border-radius:8px;-webkit-border-radius:8px;}
        #cboxLoadedContent{margin-bottom:5px;}
        #cboxLoadingOverlay{background:url(images/loading_background.png) center center no-repeat;}
        #cboxLoadingGraphic{background:url(images/loading.gif) center center no-repeat;}
        #cboxTitle{position:absolute; bottom:-25px; left:0; text-align:center; width:100%; font-weight:bold; color:#7C7C7C;}
        #cboxCurrent{position:absolute; bottom:-25px; left:58px; font-weight:bold; color:#7C7C7C;}
        
        #cboxPrevious, #cboxNext, #cboxClose, #cboxSlideshow{position:absolute; bottom:-29px; background:url(images/controls.png) 0px 0px no-repeat; width:23px; height:23px; text-indent:-9999px;}
        #cboxPrevious{left:0px; background-position: -51px -25px;}
        #cboxPrevious.hover{background-position:-51px 0px;}
        #cboxNext{left:27px; background-position:-75px -25px;}
        #cboxNext.hover{background-position:-75px 0px;}
        #cboxClose{right:0; background-position:-100px -25px;}
        #cboxClose.hover{background-position:-100px 0px;}
        
        .cboxSlideshow_on #cboxSlideshow{background-position:-125px 0px; right:27px;}
        .cboxSlideshow_on #cboxSlideshow.hover{background-position:-150px 0px;}
        .cboxSlideshow_off #cboxSlideshow{background-position:-150px -25px; right:27px;}
        .cboxSlideshow_off #cboxSlideshow.hover{background-position:-125px 0px;}*/