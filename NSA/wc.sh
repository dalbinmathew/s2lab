#!/bin/bash
echo "enter here:"
cat > test4.txt
echo "Number of lines: $(wc -l < test4.txt)"
echo "Number of words: $(wc -w < test4.txt)"
echo "Number of characters: $(wc -c < test4.txt)"