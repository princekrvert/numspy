#!/usr/bin/env node 
// made by prince kumar
// date 22 mar 2022 
// import all the requirements 
const truecallerjs = require('truecallerjs');
 const cData = require("./countryDetails.json");
var prompt = require('prompt-sync')();
const process = require('process');
const { argv } = require('process');
// make a json to check the cc to country name 
var cdata =  { "91": "IN", "004" : "AF", "248" : "AX", "010" : "AQ", "533" :"AW", "036" : "AU",
"040" : "AT" , "031" : "AZ"                   
};
require('dotenv').config()
// make a help function 
function help()
{
    console.log("Uses ./numspy <phonenum> ");
    console.log("Uses ./numspy -h or --help for help ");
}
// now handle the user arguments .. 
if (process.argv.length < 3 ){
    help();
}
else if (process.argv.length === 3 ){
    // check for the number length 
    if (process.argv[2] === "-h" || process.argv[2] === "--help" )
    {
        help();
    }
    else if ( process.argv[2].length === 13 ){
        // now extract the country code form the number
        const cCode = process.argv[2].slice(1,3)
        console.log(cData[0].name);
        


    }
}
else {
    console.log('this is ti');
}
// make a function to exrtact the information 
function data(num,cCode){
    var searchData = {
        number: ,
        countryCode: "IN",
        installationId: process.env.ID,
        output: "JSON"
    }

    var sn = truecallerjs.searchNumber(searchData);
    sn.then(function(response) {
        console.log(response)
    });
}
