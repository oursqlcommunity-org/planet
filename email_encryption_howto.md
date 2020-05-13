# Email Encryption How-to

This document aims at explaining how to encrypt your email address for
submission in an issue or a pull request.  The current version of the document
can be found in (1).

(1): https://github.com/oursqlcommunity-org/planet/blob/master/email_encryption_howto.md

For this, you need a PGP encryption tool.  This tutorial uses gpg2, an OpenPGP
encryption and signing tool.

1. **Import the public key** stored at the root of the planet repository (2):

  - copy the key file to your computer,
  - run the command `gpg --import key_file.pub`.

(2): https://github.com/oursqlcommunity-org/planet/blob/master/gpg2_planet_AT_oursqlcommunity_DOT_org.pub

2. **Encrypt your email address** and encode the output in base64 on a single line:

(The public key is not signed, but this should not be too problematic as you are
downloading it via https from GitHub which you probably can trust, with the
assumption that you are trusting the editor of the repo with your email address,
and in the end this is an email address, not top secret information.)

```
echo "your_email@example.com" |
  gpg2 --encrypt --recipient planet@oursqlcommunity.org |
  base64 | paste -s -d ""
gpg: B0D49338723B4BC1: There is no assurance this key belongs to the named user

sub  rsa2048/B0D49338723B4BC1 2020-05-12 Planet for the MySQL Community <planet@oursqlcommunity.org>
 Primary key fingerprint: 5696 B174 1868 5ECE B442  8EF2 F1DE 706E F1D3 992F
      Subkey fingerprint: 0181 C6CE 6654 FAC4 44EE  3883 B0D4 9338 723B 4BC1

It is NOT certain that the key belongs to the person named
in the user ID.  If you *really* know what you are doing,
you may answer the next question with yes.

Use this key anyway? (y/N) y
hQEMA7DUkzhyO0vBAQf/cmz2almdaFBU9IeHVb+py7AZwwniWdRs1k/dMyzZSRONXD9zGzalndJ5d0o1MEp5a8QUj2/wFygeL+krgqRgTLdYiTN/llQvPT3V8rXgTCbI/FNGFvI0a1/xf2TLqkHSX/ytCqWB2JwcEHMyLwja4XyuGa182ss97hI/L5pmG8T0Ts1rc5HDOq+6IaLcxCR7txBQdIOsIxnTwe/qjdaouOlHIJbNHMXpJBIca+z/w6+H9Es2QbvWZvLAqbMNyXyJk1sDeP2q91ZfKwtaxQEkJB52QCR/MJAMalM/EB6U+RGXoYk0BkcV5ZuMG9dmxFwgtAABhVMCextSULEepJM8QdJSAeqhMzlAmbCv9e3wjMiqTqHOgMw/Lye2VIKwh2ZSp/Kbc18rJUUxe1yFuwNnDgVkEj9Tm8InL+J9hJaFv86uGPMNiTIzxB25r8cXXu8iYXxEnw==
```

3. **Share the one-line gpg2 output** in an
[Issue](https://github.com/oursqlcommunity-org/planet/issues) or a
[Pull request](https://github.com/oursqlcommunity-org/planet/pulls).
