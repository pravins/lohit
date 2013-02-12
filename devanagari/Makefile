all: ttf woff eot svg ttf-dist sfd-dist web-dist

version:= 2.5.3

ttf: ttf-bin
	@echo "----------Generating ttf from sfd file----------"
	/usr/bin/fontforge -script generate-ttf.pe *.sfd
	@echo "----------Finished generating ttf file----------"
	@echo " "

woff: woff-bin
	@echo "----------Generating woff from ttf file----------"
	/usr/bin/fontforge -script generate-woff.pe *.ttf
	@echo "----------Finished generating woff file----------"
	@echo " "

eot: eot-bin
	@echo "----------Generating eot from ttf file----------"
	/usr/bin/fontforge -script generate-eot.pe *.ttf
	@echo "----------Finished generating eot file----------"
	@echo " "

svg: svg-bin
	@echo "----------Generating svg from ttf file----------"
	/usr/bin/fontforge -script generate-svg.pe *.ttf
	@echo "----------Finished generating svg file----------"
	@echo " "

ttf-dist: dist
	mkdir lohit-devanagari-ttf-$(version)
	cp -p COPYRIGHT OFL.txt README README.cvs AUTHORS  ChangeLog 66-lohit-devanagari.conf Lohit-Devanagari.ttf lohit-devanagari-ttf-$(version)
	rm -rf lohit-devanagari-ttf-$(version)/.git
	tar -cf lohit-devanagari-ttf-$(version).tar lohit-devanagari-ttf-$(version)
	gzip lohit-devanagari-ttf-$(version).tar
	rm -rf lohit-devanagari-ttf-$(version)

sfd-dist: dist
	mkdir lohit-devanagari-$(version)
	cp -p COPYRIGHT OFL.txt README README.cvs AUTHORS generate*.pe Makefile ChangeLog 66-lohit-devanagari.conf Lohit-Devanagari.sfd lohit-devanagari-$(version)
	rm -rf lohit-devanagari-$(version)/.git
	rm -rf lohit-devanagari-$(version)/*.ttf
	tar -cf lohit-devanagari-$(version).tar lohit-devanagari-$(version)
	gzip lohit-devanagari-$(version).tar
	rm -rf lohit-devanagari-$(version)

web-dist: webdist
	mkdir lohit-devanagari-web-$(version)
	cp -p ChangeLog ChangeLog.old
	cp -p COPYRIGHT OFL.txt README README.cvs AUTHORS  ChangeLog Lohit-Devanagari.woff  Lohit-Devanagari.eot Lohit-Devanagari.svg lohit-devanagari-web-$(version)
	rm -rf lohit-devanagari-web-$(version)/.git
	tar -cf lohit-devanagari-web-$(version).tar lohit-devanagari-web-$(version)
	gzip lohit-devanagari-web-$(version).tar
	rm -rf lohit-devanagari-web-$(version)

clean: cleanall
	rm -f *.ttf *.eot *.woff *.svg
	rm -rf *.tar.gz
	rm -rf lohit-devanagari*

.PHONY: ttf-bin woff-bin eot-bin svg-bin webdist dist cleanall version
