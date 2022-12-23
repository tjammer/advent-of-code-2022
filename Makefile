##
# Advent of Code 2022
#
# @file
# @version 0.1

.PHONY: all clean

SRCS = $(wildcard day*.smu)
DAYS = $(SRCS:%.smu=%)

all: $(DAYS)

heap.o io.o util.o hashtbl.o parser.o: %.o: %.smu
	$(SCHMU) -m $<

$(DAYS): %: %.smu heap.o io.o util.o hashtbl.o parser.o
	$(SCHMU) $<

clean:
	rm *.o $(DAYS) *.smi

# end
