.PHONY: all clean

all: lrsc

-include lrsc.d

lrsc:
	rustc --crate-type bin --emit link,dep-info src/lib.rs

clean:
	rm lrsc
