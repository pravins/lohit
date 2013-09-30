all: ttf woff eot ttf-dist sfd-dist web-dist

version:= 2.5.3

ttf: ttf-bin
	@echo "----------Generating ttf from sfd file----------"
	./generate.pe *.sfd
	@echo "----------Finished generating ttf file----------"
	@echo " "

woff: woff-bin
	@echo "----------Generating woff from ttf file----------"
	java -jar /usr/share/java/sfnttool.jar -w Lohit-Punjabi.ttf Lohit-Punjabi.woff
	@echo "----------Finished generating woff file----------"
	@echo " "

eot: eot-bin
	@echo "----------Generating eot from ttf file----------"
	java -jar /usr/share/java/sfnttool.jar -e -x Lohit-Punjabi.ttf Lohit-Punjabi.eot
	@echo "----------Finished generating eot file----------"
	@echo " "

ttf-dist: dist
	mkdir lohit-punjabi-ttf-$(version)
	cp -p COPYRIGHT OFL.txt README  AUTHORS  ChangeLog  66-lohit-punjabi.conf Lohit-Punjabi.ttf lohit-punjabi-ttf-$(version)
	rm -rf lohit-punjabi-ttf-$(version)/.git
	tar -cf lohit-punjabi-ttf-$(version).tar lohit-punjabi-ttf-$(version)
	gzip lohit-punjabi-ttf-$(version).tar
	rm -rf lohit-punjabi-ttf-$(version)

sfd-dist: dist
	mkdir lohit-punjabi-$(version)
	cp -p COPYRIGHT OFL.txt README  AUTHORS generate*.pe Makefile ChangeLog  66-lohit-punjabi.conf Lohit-Punjabi.sfd lohit-punjabi-$(version)
	rm -rf lohit-punjabi-$(version)/.git
	rm -rf lohit-punjabi-$(version)/*.ttf
	tar -cf lohit-punjabi-$(version).tar lohit-punjabi-$(version)
	gzip lohit-punjabi-$(version).tar
	rm -rf lohit-punjabi-$(version)

web-dist: webdist
	mkdir lohit-punjabi-web-$(version)
	cp -p COPYRIGHT OFL.txt README  AUTHORS  ChangeLog Lohit-Punjabi.woff  Lohit-Punjabi.eot lohit-punjabi-web-$(version)
	rm -rf lohit-punjabi-web-$(version)/.git
	tar -cf lohit-punjabi-web-$(version).tar lohit-punjabi-web-$(version)
	gzip lohit-punjabi-web-$(version).tar
	rm -rf lohit-punjabi-web-$(version)

clean: cleanall
	rm -f *.ttf *.eot *.woff
	rm -rf *.tar.gz
	rm -rf lohit-punjabi*

.PHONY: ttf-bin woff-bin eot-bin webdist dist cleanall version
