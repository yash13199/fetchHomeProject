### Steps to Run the App

-- Open the .xcworkspace
-- Once in Xcode, select a simulator or connect a device, and click Run (Cmd + R) to build and launch the app.

### Focus Areas: What specific areas of the project did you prioritize? Why did you choose to focus on these areas?

-- UI/UX Design:
    - Focused on designing an intuitive and responsive user interface, ensuring the app is user-friendly 
    and visually appealing. Chose to prioritize this because it's key to user retention and overall app experience.
    - Also create constains so you test in any device and working horizontal and vertically.
    
-- Networking & Data Handling:
    - Implemented asynchronous data fetching using URLSession.
    - This was a priority to ensure the app’s responsiveness even with network latency.
    - Add nessary error handing and async / await use for load data in table and view on screen
    - If URl and networking fail to fetch data then give error on console.
    
-- Data Parsing and Model Handling:
    - Concentrated on proper JSON parsing and model creation, ensuring that the data from APIs is mapped accurately to Swift models. 
    - This ensures a clean and maintainable codebase and correct data flow throughout the app.
    - create API class for get data using URL so we can get any data using URL use of this class so we dont have to write everytime , just have to pass URL and Model.
    
-- Performance Optimization:
    - Focused on optimizing the performance by using background tasks for heavy operations (like image loading). 
    - This helps to avoid blocking the main thread and improves the overall user experience.
    - user async and await concept

### Time Spent: Approximately how long did you spend working on this project? How did you allocate your time?

-- Research and Planning: 15% 
    — Spent time gathering requirements, understanding the project's scope, and selecting appropriate technologies.
-- UI/UX Design: 25% 
    — Designed the initial app layout and implemented the UI components.
-- Networking & Data Fetching: 30%
    — Focused on fetching and displaying data using APIs, including error handling and JSON parsing.
-- Testing and Debugging: 20% 
    — Ran unit and UI tests, fixed bugs, and ensured smooth functionality.
-- Documentation and Polish: 10% 
    — Wrote necessary documentation, optimized code, and made final adjustments to improve the app's polish.
    

### Trade-offs and Decisions: Did you make any significant trade-offs in your approach?
-- general use of function and class and model
    - so o create generaal function and class so we can use every page.
    - create table view cell so we can use same cell entier app.

### Weakest Part of the Project: What do you think is the weakest part of your project?
-- To be honest , i haven't feel anything hard but i just solve error whatever i got it and At the end it works.

### Additional Information: Is there anything else we should know? Feel free to share any insights or constraints you encountered.
