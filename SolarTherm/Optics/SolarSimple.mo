within SolarTherm.Optics;
model SolarSimple "Simple sinusoidal solar source"
	import SI = Modelica.SIunits;
	import Modelica.Math.sin;
	import Modelica.Constants.pi;
	import SolarTherm.Interfaces.Energy.Port;
	parameter SI.Frequency freq = 0.1 "Frequency of source";
	parameter SI.Irradiance irmax(min=0) = 1000 "Irradiance maximum";
	parameter SI.Area area = 1 "Area of collector";
	input Boolean on(start=false) "Whether or not solar source is on";
	Port port1;
equation
	port1.P = if (on) then -(irmax/2)*area*(1 + sin(2*pi*freq*time)) else 0;
end SolarSimple;
