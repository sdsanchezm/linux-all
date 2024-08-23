# LFCS labs

## 


- open file `/home/user/lab/file1.txt`
    - move line 555 to line 1
        - `sed -n '555p' /home/user/lab/file1.txt` > `./temp.txt`
    - remove line 444
        - `sed -i '444d' /home/user/lab/file1.txt`
    - replace occurrences of Wagen with Car
        - `sed -i 's/Wagen/Car/g' /home/user/lab/file1.txt`
            - s: regular substitute
            - g: global" (all occurrences)
    - add a new line of the document with the text "Lorem Ipsum"`

- create a bash script named `testscript1.sh` at `/home/user/scripts/`
    - ensure it can be executed
    - first output should be the user invoking the script
    - second line should be ip of the defaul gateway

- install `tmux`
- create a cron job that kills a process named "scan_fs" owned y root, every minute

- Manage groups
    - create the **testgroup** group
    - create a **testgroup** folder in `/home/user/exam/`
    - make the **testgroup** group the owner of the `/exam/testgroup folder`

- Create a `testuser` user account with the password `tempo987`
- Modify the sudo configuration to let the candidate account access root privileges with no password prompt
- Configure the system so that an empty `PENDINGS` file is automatically created in the home directory of any new user
- Create a group called `techs`

- Create a new user account with the following attributes:
    - Username is `jara`
    - Password is `thecat246`
    - This user’s home directory is defined as `/home/company/jara/`
    - This new user is a member of the existing `techs` group
    - The `/home/company/jara/binaries/` directory is part of the PATH variable

- Create a user account with username `systemadmin` with the attributes:
    - Use a password of `tempo876`
    - This user’s home directory is defined as `/systemadmin/`
    - `systemadmin` has sudo privileges and will not be prompted for a password when using the sudo command
    - The default shell for this user is `zsh`

- Ensure all users can invoke the last command and access a list of users who previously logged in

- Correct the `usertest2` user account so that logins are possible using the password `temp765`
- Set the home directory to `/home/usertest2`

- Alter the devel user account so that it can log into the system with a working bash shell environment

- Find the name of the service which uses TCP port 2605, as documented in `/etc/services`
- write the service name to the file `/home/student/port-2605.txt`
- Find all of the ports used for `TCP` services `IMAP3` and `IMAPS`, again as documented in `/etc/services`, and write those port numbers to the file `/home/company/imap-ports.txt`

- The following tasks may be achieved using the user student’s sudo privileges:
    1. Temporarily mount the filesystem available on `/dev/xvdf2` under `/mnt/backup/`
    2. Decompress and unarchive the `/mnt/backup/backup-primary.tar.bz2` archive into `/opt/`
    - This should result in a new directory (created from the archive itself) named `/opt/proddata/`

- configure the swap partition `/dev/xvdi1` so that it does not become attached automatically at boot time.

- configure the system so that the existing filesystem that corresponds to `/staging` gets persistently mounted in read-only mode

- demonstrate ability to work with archives and compressed files:
    1. Extract all files from archive file `/opt/SAMPLE001.zip`
    into target directory `/opt/SAMPLE001`
    2. Create a tar archive file `/opt/SAMPLE0001.tar`
    containing all files in the directory `/opt/SAMPLE001`
    3. Compress the tar archive file `/opt/SAMPLE0001.tar`
    using the bzip2 compression algorithm
    4. Compress the tar archive file `/opt/SAMPLE0001.tar`
    using the xz compression algorithm
- Make sure that the uncompressed archive file `/opt/SAMPLE0001.tar` is not removed after creating the compressed versions of the archive file!

- A data directory is not used anymore and is about to be archived
- You have been asked to identify and remove some files, before archiving takes place

- demonstrate ability to search for files given various criteria:
    1. Find all executable files in the directory `/srv/SAMPLE002` and remove them
    2. Find all files in the directory /srv/SAMPLE002, which have not been accessed during the last month and remove them
    3. Find all empty directories in the directory `/srv/SAMPLE002` and remove them
    4. Find all files in the directory `/srv/SAMPLE002` with a file extension of .tar. 
    - Write a list of matching filenames, one per line, to the file `/opt/SAMPLE002/toBeCompressed.txt` which has already been created. 
    - Ensure that you specify a relative path to each file, using `/srv/SAMPLE001` as the base directory for the relative path













