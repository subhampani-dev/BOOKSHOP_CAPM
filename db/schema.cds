namespace my.bookshop;

using {cuid,managed} from '@sap/cds/common';

entity Books{
    key ID : Integer;
    title   : String(100);
    stock   : Integer;
    author  : Association to Authors;
}

entity Authors{
    key ID : Integer;
    name : String(100);
    books : Association to many Books on books.author = $self;
}

entity orders:cuid,managed{
    book    :   Association to Books;
    quatity :   Integer;
}