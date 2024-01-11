SLIVER_CLIENT_PATH  := $(HOME)/.sliver-client
ALIASES := $(wildcard aliases/*)
ALIAS_TARGETS = $(addprefix $(SLIVER_CLIENT_PATH)/, $(ALIASES))

all: $(ALIAS_TARGETS)

$(ALIAS_TARGETS): $(ALIASES)
	cp -r $^ $(SLIVER_CLIENT_PATH)/aliases
