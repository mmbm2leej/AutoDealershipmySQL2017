select *
  from VEHICLE
  where CUSTOMER_CustID = 7;

//This would be for any purpose of finding all vehicles under any customers ID.


select *
  from TECHNICIAN 
  where TechID > 20 and TechID < 40;

//Pulls up techs within any range, only one expression can also be used if you only have one parameter ex: All techs with ID > 40;


select *
  from CUSTOMER c, VEHICLE v
  where v.CUSTOMER_CustID = c.CustID and v.StockNumber = 5234;

//Pulls up the customers information by matching it with the StockNumber of the vehicle of focus.



select *
  from CUSTOMER c, VEHICLE v, APPOINTMENT a
  where v.StockNumber = a.VEHICLE_StockNumber and a.Date like '2018%' and v.CUSTOMER_CustID = c.CustID;


//Compounded information between Customer Information, Vehicle Information and Appointment Information by simply specifying a date of an expected Appointment.

select *
  from TECHNICIAN t, SHOP s
  where t.Shop = s.ShopID;

//Associates all technicians with their corresponding ShopID

select *
  from SERVICE_INFORMATION si, VEHICLE v
  where si.ServiceType = "OIL CHANGE" and v.Make = "VOLKSWAGEN" and VEHICLE_StockNumber = v.StockNumber and LastServiceDate like "2017%";

// Pull up all vehicle information that has done an oil change, that is a Volkswagen make, while keeping the data between both tables according to their correspondence and also specifying the Date in some form.

select EstimatedHours, ShopID
  from APPOINTMENT a, SERVICE_INFORMATION si, SHOP s
  where a.SERVICE_INFORMATION_ServiceID = si.ServiceID and s.ShopID = a.SHOP_ShopID;

//shows how many hours are booked currently in each shop from the appointments
