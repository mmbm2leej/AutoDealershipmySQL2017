select distinct SERVICE_INFORMATION_ServiceID,VEHICLE_StockNumber, Date, t., v.
  from APPOINTMENT, TECHNICIAN t, VEHICLE v
  where v.StockNumber = VEHICLE_StockNumber and TechID = TECHNICIAN_TechID and Date like "2018-06%";



select *
  from APPOINTMENT
  where Date = "2018-02-12" and Time = "00:08:00";


select *
  from APPOINTMENT
  where VEHICLE_StockNumber in
  (
    select StockNumber
    from VEHICLE
    where CUSTOMER_CustID in
    (
      select CustID
      from CUSTOMER
      where FirstName = "Alex" and LastName = "Ingram" and Email = "aing23@yahoo.com" and Phone = "2147483647"
      )
    );
 

select count(distinct StockNumber) as Number_of_SUVs
  from VEHICLE, APPOINTMENT
  where BodyType = "SUV" and VEHICLE_StockNumber = StockNumber;
  

select *
  from TECHNICIAN t
  where t.TechID in
  (
    select TECHNICIAN_TechID
    from APPOINTMENT a
    where a.SERVICE_INFORMATION_ServiceID in 
    (select ServiceID 
      from SERVICE_INFORMATION 
      where ServiceType = "FULL") 
    and a.VEHICLE_StockNumber in 
    (select StockNumber 
      from VEHICLE 
      where Make = "AUDI" and Model = "TT")
    );
