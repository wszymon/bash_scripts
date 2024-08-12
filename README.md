This is repo with useful bash script for linux administrating. 

1. Configs backup. (configs_backup.sh)		
  
    Admin can add his own source and destination directory. Files will be compressed to .tar.gz file. Defaults parameters are:
        1. /backup/configs  - destination
        2. /etc             - source

    For extract backup file to right directory run command: 
        tar -xzf "path to your .tar.gz file" -C /

    * requires sudo 

2. User management. (user_mng.sh)

    Admin can add, delete user and reset password using simple command like: 
    - sudo ./user_mng.sh (add/del/reset) (user name) (password)
    
    When user is deleting then password is not required

    * requires sudo
