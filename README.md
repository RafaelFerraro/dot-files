## DotFiles - list of all personal scripts and useful things

#### Get a list of edited files from git status in a space-separated list -- new file names if renamed file
```shell
git status --porcelain | awk '/^R/ {print $4} !/^R/ {print $2}' | xargs
```

Useful in case you need to append this command to another command, for example:
```shell
docker-compose run container bundle exec rubocop $(git status --porcelain | awk '/^R/ {print $4} !/^R/ {print $2}' | xargs)
```
