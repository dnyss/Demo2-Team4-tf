# Location of virtual environment
VENV := .venv
PYTHON := python3
PIP := $(VENV)/bin/pip
PRECOMMIT := $(VENV)/bin/pre-commit

# Install virtual environment + pre-commit
install: $(VENV)/bin/activate
	$(PIP) install --upgrade pip
	$(PIP) install pre-commit

# Create venv if not exists
$(VENV)/bin/activate:
	$(PYTHON) -m venv $(VENV)

# Run pre-commit on all files
run:
	$(PRECOMMIT) run --all-files

# Install pre-commit hooks
hooks:
	$(PRECOMMIT) install

# Remove venv
clean:
	rm -rf $(VENV)
