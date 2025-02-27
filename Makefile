##
# Math 123 Exam Template
#
.PHONY: all pdf FORCE_MAKE

all pdf:: example-exam.pdf example-exam-key.pdf

%.pdf: example-exam.tex FORCE_MAKE
	latexmk -pdf -jobname=$(basename $@) $<
	latexmk -c -jobname=$(basename $@) $<

clean::
	latexmk -pdf -C $*

# end
