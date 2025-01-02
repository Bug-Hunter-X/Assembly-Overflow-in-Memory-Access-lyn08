# Assembly Overflow in Memory Access

This repository demonstrates a potential memory access violation in assembly language due to an unchecked address calculation overflow within a `mov` instruction.

The `bug.asm` file contains the problematic code. The `bugSolution.asm` file provides a corrected version with overflow checks implemented.

This is a common error in low-level programming, highlighting the importance of careful consideration of memory addresses and potential overflows when working directly with memory.