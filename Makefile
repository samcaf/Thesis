.PHONY : todo debug check

.DEFAULT_GOAL := print

print_todo:
	# --------------------------------
	# TODO list
	# --------------------------------
	@grep -r "TODO" --exclude Makefile --exclude=\*.aux --exclude-dir .git;

print_cite:
	# --------------------------------
	# cite list
	# --------------------------------
	@fgrep -r "\\cite{}" --exclude Makefile --exclude=\*.aux --exclude-dir .git;
	@fgrep -r "\Reff{}" --exclude Makefile --exclude=\*.aux --exclude-dir .git;

print_sam:
	# --------------------------------
	# comment list
	# --------------------------------
	@fgrep -r "\sam" --exclude Makefile --exclude thesis.log --exclude=\*.aux --exclude includes/comment_utils.tex --exclude chapters/ee_to_hadrons.tex --exclude-dir .git;
	@printf "\n"

print_debug:
	# --------------------------------
	# DEBUG list
	# --------------------------------
	@grep -r "DEBUG" --exclude Makefile --exclude=\*.aux --exclude-dir .git

print_comments:
	# --------------------------------
	# Comment list for Sam
	# --------------------------------
	@grep -r \\\\sam --exclude Makefile --exclude=\*.aux --exclude-dir .git
	@printf "\n"

edit_todo:
	vim $$(grep -rIl 'TODO' --exclude Makefile --exclude=\*.aux --exclude-dir .git)

edit_debug:
	vim $$(grep -rIl 'DEBUG' --exclude Makefile --exclude=\*.aux --exclude-dir .git)

print: print_todo print_debug
