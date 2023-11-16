module.exports = srv =>{
    console.log(`Service name : ${srv.name} is served at ${srv.path}`)
    srv.after('READ', 'Books' ,data =>{
        console.log(data);
    
    let dis_books = [];
    data.forEach(books =>{
        if(books.stock>10)
        {
            books.title = 'Extra 10% off applied '+books.title;
        }
        dis_books.push(books);

    });
    console.log(dis_books);
    return dis_books;
}
)};




