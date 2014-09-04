COMP = pdflatex
READ = evince
NUM = 1

ass$(NUM).pdf: ass$(NUM).tex
	$(COMP) $<
	
read: ass$(NUM).pdf
	$(READ) $<
	
spell: ass$(NUM).tex
	ispell $<
	
red_bull:
	@echo "No."

ques: task$(NUM).pdf
	$(READ) $<

class_update:
	cd ..;
	git submodule update --init --recursive;
	# cd -;
	cp -r ../UNSW_Latex/artwork artwork;
	cp -r ../UNSW_Latex/unswmaths.cls unswmaths.cls
	cp -r ../UNSW_Latex/unswshortcuts.sty unswshortcuts.sty


clean:
	rm -f *.log *.aux *~

	
	
	
tea:
	@echo "Make it yourself"
	
