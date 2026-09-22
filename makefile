.PHONY: init clean

init:
	@echo "Installing lsz..."
	mkdir -p ~/.local/bin
	cp lsz ~/.local/bin/lsz
	chmod +x ~/.local/bin/lsz
	@echo "Creating system symlink (sudo password may be required)..."
	sudo ln -sf ~/.local/bin/lsz /usr/bin/lsz
	@echo "Creating cache folder"
	mkdir ~/.cache/LSZ
	@echo "Installation complete! Type 'lsz' to run."
clean:
	@echo "Removing lsz installation..."
	rm -f ~/.local/bin/lsz
	sudo rm -f /usr/bin/lsz
	sudo rm -rf ~/.cache/LSZ
	@echo "Clean complete."
