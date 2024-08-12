This is repo with useful bash script for linux administrating. 

1. Configs backup.
  
    User can add his own source and destination directory. Files will be compressed to .tar.gz file. Defaults parameters are:
        1. /backup/configs  - destination
        2. /etc             - source

    For extract backup file to right directory run command: 
        tar -xzf "path to your .tar.gz file" -C /


