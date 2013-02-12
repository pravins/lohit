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
	mkdir lohit-tamil-ttf-$(version)
	cp -p ../ChangeLog ChangeLog.old
	cp -p ../COPYRIGHT ../OFL.txt ../README ../README.cvs ../AUTHORS  ChangeLog ChangeLog.old 66-lohit-tamil.conf Lohit-Tamil.ttf lohit-tamil-ttf-$(version)
	rm -rf lohit-tamil-ttf-$(version)/.git
	tar -cf lohit-tamil-ttf-$(version).tar lohit-tamil-ttf-$(version)
	gzip lohit-tamil-ttf-$(version).tar
	rm -rf lohit-tamil-ttf-$(version)

sfd-dist: dist
	mkdir lohit-tamil-$(version)
	cp -p ../ChangeLog ChangeLog.old
	cp -p ../COPYRIGHT ../OFL.txt ../README ../README.cvs ../AUTHORS ../generate*.pe Makefile ChangeLog ChangeLog.old 66-lohit-tamil.conf Lohit-Tamil.sfd lohit-tamil-$(version)
	rm -rf lohit-tamil-$(version)/.git
	rm -rf lohit-tamil-$(version)/*.ttf
	tar -cf lohit-tamil-$(version).tar lohit-tamil-$(version)
	gzip lohit-tamil-$(version).tar
	rm -rf lohit-tamil-$(version)

web-dist: webdist
	mkdir lohit-tamil-web-$(version)
	cp -p ../ChangeLog ChangeLog.old
	cp -p ../COPYRIGHT ../OFL.txt ../README ../README.cvs ../AUTHORS  ChangeLog ChangeLog.old Lohit-Tamil.woff  Lohit-Tamil.eot Lohit-Tamil.svg lohit-tamil-web-$(version)
	rm -rf lohit-tamil-web-$(version)/.git
	tar -cf lohit-tamil-web-$(version).tar lohit-tamil-web-$(version)
	gzip lohit-tamil-web-$(version).tar
	rm -rf lohit-tamil-web-$(version)

clean: cleanall
	rm -f *.ttf *.eot *.woff *.svg
	rm -rf *.tar.gz
	rm -rf lohit-tamil*

.PHONY: ttf-bin woff-bin eot-bin svg-bin webdist dist cleanall version
