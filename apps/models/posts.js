var q = require("q");
var db = require("../common/database");
var conn = db.getConnection();

function getAllPosts(){

        var defer = q.defer();

        var query = conn.query('SELECT * FROM posts ', function (err, posts) {
        if (err){
            defer.reject(err);
        }
        else{
            defer.resolve(posts);      
             }
        });

        return defer.promise;
    }
function addPost(params){
    if(params){
        var defer = q.defer();

        var query = conn.query('INSERT INTO posts SET ?', params, function (err, results) {
        if (err){
            defer.reject(err);

        }
        else{
            defer.resolve(results);      
             }
        });

        return defer.promise;
    }
    return false;
}    


function getPostByID(id){

    var defer = q.defer();

    var query = conn.query('SELECT * FROM posts WHERE ?', {id: id}, function (err, posts) {
    if (err){
        defer.reject(err);
    }
    else{
        defer.resolve(posts);      
         }
    });

    return defer.promise;
}

function updataPost(params){
    if(params){
    var defer = q.defer();

    var query = conn.query('UPDATE posts SET title = ?, content = ?, author = ?, updated_at = ? WHERE id = ?', [params.title, params.content, params.author, new Data(), params.id], function (err, results) {
    if (err){
        defer.reject(err);
    }else{
        defer.resolve(results);      
         }
    });

    return defer.promise;
    }
    return false;
}

module.exports = {
        getAllPosts,
        addPost,
        getPostByID,
        updataPost
    }