var rdmAngle = irandom_range(1,200);
if(rdmAngle == 1) {
	windDirection += windDirectionEvolution;
}

var rdmEvolve = irandom_range(1,2000);
if(rdmEvolve == 1) {
	windDirectionEvolution *= -1;
}

windDirection = abs(windDirection % 360);

var i = 0;
if(11.25+(0*22.5) < windDirection and windDirection <= 11.25+(1*22.5)) {
	windCardinalDirection = "ENE";
}
else if(11.25+(1*22.5) < windDirection and windDirection <= 11.25+(2*22.5)) {
	windCardinalDirection = "NE";
}
else if(11.25+(2*22.5) < windDirection and windDirection <= 11.25+(3*22.5)) {
	windCardinalDirection = "NNE";
}
else if(11.25+(3*22.5) < windDirection and windDirection <= 11.25+(4*22.5)) {
	windCardinalDirection = "N";
}
else if(11.25+(4*22.5) < windDirection and windDirection <= 11.25+(5*22.5)) {
	windCardinalDirection = "NNW";
}
else if(11.25+(5*22.5) < windDirection and windDirection <= 11.25+(6*22.5)) {
	windCardinalDirection = "NW";
}
else if(11.25+(6*22.5) < windDirection and windDirection <= 11.25+(7*22.5)) {
	windCardinalDirection = "WNW";
}
else if(11.25+(7*22.5) < windDirection and windDirection <= 11.25+(8*22.5)) {
	windCardinalDirection = "W";
}
else if(11.25+(8*22.5) < windDirection and windDirection <= 11.25+(9*22.5)) {
	windCardinalDirection = "WSW";
}
else if(11.25+(9*22.5) < windDirection and windDirection <= 11.25+(10*22.5)) {
	windCardinalDirection = "SW";
}
else if(11.25+(10*22.5) < windDirection and windDirection <= 11.25+(11*22.5)) {
	windCardinalDirection = "SSW";
}
else if(11.25+(11*22.5) < windDirection and windDirection <= 11.25+(12*22.5)) {
	windCardinalDirection = "S";
}
else if(11.25+(12*22.5) < windDirection and windDirection <= 11.25+(13*22.5)) {
	windCardinalDirection = "SSE";
}
else if(11.25+(13*22.5) < windDirection and windDirection <= 11.25+(14*22.5)) {
	windCardinalDirection = "SE";
}
else if(11.25+(14*22.5) < windDirection and windDirection <= 11.25+(15*22.5)) {
	windCardinalDirection = "ESE";
}
else {
	windCardinalDirection = "E";
}
