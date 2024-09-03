// Import the 'ar-drone' package, which provides tools to control the drone
var arDrone = require('ar-drone');

// Create a new client instance to interact with the drone
var client  = arDrone.createClient();

// Command the drone to take off
client.takeoff();

// Define a sequence of commands to be executed with delays
client
  // After 5000 milliseconds (5 seconds), command the drone to spin clockwise at 0.5 speed
  .after(5000, function() {
    this.clockwise(0.5);
  })
  // After 3000 milliseconds (3 seconds), stop the drone's rotation and command it to land
  .after(3000, function() {
    this.stop();  // Stop any ongoing movement
    this.land();  // Command the drone to land
  });




  


