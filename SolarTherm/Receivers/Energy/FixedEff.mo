within SolarTherm.Receivers.Energy;
model FixedEff "Solar receiver with fixed efficiency"
	extends SolarTherm.Receivers.Energy.Receiver;
	import SI = Modelica.SIunits;
	// Port output is forced, so have to connect to something otherwise
	// p.p = 0 equation is invoked on unconnected flow variable
	parameter SI.Efficiency eff = 1.0 "Efficiency of receiver";
equation
	p.P = -eff*R;
end FixedEff;
