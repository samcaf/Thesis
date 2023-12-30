.PHONY : todo debug check

.DEFAULT_GOAL := print

print_todo:
	# --------------------------------
	# TODO list
	# --------------------------------
	@grep -r "TODO" --exclude Makefile --exclude=\*.aux --exclude-dir venv;
	@printf "\n"

print_debug:
	# --------------------------------
	# DEBUG list
	# --------------------------------
	@grep -r "DEBUG" --exclude Makefile --exclude=\*.aux --exclude-dir venv

print_comments:
	# --------------------------------
	# Comment list for Sam
	# --------------------------------
	@grep -r \\\\sam --exclude Makefile --exclude=\*.aux --exclude-dir venv
	@printf "\n"

edit_todo:
	vim $$(grep -rIl 'TODO' --exclude Makefile --exclude=\*.aux --exclude-dir venv)

edit_debug:
	vim $$(grep -rIl 'DEBUG' --exclude Makefile --exclude=\*.aux --exclude-dir venv)

print: print_todo print_debug
