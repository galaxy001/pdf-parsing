# pdf-parsing
## Random scripts to extract PDF security details and manipulate hashes

The general workflow to decrypt password protected PDFs is to just use [pdf2john](https://github.com/magnumripper/JohnTheRipper/blob/unstable-jumbo/run/pdf2john.py) and [hashcat](http://hashcat.net/oclhashcat/). To make this process easier I've created a couple of scripts to automate some of the basic legwork. However, note you may have to change the [-m hash type](http://hashcat.net/wiki/doku.php?id=hashcat#options "Hashcat wiki").

    pdfhash.cmd SOME.PDF
    generic-pdf-strategies SOME.PDF-hash.txt

Additionally if you want to know a little bit more about the PDF owner object. Then you might be interested to run `pdf-parser.py`.[[1a]](https://www.synack.com/labs/projects/decrypting-pdf-docs "Decrypting Malicious PDF Documents: Part 1")[[1b]](https://www.synack.com/labs/projects/decrypting-malicious-pdf-documents "Decrypting Malicious PDF Documents: Part 2")[[2]](http://blog.didierstevens.com/2008/10/30/pdf-parserpy/ "Didier Steven's pdf-parser.py") and `extract-owner.py` on the output to get a view of what the hash should look like from pdf2john for comparison purposes.

    pdf-parser.py SOME.PDF > SOME.PDF-parsed.txt
    extract-owner SOME.PDF-parsed.txt