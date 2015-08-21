#! /bin/env python2

import OMPython
OMPython = OMPython.OMCSession()

cmds = [
	'loadModel(Modelica)',
	'loadModel(SolarTherm.Examples.SystemSimple)',
	'simulate(SolarTherm.Examples.SystemSimple, stopTime=20)',
	'getErrorString()',
	'plot({sol.port1.p, tank.e, gen.p})',
	]

for c in cmds:
	ans = OMPython.execute(c)
	print(ans)