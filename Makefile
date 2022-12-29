.PHONY: clean venv install run

setup: venv install

venv:
	@echo "Creating python virtual environment in 'venv' folder..."
	@python3 -m venv venv

install:
	@echo "Installing python packages..."
	@. venv/bin/activate && pip install -r requirements.txt

clean:
	@echo "Cleaning previous python virtual environment..."
	@rm -rf venv

run:
	@. venv/bin/activate && python3 app/init.py
