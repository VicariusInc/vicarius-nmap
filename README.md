# vicarius-nmap

Get instant visibility into your organization’s network with a comprehensive scan that provides detailed information about the devices on the network, vulnerabilities, and more at the time of the scan. 

Vicarius’ vulnerability scan is an NSE (Nmap scripting engine) used to detect vulnerabilities. It is based on vulscan - https://github.com/scipag/vulscan. 

The Nmap option -sV enables version detection per service, which is used to determine flaws according to the identified product. The data is looked up in an offline CVE database that is up to date with MITRE-CVE (https://cve.mitre.org) as of March 2022.

Installation:
Please copy the vicarius-vulnerability-scan.nse file into the Nmap scripts folder:
\scripts\vicarius-vulnerability-scan.nse

Unzip and copy the cve.csv file into a sub-folder named vicarius-vulnerability-scan:
\scripts\vicarius-vulnerability-scan\cve.csv

Usage:
Run the following minimal command to initiate a simple vulnerability scan:
nmap -sV --script=vicarius-vulnerability-scan.nse www.example.com

DISCLAIMER
Keep in mind that this kind of derivative vulnerability scanning heavily relies on the confidence of the version detection of Nmap, the amount of documented vulnerabilities, and the accuracy of pattern matching. The existence of potential flaws is not verified with additional scanning or exploiting techniques.
