BirdWatching
============
This is an app for the iPhone which allows the user to record sightings of birds. It was a tutorial application from developer.apple.com which demonstrated the functionality of a 'Master-Detail' application. One aspect of the tutorial that I found particularly interesting was using a separate view (with a Modal segue) to add additional items to the list. This was an interesting user-interface design decision. Functionality-wise, I found the variation between using a Modal or a Push segue interesting and wanted to learn a bit more about conventions and functionality. 

A quick google search turned up [a stack overflow post](http://stackoverflow.com/questions/9392744/difference-between-modal-and-push-segue-in-storyboards) about this topic, and so I learned that Modal segues are normally used when activity in the resulting view is not part of the same logical sequence as other views. Push segues, contrariwise, are used to represent logical progressions in activity across different views. In this application, because adding a new sighting isn't all that similar to looking at the whole list of sightings or looking at an individual sighting's complete data, we use a modal segue, whereas we use push segues for transitioning between the list-view and individual-data-object views. 
