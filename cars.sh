#! /bin/bash
# cars.sh
# Nayeli Castro

while true; do
	echo -n "Press 1 to enter a new car. Press 2 to display the list of cars. Press 3 to exit the program: ";
       	read -r  CHOICE;
	case "$CHOICE" in
		"1") echo "Enter the year of the car: ";
			read -r a;
			echo "Enter the make: ";
			read -r b;
			echo "Enter the model: ";
			read -r c;
			d="$a:$b:$c";
			echo "$d" >> My_old_cars;
			;;
		"2") sort My_old_cars;
			;;
		"3") echo "Goodbye";
			break;
			;;
		*) echo "Not a valid input.";
			;;
	esac
done
