
all: custom-keycaps-phantomjs.png custom-keycaps-phantomjs.pdf custom-keycaps-svgexport.png custom-keycaps-batik.png

custom-keycaps-phantomjs.png: custom-keycaps.svg
	phantomjs rasterise.js $< $@ "1920px"

custom-keycaps-phantomjs.pdf: custom-keycaps.svg
	phantomjs rasterise.js $< $@

custom-keycaps-svgexport.png: custom-keycaps.svg
	svgexport $< $@

custom-keycaps-batik.png: custom-keycaps.svg
	batik-rasterizer -d $@ -w 1920 $<

