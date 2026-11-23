# Compiler Design Practicals

Compiler Design (CD) practical programs for college coursework.

## Practical List

| No. | Title | Tools |
|-----|-------|-------|
| 1 | First and Follow of a Grammar | C |
| 2 | Recursive Descent Parser | C |
| 3 | Shift-Reduce Parser | C |
| 4 | Intermediate Code Generation | C |
| 5 | Token Recognition using Lex | Lex |
| 6 | Word and Number Recognition using Lex | Lex |
| 7 | Number System Classification using Lex | Lex |
| 8 | Count Words, Characters and Lines using Lex | Lex |
| 9 | Lexical Analyzer using Lex | Lex |
| 10 | Count Vowels and Consonants using Lex | Lex |
| 11 | Check if String Ends with "bb" using Lex | Lex |
| 12 | Simple Desk Calculator using YACC | Lex + YACC |

## How to Compile & Run

### Lex Programs (Practical 5–11)
```bash
flex program.l
gcc lex.yy.c -o program.exe
./program.exe
```

### YACC Program (Practical 12)
```bash
bison -dy calc.y
flex calc.l
gcc lex.yy.c y.tab.c -o calc.exe
./calc.exe
```

## Tools Used
- **GCC** (via MSYS2 UCRT64)
- **Flex** (Lex)
- **Bison** (YACC)
