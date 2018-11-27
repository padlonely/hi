var bcrypt = require("bcrypt");
var config = require("config");

//password
function hash_password(password){
    var saltRounds = config.get("salt");

    var salt = bcrypt.genSaltSync(saltRounds);
    var hash = bcrypt.hashSync(password, salt);

    return hash;
}

function compare_password(password, hash){
    return bcrypt.compareSync(password, hash);
}
//user

function hash_email(email){
    var saltRounds = config.get("salt");

    var salt = bcrypt.genSaltSync(saltRounds);
    var hash = bcrypt.hashSync(email, salt);

    return hash;
}

function compare_email(email, hash){
    return bcrypt.compareSync(email, hash);
}
module.exports = {
    hash_password: hash_password,
    compare_password: compare_password,
    hash_email: hash_email,
    compare_email: compare_email
}