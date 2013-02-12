all: ttf woff eot svg ttf-dist sfd-dist web-dist

version:= 2.5.3

ttf: ttf-bin
	@echo "----------Generating ttf from sfd file----------"
	/usr/bin/fontforge -script ../generate-ttf.pe *.sfd
	@echo "----------Finished generating ttf file----------"
	@echo " "

woff: woff-bin
	@echo "----------Generating woff from ttf file----------"
	/usr/bin/fontforge -script ../generate-woff.pe *.ttf
	@echo "----------Finished generating woff file----------"
	@echo " "

eot: eot-bin
	@echo "----------Generating eot from ttf file----------"
	/usr/bin/fontforge -script ../generate-eot.pe *.ttf
	@echo "----------Finished generating eot file----------"
	@echo " "

svg: svg-bin
	@echo "----------Generating svg from ttf file----------"
	/usr/bin/fontforge -script ../generate-svg.pe *.ttf
	@echo "----------Finished generating svg file----------"
	@echo " "

ttf-dist: dist
	mkdir lohit-oriya-ttf-$(version)
	cp -p ../ChangeLog ChangeLog.old
	cp -p ../COPYRIGHT ../OFL.txt ../README ../README.cvs ../AUTHORS  ChangeLog ChangeLog.old 66-lohit-oriya.conf Lohit-Oriya.ttf lohit-oriya-ttf-$(version)
	rm -rf lohit-oriya-ttf-$(version)/.git
	tar -cf lohit-oriya-ttf-$(version).tar lohit-oriya-ttf-$(version)
	gzip lohit-oriya-ttf-$(version).tar
	rm -rf lohit-oriya-ttf-$(version)

sfd-dist: dist
	mkdir lohit-oriya-$(version)
	cp -p ../ChangeLog ChangeLog.old
	cp -p ../COPYRIGHT ../OFL.txt ../README ../README.cvs ../AUTHORS ../generate*.pe Makefile ChangeLog ChangeLog.old 66-lohit-oriya.conf Lohit-Oriya.sfd lohit-oriya-$(version)
	rm -rf lohit-oriya-$(version)/.git
	rm -rf lohit-oriya-$(version)/*.ttf
	tar -cf lohit-oriya-$(version).tar lohit-oriya-$(version)
	gzip lohit-oriya-$(version).tar
	rm -rf lohit-oriya-$(version)

web-dist: webdist
	mkdir lohit-oriya-web-$(version)
	cp -p ../ChangeLog ChangeLog.old
	cp -p ../COPYRIGHT ../OFL.txt ../README ../README.cvs ../AUTHORS  ChangeLog ChangeLog.old Lohit-Oriya.woff  Lohit-Oriya.eot Lohit-Oriya.svg lohit-oriya-web-$(version)
	rm -rf lohit-oriya-web-$(version)/.git
	tar -cf lohit-oriya-web-$(version).tar lohit-oriya-web-$(version)
	gzip lohit-oriya-web-$(version).tar
	rm -rf lohit-oriya-web-$(version)

clean: cleanall
	rm -f *.ttf *.eot *.woff *.svg
	rm -rf *.tar.gz
	rm -rf lohit-oriya*

.PHONY: ttf-bin woff-bin eot-bin svg-bin webdist dist cleanall version
