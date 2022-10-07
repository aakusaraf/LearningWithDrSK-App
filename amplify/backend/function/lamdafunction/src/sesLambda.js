// var aws = require('aws-sdk');
// var ses = new aws.SES();

// exports.handler = async (event, context) => {

//     var eParams = {
//         Destination: {
//             ToAddresses: [to]
//         },
//         Message: {
//             Body: {
//                 Text: {Data: body  }
//             },
//             Subject: {Data: "Cognito Identity Provider registration completed" }
//         }, 
//         // Source: "1:079286488318:identity/priya@aavrti.com"
//         Source: "priya@aavrti.com"
//     };

//     await ses.sendEmail(eParams).promise().then(response =>{
//         console.log("sent email !!")
//     }, error=>{
//         console.log("error occured!!",error);

//     })                                                                          
//    console.log("eParams------------------->",eParams);

// }


// console.log(event);
        // console.log("evnt---------->",event.request.userAttributes.email);
        //  if (event.request.userAttributes.email) {
        //      sendEmail(event.request.userAttributes.email, "Congratulations " + ", you have been confirmed: ", function(status) {
        //          // + event.userName 
        //      // Return to Amazon Cognito
        //      callback(null, event);
        //  });

        //  } else {
        //  // Nothing to do, the user's email ID is unknown
        //  callback(null, event);
        //  }
        // function sendEmail(to, body, completedCallback) {

        //     var eParams = {
        //         Destination: {
        //             ToAddresses: [to]
        //         },
        //         Message: {
        //             Body: {
        //                 Text: {Data: body  }
        //             },
        //             Subject: {Data: "Cognito Identity Provider registration completed" }
        //         }, 
        //         // Source: "1:079286488318:identity/priya@aavrti.com"
        //         Source: "priya@aavrti.com"
        //     };
        //    console.log("eParams------------------->",eParams);

        //     var email = ses.sendEmail(eParams, function(err, data){
        //         console.log("data-------------->",data);
        //         if (err) {
        //             console.log(err);
        //         } else {
        //             console.log("===EMAIL SENT===");
        //         }
        //         completedCallback('Email sent');
        //     });
        //     // console.log("email-------------------->",email);
        //     console.log("EMAIL CODE END"); 
        //     };
        // };