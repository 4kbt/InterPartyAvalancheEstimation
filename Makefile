SkiDensity.pdf: SkiDensity.lyx ExampleIncidentRates.pdf RelativeInterpartyData.pdf Makefile
	lyx -batch --export "pdf2" -dbg info,latex $<


ExampleIncidentRates.pdf: ExampleIncidentRates.gpl Makefile
	gnuplot $<

RelativeInterpartyData.pdf: RelativeInterpartyData.gpl Densities.dat Makefile
	gnuplot $<
