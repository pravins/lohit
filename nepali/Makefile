all: ttf woff eot ttf-dist sfd-dist web-dist

version:= 2.5.3

ttf: ttf-bin
	@echo "----------Generating ttf from sfd file----------"
	./generate.pe *.sfd
	@echo "----------Finished generating ttf file----------"
	@echo " "

woff: woff-bin
	@echo "----------Generating woff from ttf file----------"
	java -jar /usr/share/java/sfnttool.jar -w Lohit-Nepali.ttf Lohit-Nepali.woff
	@echo "----------Finished generating woff file----------"
	@echo " "

eot: eot-bin
	@echo "----------Generating eot from ttf file----------"
	java -jar /usr/share/java/sfnttool.jar -e -x Lohit-Nepali.ttf Lohit-Nepali.eot
	@echo "----------Finished generating eot file----------"
	@echo " "

ttf-dist: dist
	mkdir lohit-nepali-ttf-$(version)
	cp -p COPYRIGHT OFL.txt README README.git AUTHORS  ChangeLog  65-0-lohit-nepali.conf Lohit-Nepali.ttf lohit-nepali-ttf-$(version)
	rm -rf lohit-nepali-ttf-$(version)/.git
	tar -cf lohit-nepali-ttf-$(version).tar lohit-nepali-ttf-$(version)
	gzip lohit-nepali-ttf-$(version).tar
	rm -rf lohit-nepali-ttf-$(version)

sfd-dist: dist
	mkdir lohit-nepali-$(version)
	cp -p COPYRIGHT OFL.txt README README.git AUTHORS generate*.pe Makefile ChangeLog  65-0-lohit-nepali.conf Lohit-Nepali.sfd lohit-nepali-$(version)
	rm -rf lohit-nepali-$(version)/.git
	rm -rf lohit-nepali-$(version)/*.ttf
	tar -cf lohit-nepali-$(version).tar lohit-nepali-$(version)
	gzip lohit-nepali-$(version).tar
	rm -rf lohit-nepali-$(version)

web-dist: webdist
	mkdir lohit-nepali-web-$(version)
	cp -p COPYRIGHT OFL.txt README README.git AUTHORS  ChangeLog Lohit-Nepali.woff  Lohit-Nepali.eot lohit-nepali-web-$(version)
	rm -rf lohit-nepali-web-$(version)/.git
	tar -cf lohit-nepali-web-$(version).tar lohit-nepali-web-$(version)
	gzip lohit-nepali-web-$(version).tar
	rm -rf lohit-nepali-web-$(version)

clean: cleanall
	rm -f *.ttf *.eot *.woff
	rm -rf *.tar.gz
	rm -rf lohit-nepali*

.PHONY: ttf-bin woff-bin eot-bin webdist dist cleanall version
