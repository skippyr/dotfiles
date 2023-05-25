function docker::get_all_containers
{
	docker ps -a |
	awk '{print $1}' |
	grep -v "CONTAINER"
}

