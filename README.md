Collection of libraries that allows for Lisp-like function calling syntax. This will abstract away some of Bash's cryptic syntax and make it easier for developers to write shell scripts.

Example usage of math_libs.sh:

```bash
#!/usr/bin/env bash

source math_libs.sh

echo $(add $(power 2 3) $(add_all 1 2 3 4))
```
