

.PHONY: install
install:
	makepkg -si

.PHONY: uninstall
uninstall:
	yay -R pgcat

.PHONY: srcinfo
srcinfo:
	makepkg --printsrcinfo > .SRCINFO

.PHONY: clean
clean:
	rm -rf ./pkg
	rm -rf ./src
	rm -rf ./pgcat*.*

.PHONY: sums
sums:
	updpkgsums
