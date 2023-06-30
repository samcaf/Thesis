.PHONY : todo debug check

.DEFAULT_GOAL := print

print_todo:
	@grep -r "TODO" --exclude Makefile --exclude-dir venv;

print_debug:
	@grep -r "DEBUG" --exclude Makefile --exclude-dir venv

print_comments:
	@grep -r \\\\sam --exclude Makefile --exclude-dir venv

edit_todo:
	vim $$(grep -rIl 'TODO' --exclude Makefile --exclude-dir venv)

edit_debug:
	vim $$(grep -rIl 'DEBUG' --exclude Makefile --exclude-dir venv)

print: print_todo print_debug print_comments
