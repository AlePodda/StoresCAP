namespace my.StoresCAP;

//Tabella Inventario
entity Inventories {
  key InventoryId   : UUID;
	CreatedAt       : DateTime @cds.on.insert : $now;
    UserId          : Association to Users not null;
    WarehouseId     : Association to Warehouses not null;
	ToCountedItems  : Association to many CountedItems;
}

//Tabella Utenti
entity Users {
  key UserId        : UUID;
	  Name          : String (50) not null;
	  Surname       : String (50) not null;
	  Mail          : String (50) not null;
}

//Tabella Materiali
entity Materials {
	key MaterialId   : UUID;
		Description  : String(50) not null;
}

//Tabella elementi conteggiati per singolo inventario
entity CountedItems {
  key InventoryId     : Association to Inventories;
	key MaterialId    : Association to Materials; 
	  Quantity        : Decimal(12,3) not null;
}

//Tabella magazzini
entity Warehouses {
  key WarehouseId : String(3);
    Name          : String(25) not null;
    Description   : String(50) not null;
}
