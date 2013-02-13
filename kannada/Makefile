all: ttf woff eot svg ttf-dist sfd-dist web-dist

version:= 2.5.3

ttf: ttf-bin
	@echo "----------Generating ttf from sfd file----------"
	/usr/bin/fontforge -script generate-ttf.pe *.sfd
	@echo "----------Finished generating ttf file----------"
	@echo " "

woff: woff-bin
	@echo "----------Generating woff from ttf file----------"
	java -jar /usr/share/java/sfnttool.jar -w Lohit-Kannada.ttf Lohit-Kannada.woff
	@echo "----------Finished generating woff file----------"
	@echo " "

eot: eot-bin
	@echo "----------Generating eot from ttf file----------"
	java -jar /usr/share/java/sfnttool.jar -e -x Lohit-Kannada.ttf Lohit-Kannada.eot
	@echo "----------Finished generating eot file----------"
	@echo " "

svg: svg-bin
	@echo "----------Generating svg from ttf file----------"
	/usr/bin/fontforge -script generate-svg.pe *.ttf
	@echo "----------Finished generating svg file----------"
	@echo " "

ttf-dist: dist
	mkdir lohit-kannada-ttf-$(version)
	cp -p COPYRIGHT OFL.txt README README.cvs AUTHORS  ChangeLog  66-lohit-kannada.conf Lohit-Kannada.ttf lohit-kannada-ttf-$(version)
	rm -rf lohit-kannada-ttf-$(version)/.git
	tar -cf lohit-kannada-ttf-$(version).tar lohit-kannada-ttf-$(version)
	gzip lohit-kannada-ttf-$(version).tar
	rm -rf lohit-kannada-ttf-$(version)

sfd-dist: dist
	mkdir lohit-kannada-$(version)
	cp -p COPYRIGHT OFL.txt README README.cvs AUTHORS generate*.pe Makefile ChangeLog 66-lohit-kannada.conf Lohit-Kannada.sfd lohit-kannada-$(version)
	rm -rf lohit-kannada-$(version)/.git
	rm -rf lohit-kannada-$(version)/*.ttf
	tar -cf lohit-kannada-$(version).tar lohit-kannada-$(version)
	gzip lohit-kannada-$(version).tar
	rm -rf lohit-kannada-$(version)

web-dist: webdist
	mkdir lohit-kannada-web-$(version)
	cp -p ChangeLog 
	cp -p COPYRIGHT OFL.txt README README.cvs AUTHORS  ChangeLog  Lohit-Kannada.woff  Lohit-Kannada.eot Lohit-Kannada.svg lohit-kannada-web-$(version)
	rm -rf lohit-kannada-web-$(version)/.git
	tar -cf lohit-kannada-web-$(version).tar lohit-kannada-web-$(version)
	gzip lohit-kannada-web-$(version).tar
	rm -rf lohit-kannada-web-$(version)

clean: cleanall
	rm -f *.ttf *.eot *.woff *.svg
	rm -rf *.tar.gz
	rm -rf lohit-kannada*

.PHONY: ttf-bin woff-bin eot-bin svg-bin webdist dist cleanall version
