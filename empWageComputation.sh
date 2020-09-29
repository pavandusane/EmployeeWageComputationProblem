echo "Welcome to Employee Wage Computation Problem"
isPresent=1
randomCheck=$(( RANDOM%2 ))
wageperhour=20
fulldayhour=8

if [ $isPresent -eq $randomCheck ]
then
	echo "Employee is Present"
else
	echo "Employee is not Present"
fi

dailywage=$(($wageperhour*$fulldayhour*$randomcheck))
echo "Daily Employee Wage : $dailywage"
