all: ttf woff eot ttf-dist sfd-dist web-dist

version:= 2.5.5

ttf: ttf-bin
	@echo "----------Generating ttf from sfd file----------"
	./generate.pe *.sfd
	@echo "----------Finished generating ttf file----------"
	@echo " "

woff: woff-bin
	@echo "----------Generating woff from ttf file----------"
	java -jar /usr/share/java/sfntly/sfnttool.jar -w Lohit-Odia.ttf Lohit-Odia.woff
	@echo "----------Finished generating woff file----------"
	@echo " "

eot: eot-bin
	@echo "----------Generating eot from ttf file----------"
	java -jar /usr/share/java/sfntly/sfnttool.jar -e -x Lohit-Odia.ttf Lohit-Odia.eot
	@echo "----------Finished generating eot file----------"
	@echo " "

ttf-dist: dist
	mkdir lohit-odia-ttf-$(version)
	cp -p COPYRIGHT OFL.txt README  AUTHORS  ChangeLog  66-lohit-odia.conf Lohit-Odia.ttf lohit-odia-ttf-$(version)
	rm -rf lohit-odia-ttf-$(version)/.git
	tar -cf lohit-odia-ttf-$(version).tar lohit-odia-ttf-$(version)
	gzip lohit-odia-ttf-$(version).tar
	rm -rf lohit-odia-ttf-$(version)

sfd-dist: dist
	mkdir lohit-odia-$(version)
	cp -p COPYRIGHT OFL.txt README  AUTHORS generate*.pe Makefile ChangeLog  66-lohit-odia.conf Lohit-Odia.sfd lohit-odia-$(version)
	rm -rf lohit-odia-$(version)/.git
	rm -rf lohit-odia-$(version)/*.ttf
	tar -cf lohit-odia-$(version).tar lohit-odia-$(version)
	gzip lohit-odia-$(version).tar
	rm -rf lohit-odia-$(version)

web-dist: webdist
	mkdir lohit-odia-web-$(version)
	cp -p COPYRIGHT OFL.txt README  AUTHORS  ChangeLog Lohit-Odia.woff  Lohit-Odia.eot lohit-odia-web-$(version)
	rm -rf lohit-odia-web-$(version)/.git
	tar -cf lohit-odia-web-$(version).tar lohit-odia-web-$(version)
	gzip lohit-odia-web-$(version).tar
	rm -rf lohit-odia-web-$(version)

clean: cleanall
	rm -f *.ttf *.eot *.woff
	rm -rf *.tar.gz
	rm -rf lohit-odia*

.PHONY: ttf-bin woff-bin eot-bin webdist dist cleanall version
