MMDS:=$(wildcard *.mmd)
SVGS:=$(patsubst %.mmd,img/%.svg,$(MMDS))

all: $(SVGS)

clean:
	rm -f $(SVGS)

$(SVGS): img/%.svg : %.mmd
	mmdc -t neutral -i $< -o $@
