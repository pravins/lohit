all: ttf woff eot ttf-dist sfd-dist web-dist

version:= 2.5.3

ttf: ttf-bin
	@echo "----------Generating ttf from sfd file----------"
	./generate.pe *.sfd
	@echo "----------Finished generating ttf file----------"
	@echo " "

woff: woff-bin
	@echo "----------Generating woff from ttf file----------"
	java -jar /usr/share/java/sfnttool.jar -w Lohit-Tamil.ttf Lohit-Tamil.woff
	@echo "----------Finished generating woff file----------"
	@echo " "

eot: eot-bin
	@echo "----------Generating eot from ttf file----------"
	java -jar /usr/share/java/sfnttool.jar -e -x Lohit-Tamil.ttf Lohit-Tamil.eot
	@echo "----------Finished generating eot file----------"
	@echo " "

ttf-dist: dist
	mkdir lohit-tamil-ttf-$(version)
	cp -p COPYRIGHT OFL.txt README  AUTHORS  ChangeLog  66-lohit-tamil.conf Lohit-Tamil.ttf lohit-tamil-ttf-$(version)
	rm -rf lohit-tamil-ttf-$(version)/.git
	tar -cf lohit-tamil-ttf-$(version).tar lohit-tamil-ttf-$(version)
	gzip lohit-tamil-ttf-$(version).tar
	rm -rf lohit-tamil-ttf-$(version)

sfd-dist: dist
	mkdir lohit-tamil-$(version)
	cp -p COPYRIGHT OFL.txt README  AUTHORS generate*.pe Makefile ChangeLog 66-lohit-tamil.conf Lohit-Tamil.sfd lohit-tamil-$(version)
	rm -rf lohit-tamil-$(version)/.git
	rm -rf lohit-tamil-$(version)/*.ttf
	tar -cf lohit-tamil-$(version).tar lohit-tamil-$(version)
	gzip lohit-tamil-$(version).tar
	rm -rf lohit-tamil-$(version)

web-dist: webdist
	mkdir lohit-tamil-web-$(version)
	cp -p COPYRIGHT OFL.txt README  AUTHORS  ChangeLog Lohit-Tamil.woff  Lohit-Tamil.eot lohit-tamil-web-$(version)
	rm -rf lohit-tamil-web-$(version)/.git
	tar -cf lohit-tamil-web-$(version).tar lohit-tamil-web-$(version)
	gzip lohit-tamil-web-$(version).tar
	rm -rf lohit-tamil-web-$(version)

clean: cleanall
	rm -f *.ttf *.eot *.woff
	rm -rf *.tar.gz
	rm -rf lohit-tamil*

.PHONY: ttf-bin woff-bin eot-bin webdist dist cleanall version
