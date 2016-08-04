Example usage of math_libs.sh

```bash
#!/usr/bin/env bash

source math.sh

a=1
b=2
echo $(add $a $b)
echo $(add $(power 2 3) $(add_all 1 2 3 4))
```
