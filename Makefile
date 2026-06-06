.PHONY: format

format:
	isort generate.py tugra
	yapf -i -r *.py generate.py tugra
