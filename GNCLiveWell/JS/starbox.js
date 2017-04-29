﻿.positioner {
	position: relative;
	display: inline-block;
	line-height: 0;
}

.starbox .colorbar,
.starbox .ghost {
	z-index: 0;
	position: absolute;
	top: 0;
	bottom: 0;
	left: 0;
}

.starbox .stars {
	display: inline-block;
}

.starbox .stars .star_holder {
	position: relative;
	z-index: 1;
}

.starbox .stars .star_holder .star {
	display: inline-block;
	vertical-align: baseline;
	background-repeat: no-repeat;
}


/* Override with your own image and size… */
.starbox .stars .star_holder .star {
	background-image: url('https://github.com/sabberworm/jStarbox/raw/master/images/5-small.png');
	width:17px;
	height:17px;
}
.starbox{
	
}
.block span{
	color: #A5A5A5;
	float: left;
	margin: 0 0 0 0.5em;
	font-size: 0.875em;
}
/* Override with your own colours… */
.starbox .stars { background: #b0b0b0; }
.starbox .rated .stars { background: #b0b0b0; }
.starbox .rated.hover .stars { background: #b0b0b0; }
.starbox .colorbar { background: #FAB005; }
.starbox .hover .colorbar { background: #FAB005; }
.starbox .rated .colorbar { background: #FAB005; }
.starbox .rated.hover .colorbar { background: #FAB005; }
.starbox .ghost { background: #FAB005; }
