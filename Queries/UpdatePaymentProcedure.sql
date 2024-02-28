Create procedure UpdatePayment @billId int , @amount int 
as
update p 
set p.OrderAmount=@amount
From Payment p 
Where p.BillID=@billId

exec UpdatePayment 

EXEC UpdatePayment 
    @billId = 503, 
    @amount = 3400;