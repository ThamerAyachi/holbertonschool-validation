
## What is in the archive and how to unarchive it?

The archive ```awesome-website.zip``` contains awesome-api binary (api server) file and the dist/ directory (directory compiled).
To unarchive use the following command :  ```unzip awesome-webstite.zip```

## What are the commands to start and stop the application?

To **RUN** the application : ```make run```
To **STOP** the application : ```make stop```

## How to customize where the application logs are written?

As default logs are written in ```awesome-api.log``` file. If you want change this localisation use this command : ```make run > [Path/File_name].log 2>&1```
