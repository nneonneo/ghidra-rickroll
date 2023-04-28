all: surprise

rickroll-roll.gif:
	wget https://media.tenor.com/x8v1oNUOmg4AAAAd/rickroll-roll.gif

%.h: %.gif
	xxd -i $^ > $@

%-au.h: %.au
	xxd -i $^ > $@

surprise: surprise.c rickroll-roll.h rickroll-au.h
	$(CC) $< -O2 -s -o $@

.PHONY: all
