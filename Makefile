##
# Advent of Code 2022
#
# @file
# @version 0.1

.PHONY: all clean

SRCS = $(wildcard day*.smu)
DAYS = $(SRCS:%.smu=%)

all: $(DAYS)

heap.o io.o: %.o: %.smu
	$(SCHMU) -m $<

support: heap.o io.o
	$ touch support

$(DAYS): %: %.smu support
	$(SCHMU) $<

clean:
	rm *.o $(DAYS) *.smi support

# end
