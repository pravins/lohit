all: ttf woff eot svg ttf-dist sfd-dist web-dist

version:= 2.5.2

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
	mkdir lohit-marathi-ttf-$(version)
	cp -p ../ChangeLog ChangeLog.old
	cp -p ../COPYRIGHT ../OFL.txt ../README ../README.cvs ../AUTHORS  ChangeLog ChangeLog.old 65-0-lohit-marathi.conf Lohit-Marathi.ttf lohit-marathi-ttf-$(version)
	rm -rf lohit-marathi-ttf-$(version)/.git
	tar -cf lohit-marathi-ttf-$(version).tar lohit-marathi-ttf-$(version)
	gzip lohit-marathi-ttf-$(version).tar
	rm -rf lohit-marathi-ttf-$(version)

sfd-dist: dist
	mkdir lohit-marathi-$(version)
	cp -p ../ChangeLog ChangeLog.old
	cp -p ../COPYRIGHT ../OFL.txt ../README ../README.cvs ../AUTHORS ../generate*.pe Makefile ChangeLog ChangeLog.old 65-0-lohit-marathi.conf Lohit-Marathi.sfd lohit-marathi-$(version)
	rm -rf lohit-marathi-$(version)/.git
	rm -rf lohit-marathi-$(version)/*.ttf
	tar -cf lohit-marathi-$(version).tar lohit-marathi-$(version)
	gzip lohit-marathi-$(version).tar
	rm -rf lohit-marathi-$(version)

web-dist: webdist
	mkdir lohit-marathi-web-$(version)
	cp -p ../ChangeLog ChangeLog.old
	cp -p ../COPYRIGHT ../OFL.txt ../README ../README.cvs ../AUTHORS  ChangeLog ChangeLog.old Lohit-Marathi.woff  Lohit-Marathi.eot Lohit-Marathi.svg lohit-marathi-web-$(version)
	rm -rf lohit-marathi-web-$(version)/.git
	tar -cf lohit-marathi-web-$(version).tar lohit-marathi-web-$(version)
	gzip lohit-marathi-web-$(version).tar
	rm -rf lohit-marathi-web-$(version)

clean: cleanall
	rm -f *.ttf *.eot *.woff *.svg
	rm -rf *.tar.gz
	rm -rf lohit-marathi*

.PHONY: ttf-bin woff-bin eot-bin svg-bin webdist dist cleanall version
