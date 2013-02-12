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
	mkdir lohit-tamil-classical-ttf-$(version)
	cp -p COPYRIGHT OFL.txt README README.cvs AUTHORS  ChangeLog 66-lohit-tamil-classical.conf Lohit-Tamil-Classical.ttf lohit-tamil-classical-ttf-$(version)
	rm -rf lohit-tamil-classical-ttf-$(version)/.git
	tar -cf lohit-tamil-classical-ttf-$(version).tar lohit-tamil-classical-ttf-$(version)
	gzip lohit-tamil-classical-ttf-$(version).tar
	rm -rf lohit-tamil-classical-ttf-$(version)

sfd-dist: dist
	mkdir lohit-tamil-classical-$(version)
	cp -p COPYRIGHT OFL.txt README README.cvs AUTHORS generate*.pe Makefile ChangeLog 66-lohit-tamil-classical.conf Lohit-Tamil-Classical.sfd lohit-tamil-classical-$(version)
	rm -rf lohit-tamil-classical-$(version)/.git
	rm -rf lohit-tamil-classical-$(version)/*.ttf
	tar -cf lohit-tamil-classical-$(version).tar lohit-tamil-classical-$(version)
	gzip lohit-tamil-classical-$(version).tar
	rm -rf lohit-tamil-classical-$(version)

web-dist: webdist
	mkdir lohit-tamil-classical-web-$(version)
	cp -p COPYRIGHT OFL.txt README README.cvs AUTHORS  ChangeLog Lohit-Tamil-Classical.woff  Lohit-Tamil-Classical.eot Lohit-Tamil-Classical.svg lohit-tamil-classical-web-$(version)
	rm -rf lohit-tamil-classical-web-$(version)/.git
	tar -cf lohit-tamil-classical-web-$(version).tar lohit-tamil-classical-web-$(version)
	gzip lohit-tamil-classical-web-$(version).tar
	rm -rf lohit-tamil-classical-web-$(version)

clean: cleanall
	rm -f *.ttf *.eot *.woff *.svg
	rm -rf *.tar.gz
	rm -rf lohit-tamil-classical*

.PHONY: ttf-bin woff-bin eot-bin svg-bin webdist dist cleanall version
