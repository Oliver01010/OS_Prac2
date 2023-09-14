

lru:
	clear
	python memsim.py Simple\ Traces/trace3 12 lru debug


sample:
	@echo "\sample.trace"
	python memsim.py Application\ Traces/sample.trace 12 lru quiet


main:
	clear
	@echo "bzip.trace:"
	python memsim.py Application\ Traces/bzip.trace 5 lru quiet

	@echo "\ngcc.trace"
	python memsim.py Application\ Traces/gcc.trace 12 lru quiet
	
	@echo "\nsixpack.trace"
	python memsim.py Application\ Traces/sixpack.trace 12 lru quiet

	@echo "\nswim.trace"
	python memsim.py Application\ Traces/swim.trace 16 lru quiet


swim:
	clear
	@echo "\nswim.trace"
	python memsim.py Application\ Traces/swim.trace 3 lru quiet
	@echo "\nswim.trace"
	python memsim.py Application\ Traces/swim.trace 5 lru quiet
	@echo "\nswim.trace"
	python memsim.py Application\ Traces/swim.trace 8 lru quiet
	@echo "\nswim.trace"
	python memsim.py Application\ Traces/swim.trace 12 lru quiet
	@echo "\nswim.trace"
	python memsim.py Application\ Traces/swim.trace 16 lru quiet
	@echo "\nswim.trace"
	python memsim.py Application\ Traces/swim.trace 20 lru quiet
	@echo "\nswim.trace"
	python memsim.py Application\ Traces/swim.trace 24 lru quiet
	@echo "\nswim.trace"
	python memsim.py Application\ Traces/swim.trace 32 lru quiet
	@echo "\nswim.trace"
	python memsim.py Application\ Traces/swim.trace 64 lru quiet

	@echo "\nswim.trace"
	python memsim.py Application\ Traces/swim.trace 3 esc quiet
	@echo "\nswim.trace"
	python memsim.py Application\ Traces/swim.trace 5 esc quiet
	@echo "\nswim.trace"
	python memsim.py Application\ Traces/swim.trace 8 esc quiet
	@echo "\nswim.trace"
	python memsim.py Application\ Traces/swim.trace 12 esc quiet
	@echo "\nswim.trace"
	python memsim.py Application\ Traces/swim.trace 16 esc quiet
	@echo "\nswim.trace"
	python memsim.py Application\ Traces/swim.trace 20 esc quiet
	@echo "\nswim.trace"
	python memsim.py Application\ Traces/swim.trace 24 esc quiet
	@echo "\nswim.trace"
	python memsim.py Application\ Traces/swim.trace 32 esc quiet
	@echo "\nswim.trace"
	python memsim.py Application\ Traces/swim.trace 64 esc quiet

	@echo "\nswim.trace"
	python memsim.py Application\ Traces/swim.trace 3 rand quiet
	@echo "\nswim.trace"
	python memsim.py Application\ Traces/swim.trace 5 rand quiet
	@echo "\nswim.trace"
	python memsim.py Application\ Traces/swim.trace 8 rand quiet
	@echo "\nswim.trace"
	python memsim.py Application\ Traces/swim.trace 12 rand quiet
	@echo "\nswim.trace"
	python memsim.py Application\ Traces/swim.trace 16 rand quiet
	@echo "\nswim.trace"
	python memsim.py Application\ Traces/swim.trace 20 rand quiet
	@echo "\nswim.trace"
	python memsim.py Application\ Traces/swim.trace 24 rand quiet
	@echo "\nswim.trace"
	python memsim.py Application\ Traces/swim.trace 32 rand quiet
	@echo "\nswim.trace"
	python memsim.py Application\ Traces/swim.trace 64 rand quiet


sixpack:
	clear
	@echo "\nsixpack.trace"
	python memsim.py Application\ Traces/sixpack.trace 3 lru quiet
	@echo "\nsixpack.trace"
	python memsim.py Application\ Traces/sixpack.trace 8 lru quiet
	@echo "\nsixpack.trace"
	python memsim.py Application\ Traces/sixpack.trace 12 lru quiet
	@echo "\nsixpack.trace"
	python memsim.py Application\ Traces/sixpack.trace 16 lru quiet
	@echo "\nsixpack.trace"
	python memsim.py Application\ Traces/sixpack.trace 24 lru quiet
	@echo "\nsixpack.trace"
	python memsim.py Application\ Traces/sixpack.trace 32 lru quiet


gcc:
	clear
	@echo "\ngcc.trace"
	python memsim.py Application\ Traces/gcc.trace 3 lru quiet
	@echo "\ngcc.trace"
	python memsim.py Application\ Traces/gcc.trace 8 lru quiet
	@echo "\ngcc.trace"
	python memsim.py Application\ Traces/gcc.trace 12 lru quiet
	@echo "\ngcc.trace"
	python memsim.py Application\ Traces/gcc.trace 16 lru quiet
	@echo "\ngcc.trace"
	python memsim.py Application\ Traces/gcc.trace 24 lru quiet
	@echo "\ngcc.trace"
	python memsim.py Application\ Traces/gcc.trace 32 lru quiet




bzip:
	clear
	@echo "\nbzip.trace:"
	python memsim.py Application\ Traces/bzip.trace 2 lru quiet
	@echo "\nbzip.trace:"
	python memsim.py Application\ Traces/bzip.trace 4 lru quiet
	@echo "\nbzip.trace:"
	python memsim.py Application\ Traces/bzip.trace 6 lru quiet
	@echo "\nbzip.trace:"
	python memsim.py Application\ Traces/bzip.trace 8 lru quiet
	@echo "\nbzip.trace:"
	python memsim.py Application\ Traces/bzip.trace 16 lru quiet
	@echo "\nbzip.trace:"
	python memsim.py Application\ Traces/bzip.trace 32 lru quiet