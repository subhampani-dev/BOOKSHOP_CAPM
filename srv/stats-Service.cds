using my.bookshop from '../db/schema';

service stats{
    @readonly
    entity OrderInfo as projection on bookshop.orders excluding{
        createdAt,
        createdBy,
        modifiedAt,
        modifiedBy,
        book
    }
}