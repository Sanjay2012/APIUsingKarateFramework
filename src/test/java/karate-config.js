function fn(){
var env = karate.env;
if (!env){
env = 'dev';
}
var config = {
env : env,
myVarName : 'hello karate',
baseUrl : 'https://gorest.co.in'
}
if (env = 'dev') {
 // customize
} else if (env = 'prod'){
 // customize
}
return config;
}