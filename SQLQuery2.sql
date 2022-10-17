insert into Asm3_Consumers(Name,Address,Tel)
values(N'Nguyễn Văn A',N'11 Hoàng mai, Hà nội','08409090');
insert into Asm3_Consumers(Name,Address,Tel)
values(N'Nguyễn Văn B',N'11 Hoàng mai, Hà nội','08409091');

select * from Asm3_Consumers;

insert into Asm3_Products(Name,Description,Unit,Price)
values(N'Máy Tính T450', N'Máy nhập mới',N'chiếc',1000),
(N'Điện Thoại Nokia5670', N'Điện thoại đang hot',N'chiếc',200),
(N'Máy In Samsung 450', N'Máy in đang ế',N'chiếc',100);
 
 select * from Asm3_Products;

 insert into Asm3_Orders(Orderdate,GrandTotal,ConsumerID)
 values ('2022-09-10',1500,4);

  insert into Asm3_Orders(Orderdate,GrandTotal,ConsumerID)
 values ('2022-09-11',2500,5);

 select * from Asm3_Orders;

 insert into Asm3_ProductOrders(OrderCode,ProductID,Qty,Total)
 values (1,1,1,1000),(1,2,2,400),(1,3,1,100);

  insert into Asm3_ProductOrders(OrderCode,ProductID,Qty,Total)
 values (2,1,1,1000),(2,2,2,400),(2,3,11,1100);

  select * from Asm3_ProductOrders;

  update Asm3_ProductOrders set Total = 400 where Qty = 2;

  delete from Asm3_Consumers where id > 5;
  delete from Asm3_ProductOrders where id >5;
