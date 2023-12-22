print_mem(){
	CPU=$(top -bn1 | grep Cpu | awk '{print $2}')
	printf "%s" "$SEP1"
	printf "CPU:$CPU"
	printf "%s\n" "$SEP2"
}
