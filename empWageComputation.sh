echo "Welcome to Employee Wage Computation Problem"
isPresent=1
randomcheck=$(( RANDOM%2 ))
wageperhour=20
fulldayhour=8
parttimehour=4

if [ $isPresent -eq $randomcheck ]
then
	echo "Employee is Present"
else
	echo "Employee is not Present"
fi

dailywage=$(($wageperhour*$fulldayhour*$randomcheck))
echo "Daily Employee Wage : $dailywage"
parttimewage=$(($wageperhour*$parttimehour*$randomcheck))
echo "Part time wage : " $parttimewage
