SLIVER_CLIENT_PATH := $(HOME)/.sliver-client
ALIASES := $(wildcard aliases/*)
ALIAS_TARGETS = $(addprefix $(SLIVER_CLIENT_PATH)/, $(ALIASES))

all: $(ALIAS_TARGETS)

$(ALIAS_TARGETS): $(ALIASES)
	mkdir -p $(SLIVER_CLIENT_PATH)/aliases/$(@F)
	cp ./aliases/$(@F)/* $(SLIVER_CLIENT_PATH)/aliases/$(@F)/
