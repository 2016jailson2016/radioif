var mysql   = require("mysql");

function REST_ROUTER(router,connection,md5) {
    var self = this;
    self.handleRoutes(router,connection,md5);
}

REST_ROUTER.prototype.handleRoutes = function(router,connection,md5) {
    var self = this;
    router.get("/",function(req,res){
        res.json({"Message" : "Hello World !"});
    });

    router.get("/users",function(req,res){
        var query = "SELECT * FROM ??";
        var table = ["usuarios"];
        query = mysql.format(query,table);
        connection.query(query,function(err,rows){
            if(err) {
                res.json({"Error" : true, "Message" : "Error executing MySQL query"});
            } else {
                res.json({"Error" : false, "Message" : "Success", "Users" : rows});
            }
        });
    });

 router.get("/music",function(req,res){
        var query = "SELECT * FROM ??";
        var table = ["musicas"];
        query = mysql.format(query,table);
        connection.query(query,function(err,rows){
            if(err) {
                res.json({"Error" : true, "Message" : "Error executing MySQL query"});
            } else {
                res.json({"Error" : false, "Message" : "Success", "Music" : rows});
            }
        });
    });
 
   router.post("/music",function(req,res){
        var query = "INSERT INTO ??(??,??) VALUES (?,?)";
        var table = ["musicas","nome","artista",req.body.nome,req.body.artista];
        query = mysql.format(query,table);
        connection.query(query,function(err,rows){
            if(err) {
                res.json({"Error" : true, "Message" : "Error executing MySQL query"});
            } else {
                res.json({"Error" : false, "Message" : "Musica adicionada !"});
            }
        });
    });

    router.get("/users/:id_usuario",function(req,res){
        var query = "SELECT * FROM ?? WHERE ??=?";
        var table = ["usuarios","id_usuario",req.params.id_usuario];
        query = mysql.format(query,table);
        connection.query(query,function(err,rows){
            if(err) {
                res.json({"Error" : true, "Message" : "Error executing MySQL query"});
            } else {
                res.json({"Error" : false, "Message" : "Success", "Users" : rows});
            }
        });
    });

    router.post("/users",function(req,res){
        var query = "INSERT INTO ??(??,??,??,??,??) VALUES (?,?,?,?,1)";
        var table = ["usuarios","nome","senha","email","cpf","id_perfilusuario",req.body.nome,md5(req.body.senha),req.body.email,req.body.cpf];
        query = mysql.format(query,table);
        connection.query(query,function(err,rows){
            if(err) {
                res.json({"Error" : true, "Message" : "Error executing MySQL query",q:query});
            } else {
                res.json({"Error" : false, "Message" : "Ususario adicionado !"});
            }
        });
    });

    router.put("/users",function(req,res){
        var query = "UPDATE ?? SET ?? = ? WHERE ?? = ?";
        var table = ["usuarios","senha",md5(req.body.senha),"email",req.body.email];
        query = mysql.format(query,table);
        connection.query(query,function(err,rows){
            if(err) {
                res.json({"Error" : true, "Message" : "Error executing MySQL query"});
            } else {
                res.json({"Error" : false, "Message" : "Updated the password for email "+req.body.email});
            }
        });
    });

    router.delete("/users/:email",function(req,res){
        var query = "DELETE from ?? WHERE ??=?";
        var table = ["usuarios","email",req.params.email];
        query = mysql.format(query,table);
        connection.query(query,function(err,rows){
            if(err) {
                res.json({"Error" : true, "Message" : "Error executing MySQL query"});
            } else {
                res.json({"Error" : false, "Message" : "Deleted the user with email "+req.params.email});
            }
        });
    });

     router.get("/sugest",function(req,res){
        var query = "SELECT * FROM ??";
        var table = ["sugestoes"];
        query = mysql.format(query,table);
        connection.query(query,function(err,rows){
            if(err) {
                res.json({"Error" : true, "Message" : "Error executing MySQL query"});
            } else {
                res.json({"Error" : false, "Message" : "Success", "Sugestoes" : rows});
            }
        });
    });

     router.post("/sugest",function(req,res){
        var query = "INSERT INTO ??(??,id_usuario) VALUES (?,1)";
        var table = ["sugestoes","texto",req.body.texto];
        query = mysql.format(query,table);
        connection.query(query,function(err,rows){
            if(err) {
                res.json({"Error" : true, "Message" : "Error executing MySQL query"});
            } else {
                res.json({"Error" : false, "Message" : "Sugestao adicionada !"});
            }
        });
    });
}

module.exports = REST_ROUTER;
