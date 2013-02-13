all: ttf woff eot svg ttf-dist sfd-dist web-dist

version:= 2.5.3

ttf: ttf-bin
	@echo "----------Generating ttf from sfd file----------"
	/usr/bin/fontforge -script generate-ttf.pe *.sfd
	@echo "----------Finished generating ttf file----------"
	@echo " "

woff: woff-bin
	@echo "----------Generating woff from ttf file----------"
	java -jar /usr/share/java/sfnttool.jar -w Lohit-Bengali.ttf Lohit-Bengali.woff
	@echo "----------Finished generating woff file----------"
	@echo " "

eot: eot-bin
	@echo "----------Generating eot from ttf file----------"
	java -jar /usr/share/java/sfnttool.jar -e -x Lohit-Bengali.ttf Lohit-Bengali.eot
	@echo "----------Finished generating eot file----------"
	@echo " "

svg: svg-bin
	@echo "----------Generating svg from ttf file----------"
	/usr/bin/fontforge -script generate-svg.pe *.ttf
	@echo "----------Finished generating svg file----------"
	@echo " "

ttf-dist: dist
	mkdir lohit-bengali-ttf-$(version)
	cp -p COPYRIGHT OFL.txt README README.cvs AUTHORS  ChangeLog ChangeLog.old 66-lohit-bengali.conf Lohit-Bengali.ttf lohit-bengali-ttf-$(version)
	rm -rf lohit-bengali-ttf-$(version)/.git
	tar -cf lohit-bengali-ttf-$(version).tar lohit-bengali-ttf-$(version)
	gzip lohit-bengali-ttf-$(version).tar
	rm -rf lohit-bengali-ttf-$(version)

sfd-dist: dist
	mkdir lohit-bengali-$(version)
	cp -p COPYRIGHT OFL.txt README README.cvs AUTHORS generate*.pe Makefile ChangeLog 66-lohit-bengali.conf Lohit-Bengali.sfd lohit-bengali-$(version)
	rm -rf lohit-bengali-$(version)/.git
	rm -rf lohit-bengali-$(version)/*.ttf
	tar -cf lohit-bengali-$(version).tar lohit-bengali-$(version)
	gzip lohit-bengali-$(version).tar
	rm -rf lohit-bengali-$(version)

web-dist: webdist
	mkdir lohit-bengali-web-$(version)
	cp -p COPYRIGHT OFL.txt README README.cvs AUTHORS  ChangeLog Lohit-Bengali.woff  Lohit-Bengali.eot Lohit-Bengali.svg lohit-bengali-web-$(version)
	rm -rf lohit-bengali-web-$(version)/.git
	tar -cf lohit-bengali-web-$(version).tar lohit-bengali-web-$(version)
	gzip lohit-bengali-web-$(version).tar
	rm -rf lohit-bengali-web-$(version)

clean: cleanall
	rm -f *.ttf *.eot *.woff *.svg
	rm -rf *.tar.gz
	rm -rf lohit-bengali*

.PHONY: ttf-bin woff-bin eot-bin svg-bin webdist dist cleanall version
