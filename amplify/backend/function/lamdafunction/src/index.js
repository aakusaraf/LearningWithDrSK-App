/* Amplify Params - DO NOT EDIT
    API_LEARNINGWITHDRSK_BANNERTABLE_ARN
    API_LEARNINGWITHDRSK_BANNERTABLE_NAME
    API_LEARNINGWITHDRSK_CATEGORIESTABLE_ARN
    API_LEARNINGWITHDRSK_CATEGORIESTABLE_NAME
    API_LEARNINGWITHDRSK_COURSEDETAILTABLE_ARN
    API_LEARNINGWITHDRSK_COURSEDETAILTABLE_NAME
    API_LEARNINGWITHDRSK_GRAPHQLAPIENDPOINTOUTPUT
    API_LEARNINGWITHDRSK_GRAPHQLAPIIDOUTPUT
    API_LEARNINGWITHDRSK_GRAPHQLAPIKEYOUTPUT
    API_LEARNINGWITHDRSK_USERSTABLE_ARN
    API_LEARNINGWITHDRSK_USERSTABLE_NAME
    API_LEARNINGWITHDRSK_VIDEOSTABLE_ARN
    API_LEARNINGWITHDRSK_VIDEOSTABLE_NAME
    AUTH_LEARNINGWITHDRSKAE20DC05_USERPOOLID
    ENV
    REGION
Amplify Params - DO NOT EDIT */

var aws = require('aws-sdk');
var ses = new aws.SES();
var sss = require('./sesLambda')
var ddb = new aws.DynamoDB();

exports.handler = async (event, context) => {
    console.log(event);
    let date = new Date();
    console.log("test", event.request.userAttributes);
    console.log("test", process.env.API_LEARNINGWITHDRSK_USERSTABLE_NAME);
    console.log("attribute--------------->", event.request);
    if (event.request.userAttributes.sub) {
        let params = {
            Item: {
                'id': { S: event.request.userAttributes.sub },
                '__typename': { S: 'Users' },
                'email': { S: event.request.userAttributes.email },
                'createdAt': { S: date.toISOString() },
                'updatedAt': { S: date.toISOString() },
            },
            TableName: process.env.API_LEARNINGWITHDRSK_USERSTABLE_NAME
        };
        const eParams = {
            Destination: {
                ToAddresses: [event.request.userAttributes.email]
            },
            Message: {
                Body: {
                    Text: { Data: "Welcome! to Learning with Dr. S.K App " }
                },
                Subject: { Data: "Cognito Identity Provider registration completed" }
            },
            Source: "priya@aavrti.com"
        };
        try {
            await ddb.putItem(params).promise()
            console.log("Success");

            await ses.sendEmail(eParams).promise().then(response =>{
                console.log("sent email !!")
            }, error=>{
                console.log("error occured!!",error);
        
            })                                                                          
           console.log("eParams------------------->",eParams);

                // + event.userName 
            } catch (err) {
                console.log("Error", err);
            }

            console.log("Success: Everything executed correctly");
            context.done(null, event);

        } else {
            // Nothing to do, the user's email ID is unknown
            console.log("Error: Nothing was written to DynamoDB");
            context.done(null, event);
        }
        
    };