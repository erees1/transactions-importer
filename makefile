#################################################################################
# GLOBALS                                                                       #
#################################################################################

SHELL := /bin/bash
PROJECT_DIR := $(shell dirname $(realpath $(lastword $(MAKEFILE_LIST))))

venv:
	@if [ ! -d $PROJECT_DIR/venv ]; then python3 -m venv venv; fi

requirements:
	pip install -r requirements.txt

## Delete all compiled Python files
clean:
	find . -type f -name "*.py[co]" -delete
	find . -type d -name "__pycache__" -delete
