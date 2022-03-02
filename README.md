# SED examples

## Example 1

```bash
> ed 's/Tail/tails/; s/Bull/, bulls/'  test-sed.txt 
 tails
Hen
Cat
, bulls
```

## Example 2

```bash
> sed 's/Tail/tails/' test-sed.txt 
 tails
Hen
Cat
Bull
```

## Example 3

```bash
> sed -e 's/Tail/ tails/' -e 's/Bull/, bulls/' test-sed.txt 
 tails
Hen
Cat
, bulls
```

## Example 4

```bash
sed -n -e 's/Tail/tails/p' -e 's/Bull/bulls/p' test-sed.txt 
tails
bulls
```