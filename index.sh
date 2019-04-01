green=$(tput setaf 2)
blue=$(tput setaf 4)
reset=$(tput sgr0)

name () {
  while read r
  do
    printf "$blue$1: $reset$r\n"
  done
  exit $?
}

dm-do () {
for machine in $(docker-machine ls -q); do
  printf "$green$@$reset\n" | name $machine
  docker-machine ssh $machine $@ | name $machine
  printf '\n'
done
}

