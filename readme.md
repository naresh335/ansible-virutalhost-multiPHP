## Apache Virutalhost configuration with multi PHP

### All in One Installation script

```sh
curl -L https://git.io/JYnOL | sh
```

#### Create your first virtual host
```sh
vh -c -php 8.1 -url app.test
```
> Note: make sure to update `php,url` arguments accordingly

optional -dir argument defaults to */home/dev/projects* however can be overrided by providing a value to -dir

Examples for `-dir` argument.

| if `-dir` = | Full path used in installation |
| ------ | ------ |
| projects | */home/dev/projects* |
| Workspace | */home/dev/Workspace* |
| Documents/public_html | */home/dev/Documents/public_html* |

#### logs directory
| if `-dir` = | Full path for logs dir |
| ------ | ------ |
| projects | */home/dev/projects/logs* |
| Workspace | */home/dev/Workspace/logs* |
| Documents/public_html | */home/dev/Documents/public_html/logs* |

##### since root access is required for installation authenticate installtion with your system password

##### let the installation complete, once completed visit the url provided to script.

### Updating this script 

```sh
vh -u
```
