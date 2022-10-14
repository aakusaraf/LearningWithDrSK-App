/* Amplify Params - DO NOT EDIT
    API_LEARNINGAPP_BANNERTABLE_ARN
    API_LEARNINGAPP_BANNERTABLE_NAME
    API_LEARNINGAPP_CATEGORIESTABLE_ARN
    API_LEARNINGAPP_CATEGORIESTABLE_NAME
    API_LEARNINGAPP_COURSEDETAILTABLE_ARN
    API_LEARNINGAPP_COURSEDETAILTABLE_NAME
    API_LEARNINGAPP_GRAPHQLAPIENDPOINTOUTPUT
    API_LEARNINGAPP_GRAPHQLAPIIDOUTPUT
    API_LEARNINGAPP_GRAPHQLAPIKEYOUTPUT
    API_LEARNINGAPP_USERSTABLE_ARN
    API_LEARNINGAPP_USERSTABLE_NAME
    API_LEARNINGAPP_VIDEOSTABLE_ARN
    API_LEARNINGAPP_VIDEOSTABLE_NAME
    AUTH_LEARNINGAPP15BDDA75_USERPOOLID
    ENV
    REGION
    STORAGE_S3LEARNINGAPPSTORAGEBAD1B9ED_BUCKETNAME
Amplify Params - DO NOT EDIT */

/**
 * @type {import('@types/aws-lambda').APIGatewayProxyHandler}
 */
// exports.handler = event => {
//   console.log(`EVENT: ${JSON.stringify(event)}`);
//   event.Records.forEach(record => {
//     console.log(record.eventID);
//     console.log(record.eventName);
//     console.log('DynamoDB Record: %j', record.dynamodb);
//   });
//   return Promise.resolve('Successfully processed DynamoDB record');
// };


var aws = require('aws-sdk');
var ses = new aws.SES();
var ddb = new aws.DynamoDB();

exports.handler = async (event, context) => {
    console.log(event);
    let date = new Date();
    console.log("test", event.request.userAttributes);
    console.log("test", process.env.API_LEARNINGAPP_USERSTABLE_NAME);
    console.log("attribute--------------->", event.request);
    console.log("id=====> ",event.request.userAttributes.sub)
    if (event.request.userAttributes.sub) {
        let params = {
            Item: {
                'id': { S: event.request.userAttributes.sub },
                '__typename': { S: 'Users' },
                'email': { S: event.request.userAttributes.email },
                'createdAt': { S: date.toISOString() },
                'updatedAt': { S: date.toISOString() },
            },
            TableName: process.env.API_LEARNINGAPP_USERSTABLE_NAME
        };
        console.log(params)
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
        console.log("Success--------------->params got", params);
        console.log("Success--------------->params got", eParams);
        try {
            await ddb.putItem(params).promise().then(response => {
                console.log("inserted !!" + response)
            }, error => {
                console.log("error occured!!", error);

            })
            console.log("Success--------------->params got", params);

            await ses.sendEmail(eParams).promise().then(response => {
                console.log("sent email !!")
            }, error => {
                console.log("error occured!!", error);

            })
            console.log("eParams------------------->", eParams);

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