# vicarius-nmap

Vicarius Vulnerability scan is a nmap NSE to detect vulnerabilities. 
It is based on vulscan - https://github.com/scipag/vulscan


The nmap option -sV enables version detection per service which is used to
determine potential flaws according to the identified product. 
The data is looked up in an offline CVE DB that is up-to-date with MITRE-CVE DB (https://cve.mitre.org)
as to March 2022.

INSTALLATION

Please copy the vicarius-vulnerability-scan.nse file into the nmap scripts folder:

   <Nmap Folder>\scripts\vicarius-vulnerability-scan.nse
   
And the cve.csv file into a sub-folder named vicarius-vulnerability-scan:
   
   <Nmap Folder>\scripts\vicarius-vulnerability-scan\cve.csv

USAGE

You have to run the following minimal command to initiate a simple
vulnerability scan:

   nmap -sV --script=vicarius-vulnerability-scan.nse www.example.com


DISCLAIMER

Keep in mind that this kind of derivative vulnerability scanning
heavily relies on the confidence of the version detection of nmap, the
amount of documented vulnerebilities and the accuracy of pattern
matching. The existence of potential flaws is not verified with
additional scanning nor exploiting techniques.
