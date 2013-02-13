all: ttf woff eot svg ttf-dist sfd-dist web-dist

version:= 2.5.3

ttf: ttf-bin
	@echo "----------Generating ttf from sfd file----------"
	/usr/bin/fontforge -script generate-ttf.pe *.sfd
	@echo "----------Finished generating ttf file----------"
	@echo " "

woff: woff-bin
	@echo "----------Generating woff from ttf file----------"
	java -jar /usr/share/java/sfnttool.jar -w Lohit-Malayalam.ttf Lohit-Malayalam.woff
	@echo "----------Finished generating woff file----------"
	@echo " "

eot: eot-bin
	@echo "----------Generating eot from ttf file----------"
	java -jar /usr/share/java/sfnttool.jar -e -x Lohit-Malayalam.ttf Lohit-Malayalam.eot
	@echo "----------Finished generating eot file----------"
	@echo " "

svg: svg-bin
	@echo "----------Generating svg from ttf file----------"
	/usr/bin/fontforge -script generate-svg.pe *.ttf
	@echo "----------Finished generating svg file----------"
	@echo " "

ttf-dist: dist
	mkdir lohit-malayalam-ttf-$(version)
	cp -p COPYRIGHT OFL.txt README README.cvs AUTHORS  ChangeLog  67-lohit-malayalam.conf Lohit-Malayalam.ttf lohit-malayalam-ttf-$(version)
	rm -rf lohit-malayalam-ttf-$(version)/.git
	tar -cf lohit-malayalam-ttf-$(version).tar lohit-malayalam-ttf-$(version)
	gzip lohit-malayalam-ttf-$(version).tar
	rm -rf lohit-malayalam-ttf-$(version)

sfd-dist: dist
	mkdir lohit-malayalam-$(version)
	cp -p COPYRIGHT OFL.txt README README.cvs AUTHORS generate*.pe Makefile ChangeLog  67-lohit-malayalam.conf Lohit-Malayalam.sfd lohit-malayalam-$(version)
	rm -rf lohit-malayalam-$(version)/.git
	rm -rf lohit-malayalam-$(version)/*.ttf
	tar -cf lohit-malayalam-$(version).tar lohit-malayalam-$(version)
	gzip lohit-malayalam-$(version).tar
	rm -rf lohit-malayalam-$(version)

web-dist: webdist
	mkdir lohit-malayalam-web-$(version)
	cp -p COPYRIGHT OFL.txt README README.cvs AUTHORS  ChangeLog  Lohit-Malayalam.woff  Lohit-Malayalam.eot Lohit-Malayalam.svg lohit-malayalam-web-$(version)
	rm -rf lohit-malayalam-web-$(version)/.git
	tar -cf lohit-malayalam-web-$(version).tar lohit-malayalam-web-$(version)
	gzip lohit-malayalam-web-$(version).tar
	rm -rf lohit-malayalam-web-$(version)

clean: cleanall
	rm -f *.ttf *.eot *.woff *.svg
	rm -rf *.tar.gz
	rm -rf lohit-malayalam*

.PHONY: ttf-bin woff-bin eot-bin svg-bin webdist dist cleanall version
