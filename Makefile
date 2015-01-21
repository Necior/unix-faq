all: README.md awk.md
	pandoc -V geometry:margin=2.3cm -o unix-faq.pdf README.md -f markdown_github
	pandoc -V geometry:margin=2.3cm -o awk.pdf awk.md -f markdown_github
clean:
	rm unix-faq.pdf awk.pdf
