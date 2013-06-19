all: ttf woff eot ttf-dist sfd-dist web-dist

version:= 2.5.4.1

ttf: ttf-bin
	@echo "----------Generating ttf from sfd file----------"
	./generate.pe *.sfd
	@echo "----------Finished generating ttf file----------"
	@echo " "

woff: woff-bin
	@echo "----------Generating woff from ttf file----------"
	java -jar /usr/share/java/sfnttool.jar -w Lohit-Oriya.ttf Lohit-Oriya.woff
	@echo "----------Finished generating woff file----------"
	@echo " "

eot: eot-bin
	@echo "----------Generating eot from ttf file----------"
	java -jar /usr/share/java/sfnttool.jar -e -x Lohit-Oriya.ttf Lohit-Oriya.eot
	@echo "----------Finished generating eot file----------"
	@echo " "

ttf-dist: dist
	mkdir lohit-oriya-ttf-$(version)
	cp -p COPYRIGHT OFL.txt README README.git AUTHORS  ChangeLog  66-lohit-oriya.conf Lohit-Oriya.ttf lohit-oriya-ttf-$(version)
	rm -rf lohit-oriya-ttf-$(version)/.git
	tar -cf lohit-oriya-ttf-$(version).tar lohit-oriya-ttf-$(version)
	gzip lohit-oriya-ttf-$(version).tar
	rm -rf lohit-oriya-ttf-$(version)

sfd-dist: dist
	mkdir lohit-oriya-$(version)
	cp -p COPYRIGHT OFL.txt README README.git AUTHORS generate*.pe Makefile ChangeLog  66-lohit-oriya.conf Lohit-Oriya.sfd lohit-oriya-$(version)
	rm -rf lohit-oriya-$(version)/.git
	rm -rf lohit-oriya-$(version)/*.ttf
	tar -cf lohit-oriya-$(version).tar lohit-oriya-$(version)
	gzip lohit-oriya-$(version).tar
	rm -rf lohit-oriya-$(version)

web-dist: webdist
	mkdir lohit-oriya-web-$(version)
	cp -p COPYRIGHT OFL.txt README README.git AUTHORS  ChangeLog Lohit-Oriya.woff  Lohit-Oriya.eot lohit-oriya-web-$(version)
	rm -rf lohit-oriya-web-$(version)/.git
	tar -cf lohit-oriya-web-$(version).tar lohit-oriya-web-$(version)
	gzip lohit-oriya-web-$(version).tar
	rm -rf lohit-oriya-web-$(version)

clean: cleanall
	rm -f *.ttf *.eot *.woff
	rm -rf *.tar.gz
	rm -rf lohit-oriya*

.PHONY: ttf-bin woff-bin eot-bin webdist dist cleanall version
