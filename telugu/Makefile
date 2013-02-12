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
	mkdir lohit-telugu-ttf-$(version)
	cp -p COPYRIGHT OFL.txt README README.cvs AUTHORS  ChangeLog  66-lohit-telugu.conf Lohit-Telugu.ttf lohit-telugu-ttf-$(version)
	rm -rf lohit-telugu-ttf-$(version)/.git
	tar -cf lohit-telugu-ttf-$(version).tar lohit-telugu-ttf-$(version)
	gzip lohit-telugu-ttf-$(version).tar
	rm -rf lohit-telugu-ttf-$(version)

sfd-dist: dist
	mkdir lohit-telugu-$(version)
	cp -p COPYRIGHT OFL.txt README README.cvs AUTHORS generate*.pe Makefile ChangeLog  66-lohit-telugu.conf Lohit-Telugu.sfd lohit-telugu-$(version)
	rm -rf lohit-telugu-$(version)/.git
	rm -rf lohit-telugu-$(version)/*.ttf
	tar -cf lohit-telugu-$(version).tar lohit-telugu-$(version)
	gzip lohit-telugu-$(version).tar
	rm -rf lohit-telugu-$(version)

web-dist: webdist
	mkdir lohit-telugu-web-$(version)
	cp -p COPYRIGHT OFL.txt README README.cvs AUTHORS  ChangeLog  Lohit-Telugu.woff  Lohit-Telugu.eot Lohit-Telugu.svg lohit-telugu-web-$(version)
	rm -rf lohit-telugu-web-$(version)/.git
	tar -cf lohit-telugu-web-$(version).tar lohit-telugu-web-$(version)
	gzip lohit-telugu-web-$(version).tar
	rm -rf lohit-telugu-web-$(version)

clean: cleanall
	rm -f *.ttf *.eot *.woff *.svg
	rm -rf *.tar.gz
	rm -rf lohit-telugu*

.PHONY: ttf-bin woff-bin eot-bin svg-bin webdist dist cleanall version
