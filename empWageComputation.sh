echo "Welcome to Employee Wage Computation Problem"
isPresent=1
randomcheck=$(( 1+$RANDOM%2 ))
wageperhour=20
fulldayhour=8
parttimehour=4

case $randomcheck in

	1)
	     echo "Employee is Present"
	     dailywage=$(($wageperhour*$fulldayhour*$randomcheck))
	     parttimewage=$(($wageperhour*$parttimehour*$randomcheck))
	;;
	2)

		echo "Employee is not Present"
esac

echo "Daily Employee Wage : $dailywage"
echo "Part time wage :  $parttimewage"
