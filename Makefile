SkiDensity.pdf: SkiDensity.lyx ExampleIncidentRates.pdf RelativeInterpartyData.pdf Makefile elsearticle_issw2018.layout elsarticle_issw2018.cls SkiDensity.bib
	lyx -batch --export "pdf2" -dbg info,latex $<


ExampleIncidentRates.pdf: ExampleIncidentRates.gpl Makefile
	gnuplot $<

RelativeInterpartyData.pdf: RelativeInterpartyData.gpl Densities.dat Makefile
	gnuplot $<
