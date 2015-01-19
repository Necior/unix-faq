unix-faq.pdf: README.md
	pandoc -V geometry:margin=2.3cm -o unix-faq.pdf README.md -f markdown_github

clean:
	rm unix-faq.pdf
