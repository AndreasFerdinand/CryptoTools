# Crypto Tools

This repository contains a small set of decryption tools.

## Social Security number generator
The `ssngenerator.pl` tool generates all possible Social Security numbers for a given birthdate.

Usage:
```
ssngenerator.pl <prefix> <birtdate> <postfix>
<birthdate> = MMDDYY
```

If you don't need a prefix and a postfix for hte Social Security number use `""` as parameter.

For example to generate all Social Security numbers with the prefix `ssn:` and no postfix for the birthdate 11th May of 1999 and write them to a file use the following command:
```bash
ssngenerator.pl "ssn:" 110599 "" > password.list
```

## PDF decryption
Use `decryptpdf.sh` to decrypt a pdf file using a password list.

Usage:
```
./decryptpdf.sh <password file> <encrypted pdf> <decrypted pdf>
```

Example:
```bash
./decryptpdf.sh passwords.list working.pdf decrypted.pdf
```

Required tools:
`qpdf`
