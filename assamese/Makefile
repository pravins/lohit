all: ttf woff eot svg ttf-dist sfd-dist web-dist

version:= 2.5.3

ttf: ttf-bin
	@echo "----------Generating ttf from sfd file----------"
	/usr/bin/fontforge -script generate-ttf.pe *.sfd
	@echo "----------Finished generating ttf file----------"
	@echo " "

woff: woff-bin
	@echo "----------Generating woff from ttf file----------"
	/usr/bin/fontforge -script generate-woff.pe Lohit-Assamese.ttf
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
	mkdir lohit-assamese-ttf-$(version)
	cp -p COPYRIGHT OFL.txt README README.cvs AUTHORS  ChangeLog 66-lohit-assamese.conf Lohit-Assamese.ttf lohit-assamese-ttf-$(version)
	rm -rf lohit-assamese-ttf-$(version)/.git
	tar -cf lohit-assamese-ttf-$(version).tar lohit-assamese-ttf-$(version)
	gzip lohit-assamese-ttf-$(version).tar
	rm -rf lohit-assamese-ttf-$(version)

sfd-dist: dist
	mkdir lohit-assamese-$(version)
	cp -p COPYRIGHT OFL.txt README README.cvs AUTHORS generate*.pe Makefile ChangeLog 66-lohit-assamese.conf Lohit-Assamese.sfd lohit-assamese-$(version)
	rm -rf lohit-assamese-$(version)/.git
	rm -rf lohit-assamese-$(version)/*.ttf
	tar -cf lohit-assamese-$(version).tar lohit-assamese-$(version)
	gzip lohit-assamese-$(version).tar
	rm -rf lohit-assamese-$(version)

web-dist: webdist
	mkdir lohit-assamese-web-$(version)
	cp -p COPYRIGHT OFL.txt README README.cvs AUTHORS  ChangeLog Lohit-Assamese.woff  Lohit-Assamese.eot Lohit-Assamese.svg lohit-assamese-web-$(version)
	rm -rf lohit-assamese-web-$(version)/.git
	tar -cf lohit-assamese-web-$(version).tar lohit-assamese-web-$(version)
	gzip lohit-assamese-web-$(version).tar
	rm -rf lohit-assamese-web-$(version)

clean: cleanall
	rm -f *.ttf *.eot *.woff *.svg
	rm -rf *.tar.gz
	rm -rf lohit-assamese*

.PHONY: ttf-bin woff-bin eot-bin svg-bin webdist dist cleanall version
