# MakeFile by raphaunix

# .PHONY defines parts of the makefile that are not dependant on any specific file
# This is most often used to store functions
.PHONY: help clean run all

# Defines the default target that `make` will to try to make, or in the case of a phony target, execute the specified commands
# This target is executed whenever we just type `make`
.DEFAULT_GOAL: help

# The @ makes sure that the command itself isn't echoed in the terminal
help:
	@bash scripts/makefile.sh __help

clean:
	@bash scripts/makefile.sh __remove_containers

run:
	@bash scripts/makefile.sh __run_docker

local:
	@bash scripts/makefile.sh __hugo_local

all: clean run
