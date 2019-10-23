SkiDensity.pdf: SkiDensity.lyx ExampleIncidentRates.pdf RelativeInterpartyData.pdf
	lyx -batch -e pdflatex $<


ExampleIncidentRates.pdf: ExampleIncidentRates.gpl
	gnuplot $<

RelativeInterpartyData.pdf: RelativeInterpartyData.gpl Densities.dat
	gnuplot $<
