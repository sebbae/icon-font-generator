DOCKER=`which docker`
SCRIPT=icon-font-generator.sh
CONTAINER_NAME=icon-font-generator

.DEFAULT_GOAL := build

build: build-container

build-container:
		$(DOCKER) build -t $(CONTAINER_NAME) .

install:
		install --mode 755 $(SCRIPT) $(BINDIR)/

uninstall: 
		m -rf $(BINDIR)/$(SCRIPT)

all: build install

