#!/bin/bash -x

echo "Welcome to Employee Wage Computation Problem"
isPresent=1
wageperhour=20
fulldayhour=8
parttimehour=4
totaldays=0
totalhours=0
dailywage=0
parttimewage=0
monthlyfulltimewage=0
monthlyparttimewage=0
persontype=$(( 1+$RANDOM%2 ))
echo $persontype
noofdays=20
x=1

while [ true ]
do
   if [ $totalhours -lt 100 ]
then
   if [ $totaldays -lt 20 ]
then

	randomcheck=$(( 1+$RANDOM%2 ))
	case $randomcheck in

	1)
              echo "Employee is Present"
	      if [ $persontype -eq 1 ]
	         then
	         dailywage=$(($wageperhour*$fulldayhour*$randomcheck))
		 arr[$x]=$dailywage
	         arr1[$x]=$monthlyfulltimewage
		 monthlyfulltimewage=$(( $monthlyfulltimewage + $dailywage ))
		 let totalhours+=8
		 let x++
         	 else
                 parttimewage=$(($wageperhour*$parttimehour*$randomcheck))
		 arr[$x]=$parttimewage
		 monthlyparttimewage=$(( $monthlyparttimewage + $parttimewage ))
		 arr1[$x]=$monthlyparttimewage
	         let totalhours+=4
		 let x++
	      fi
	          let totaldays++
	;;

	2)
		echo "Employee is not Present"
		let totaldays++

	;;
esac
	else
		break
    fi
	else
		break
    fi

done

function getworkhours(){
	echo $totalhours
}

workhours=(`getworkhours`)

echo "Total Work Hours : $workhours"
echo "Hours : ${arr[@]}"
echo "Monthly Fulltime wage : $monthlyfulltimewage "
echo "Monthly Parttime wage : $monthlyparttimewage "

for (( i=1;i<${#arr[@]};i++ ))
do
echo "Day : $i Daily Wage : ${arr[$i]} Total Monthly Wage : ${arr1[$i]}"
done|sort
