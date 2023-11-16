using my.bookshop as my from '../db/schema';


service CatalogService @(impl:'srv/cat-service.js'){
    entity Books as projection on my.Books;

    entity author as projection on my.Authors;

    @Capabilities : { Insertable :false,Updatable : true, Deletable : false }
    entity orders as projection on my.orders;
}