# Stala, a stack oriented programming language

## Syntax

See the examples folder for a collection of stala programs.

### Comments
```
# This is a comment
```

### Numbers
```
# Positive integer
123

# Negative integer
-123

# Hexadecimal number 255
0xff

```

### Strings
```
# A 0 terminated string
"Hello world!"

```

### Local variable
```
# Assign x the value 99
99 let x

```

### Function declaration
```
func example_function arg1 arg2 arg3 do
  # function body
end
```

### Return
```
# return the value 0
0 ret

func example_function_that_returns_0 do
  # push the value 0 and return
  0 ret

  # unreachable
end
```

### Call a function
```
func main do
  # compute 9^2 = 81
  9 square
end

func square x do
  x x *
end
```

### If statement
```
condition if
   # code to run if condition is true
end
```

### If / Else
```
condition if
  # code to run if condition is true
else
  # code to run if condition is false
end
```

### If chain
```
condition_1 if
  # code to run if condition_1 is true
else condition_2 elif
  # code to run if condition_2 is true
else condition_3 elif
  # code to run if condition_3 is true
end
```

### Another if chain
```
condition_1 if
  # code to run if condition_1 is true
else condition_2 elif
  # code to run if condition_2 is true
else condition_3 elif
  # code to run if condition_3 is true
else
  # code to run if no condition is true
end
```

### While loop
```
while condition if
  # code to run while condition is true
end
```

### Inline assembly
```
# In x86 64 assembly, load the value 123 into register rax
asm "mov rax, 123"
```

### Includes
```
# Include code from other files
include "stdlib.stala"
```




