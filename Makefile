
all-ttf:= assamese bengali devanagari gujarati kannada malayalam marathi nepali oriya punjabi tamil tamil-classical telugu

all:
	
	for font in $(all-ttf); do \
                 cd $${font};		cp ../generate* .;		 make all;		 rm -f generate*;		 cd ..; \
        done

clean:
	for font in $(all-ttf); do \
                 cd $${font}; make clean; cd ..; \
        done
