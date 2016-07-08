Create and update mirrors for repositories by list
==================================================

Script to create local copies - mirrors for remote repositories.  
Helps to speed up work with big repositories like OXID-eSales/oxideshop_ce.

# Usage

1. Create file repositories_list.txt
1. List all wanted repositories to the file repositories_list.txt
  
    Example:

        OXID-eSales/oxideshop_ce  
        OXID-eSales/coding_standards  
        OXID-eSales/PHP_CodeSniffer
        
    
    *Note: leave an empty line at the end of the list otherwise last repository would be ignored.*

1. Run script which updates repository mirrors.  
   Script fetch changes and clone repository if mirror does not exist.

    Run update this way if you do not have parallel installed:

        cd git_mirrors  
        ./clone_fetch.sh

    Run updates faster if you have parallel installed:

        cd git_mirrors  
        ./clone_fetch_parallel.sh

1. Update composer.json file in project 

    Example before:
    
        "repositories":[
            {
                "name": "oxid-esales/oxideshop-ce",
                "type": "vcs",
                "url": "https://github.com/OXID-eSales/oxideshop_ce.git"
            }
        ]

    Example after: 
    
        "repositories":[
            {
                "name": "oxid-esales/oxideshop-ce",
                "type": "vcs",
                "url": "/var/www/git_mirror/mirrors"
            }
        ]
        
    *Note: replace ``/var/www/`` with a path where ``git_mirror`` was cloned out.*
