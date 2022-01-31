const { Authenticator } = require('cognito-at-edge');
const authenticator = new Authenticator({
  region: 'eu-west-2', 
  userPoolId: 'us-east-1_XXXXXX',
  userPoolAppId: 'XXXXXX', 
  userPoolDomain: 'irviewtest.auth.us-east-1.amazoncognito.com' 
});
exports.handler = async (request) => authenticator.handle(request);
