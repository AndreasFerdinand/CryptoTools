# Crypto Tools

This repository contains a small set of decryption tools.

## Social Security number generator
The `ssngenerator.pl` tool generates all possible Austrian Social Security numbers for a given birthdate.

Usage:
```
ssngenerator.pl <birtdate>
<birthdate> = MMDDYY
```

For example to generate all Social Security numbers for the birthdate 11th May of 1999 and to write them to a file use the following command:
```bash
ssngenerator.pl 110599 > password.list
```

If a prefix and a postfix should be added to each line, the following commands can be used:

* Create a new file:
  ```bash
  awk '{ print "prefix" $0 "postfix" }' password.list > newpassword.list
  ```
* Inplace:
  ```bash
  gawk -i inplace '{ print "prefix" $0 "postfix" }' password.list
  ```

## PDF decryption
Use `decryptpdf.sh` to decrypt a pdf file using a password list.

Usage:
```bash
./decryptpdf.sh <password file> <encrypted pdf> <decrypted pdf>
```

Example:
```bash
./decryptpdf.sh passwords.list working.pdf decrypted.pdf
```

Required tools:
`qpdf`
