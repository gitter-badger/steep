within SolarTherm.Test;
block TestSolarPosition
	import SolarTherm.Utilities.Solar.SolarPositionDB;
	SolarPositionDB solp_0(lat=0, lon=0, tzone=0);
	SolarPositionDB solp_can(lat=-35.3, lon=149.1, tzone=10);
	SolarPositionDB solp_den(lat=39.74, lon=-104.99, tzone=-7);
end TestSolarPosition;
