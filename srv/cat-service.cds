using my.StoresCAP as my from '../db/data-model';
service CatalogService {
    @readonly entity Inventories as projection on my.Inventories;
    @readonly entity Users as projection on my.Users;
    @readonly entity Materials as projection on my.Materials;
    @readonly entity CountedItems as projection on my.CountedItems;
    @readonly entity Warehouses as projection on my.Warehouses;
}