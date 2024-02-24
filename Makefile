SLIVER_CLIENT_PATH := $(HOME)/.sliver-client
ALIASES := $(wildcard aliases/*)
ALIAS_TARGETS = $(addprefix $(SLIVER_CLIENT_PATH)/, $(ALIASES))

all: $(ALIAS_TARGETS)

$(ALIAS_TARGETS): $(ALIASES)
	cd $(SLIVER)
	mkdir -p $(SLIVER_CLIENT_PATH)/aliases/$(@F)
	cp -r ./aliases/$(@F)/* $(SLIVER_CLIENT_PATH)/aliases/$(@F)/
