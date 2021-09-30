# DOCKER VERSION
* Update
* `sudo apt update`
* Install Docker
* `sudo apt install docker.io`
* Clone repo
* `git clone https://github.com/byt3bl33d3r/ItWasAllADream`
* Build app
* `cd ItWasAllADream`
* `sudo docker build -t itwasalladream .` - remember the `.` at the end, it is important
* Run scanner
* `sudo docker run -it itwasalladream -u {unpriv account username} -p {unpriv account password} -d aggies.usu.edu {IP or Hostname}`
* Use an unprivileged account for the domain and password. Ask someone about it and it`ll all work out.


# COMPLETELY AUTOMATED PROCESS
* YOU MUST EDIT Pt_2_PrintNightmareMassScan.sh AND INPUT YOUR OWN CREDENTIALS AND SUCH FOR THE SCANNER! REPLACE EVRYTHING IN CURLY BRACKETS
* Make the Pt_1_PrintNightmareMassScan.sh an executable via `chmod +x`
* Now make Pt_2_PrintNightmareMassScan.sh executable via `chmod +x"
* Run `./Pt_1_PrintNightmareMassScan.sh` and type `y` to enter first time setup. This is only required once
* Now run `./Pt_1_PrintNightmareMassScan.sh` and type `n` to setup the poerty environment
* Now youll be in a poetry shell and need to backspace one directory so type `cd ../`
* Now run `./Pt_2_PrintNightmareMassScan.sh` and when prompted be sure to type in the full path to your host list

# FILES THAT WILL BE CREATED
* A new host list file with hosts that are down or were unable to be verified as vulnerable
* A file called Vulnerable in csv format that lists only the vulnerable devices from the original host file
* A Combined file of all the reports from the scan
