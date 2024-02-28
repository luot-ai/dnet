#!/bin/bash

# Set the path to the riscv64-unknown-linux-gnu-readelf and riscv64-unknown-linux-gnu-objdump
READELF=riscv64-unknown-linux-gnu-readelf
OBJDUMP=riscv64-unknown-linux-gnu-objdump

# Output directory
OBJDIR=./obj
OUTDIR=./important

# Create the output directory if it doesn't exist
cd $OBJDIR
mkdir -p $OUTDIR


# List of .o files
FILES=("main.o" "gemm.o" "im2col.o" "winomain.o" "winograd3.o" "winograd4.o" "winograd5.o")

# Iterate over each .o file
for FILE in "${FILES[@]}"; do
    # Extract the filename without extension
    FILENAME=$(basename -- "$FILE")
    FILENAME_NOEXT="${FILENAME%.*}"

    # Run readelf -s and save the output to a file
    $READELF -s $FILE > "$OUTDIR/$FILENAME_NOEXT-symbol"

    # Run objdump -d and save the output to a file
    $OBJDUMP -d $FILE > "$OUTDIR/$FILENAME_NOEXT-objdump.asm"

    echo "Processed: $FILE"
done

echo "Processing complete."
