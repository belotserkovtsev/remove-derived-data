ROOT_DIR:=$(shell dirname $(realpath $(firstword $(MAKEFILE_LIST))))
all:
	@echo "Giving permissions..."
	@chmod u+x remove_derived_data.sh
	@echo "Creating new command..."
	@echo "source $(ROOT_DIR)/remove_derived_data.sh" >> $(HOME)/.bash_profile
	@echo "All set! Try running rdd in new terminal window"
