
all-ttf:= assamese bengali devanagari gujarati gurmukhi kannada malayalam marathi nepali odia tamil tamil-classical telugu
date1:= `date +%Y%m%d`


all sfd-dist ttf:
	
	for font in $(all-ttf); do \
                 cd $${font};	cp ../AUTHORS ../scripts/apply_featurefile.py ../scripts/auto_test.py  ../generate*.pe ../COPYRIGHT ../OFL.txt ../README .;	 "$(MAKE)" "$@";		 rm -f generate* *.py AUTHORS COPYRIGHT OFL.txt README;		 cd ..; \
        done

ttf-dist:
	mkdir lohit-ttf-$(date1)
	cp COPYRIGHT OFL.txt AUTHORS README */*.ttf lohit-ttf-$(date1)/
	tar -cf lohit-ttf-$(date1).tar lohit-ttf-$(date1)/
	gzip lohit-ttf-$(date1).tar
	rm -rf lohit-ttf-$(date1)


clean:
	for font in $(all-ttf); do \
                 cd $${font}; make clean; cd ..; \
        done
