# Planday-clone

Things to be implemented:
* Organizations
	* name

* Employee groups
	* organization_id
	* name
	* min_age

* Employees
	* organization_id
	* employee_group_id
	* firstname
	* lastname
	* age
	* email
	* password_digest

* Places
	* organization_id
	* employee_group_id
	* name

* Shifts
	* organization_id
	* place_id
	* time_from
	* time_to
	* employee_id - if null the shift is available

* Requests
	* organization_id
	* shift_id
	* accepted - is the request accepted or denied?

Specification:
* Add an organization
* Add users to an organization
* Add places (eg. in a club there is two bars, bar1 and bar2)
* Add shifts
* Request shifts

Design:
* Dashboard
	* displays the current shifts (both available and unavailable)
* Schedule
	* displays employees and employee groups
	* displays the current shifts (both available and unavailable)
* People
	* all employees and what group they belong to


Take a look at planday: www.planday.dk
Dashboard: https://ga1.imgix.net/screenshot/o/101331-1457434303-756816?ixlib=rb-1.0.0&ch=Width%2CDPR&auto=format

# Contributors:
* @jimmypoulsen(https://github.com/jimmypoulsen/)
* @emilbaekdahl(https://github.com/emilbaekdahl/)
* @frederikspang(https://github.com/frederikspang/)
* @sansemand(https://github.com/sansemand/)
* @C0DK(https://github.com/c0dk/)