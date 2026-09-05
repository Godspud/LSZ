.PHONY: init clean

init:
	@echo "Installing lsz..."
	# 1. Ensure the target user directory exists
	mkdir -p ~/.local/bin
	# 2. Copy (don't move!) the file over to keep Git intact
	cp lsz ~/.local/bin/lsz
	# 3. Make it executable
	chmod +x ~/.local/bin/lsz
	# 4. Create the symlink to /usr/bin/lsz
	@echo "Creating system symlink (sudo password may be required)..."
	sudo ln -sf ~/.local/bin/lsz /usr/bin/lsz
	@echo "Installation complete! Type 'lsz' to run."
clean:
	@echo "Removing lsz installation..."
	rm -f ~/.local/bin/lsz
	sudo rm -f /usr/bin/lsz
	@echo "Clean complete."
