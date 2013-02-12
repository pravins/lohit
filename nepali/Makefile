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
	mkdir lohit-nepali-ttf-$(version)
	cp -p ../ChangeLog ChangeLog.old
	cp -p ../COPYRIGHT ../OFL.txt ../README ../README.cvs ../AUTHORS  ChangeLog ChangeLog.old 65-0-lohit-nepali.conf Lohit-Nepali.ttf lohit-nepali-ttf-$(version)
	rm -rf lohit-nepali-ttf-$(version)/.git
	tar -cf lohit-nepali-ttf-$(version).tar lohit-nepali-ttf-$(version)
	gzip lohit-nepali-ttf-$(version).tar
	rm -rf lohit-nepali-ttf-$(version)

sfd-dist: dist
	mkdir lohit-nepali-$(version)
	cp -p ../ChangeLog ChangeLog.old
	cp -p ../COPYRIGHT ../OFL.txt ../README ../README.cvs ../AUTHORS ../generate*.pe Makefile ChangeLog ChangeLog.old 65-0-lohit-nepali.conf Lohit-Nepali.sfd lohit-nepali-$(version)
	rm -rf lohit-nepali-$(version)/.git
	rm -rf lohit-nepali-$(version)/*.ttf
	tar -cf lohit-nepali-$(version).tar lohit-nepali-$(version)
	gzip lohit-nepali-$(version).tar
	rm -rf lohit-nepali-$(version)

web-dist: webdist
	mkdir lohit-nepali-web-$(version)
	cp -p ../ChangeLog ChangeLog.old
	cp -p ../COPYRIGHT ../OFL.txt ../README ../README.cvs ../AUTHORS  ChangeLog ChangeLog.old Lohit-Nepali.woff  Lohit-Nepali.eot Lohit-Nepali.svg lohit-nepali-web-$(version)
	rm -rf lohit-nepali-web-$(version)/.git
	tar -cf lohit-nepali-web-$(version).tar lohit-nepali-web-$(version)
	gzip lohit-nepali-web-$(version).tar
	rm -rf lohit-nepali-web-$(version)

clean: cleanall
	rm -f *.ttf *.eot *.woff *.svg
	rm -rf *.tar.gz
	rm -rf lohit-nepali*

.PHONY: ttf-bin woff-bin eot-bin svg-bin webdist dist cleanall version
