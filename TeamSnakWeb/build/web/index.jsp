<!DOCTYPE html>

<html>
    <head>
        <title>Teamsnak WebPortal</title>
        <meta charset="UTF-8">
        <link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="extra/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <script src="extra/jquery.min.js" type="text/javascript"></script>
        <script src="extra/bootstrap.min.js" type="text/javascript"></script>
    </head>
    <body style="background-color: #F7F9F9;">
        <br />
        <br />
    <center><h1>CA1 - Gruppe 6</h1></center>
    <br />
    <br />
    <br />
    <div style="padding: 10px;  margin: auto; width: 80%; border: 3px solid #5D6D7E; border-radius: 5px; padding: 10px; background-color: #2E4053; color: white;">
        <h2>Github</h2>
        <p>Throughout the process of this project, Github has been a major source of communication as well as a tool to source our coding into one place.</p>
        <p><a href='https://github.com/2joocy/CA1' style='color: white;'>Check us out at github!</a>
        <h2>About us</h2>
        <p><h3>Group Members</h3></p>
        <p>This project has been developed by group 6.</p>
        <li>Viktor Kim Christiansen</li>
        <li>Christopher Poul Rosendorf</li>    
        <li>William Pfaffe</li>
        <p><h3>Downloads</h3></p>
        <p>In case you're interested in seeing the program in action, you can download the client <a href='https://drive.google.com/open?id=0B7ZillxWKZfkcHEtelpHX3UwLXM'>here</a></p>
        <h2>Documentation</h2>
        <p><h3>Class Tests</h3>
            <p>
                Friday the 17th of February, we set out to test our program, with one 
                or several servers / clients. This was a requirement from the the teachers, 
                as they had to check whether or not our program was working correctly. 
                We did 3 tests, against 3 different groups. We thoroughly tested both 
                server and client back to back against other groups. 

            <h4>Pros</h4>
            <p>
               66% of the groups we tested had both their client ready, as well 
               as their server. This would indicate that the task at hand wasn't 
               too difficult, as it's a extension of previous assignments. 
               Guidance from the teacher, Jens, was supreme during the time. 
               A group we were testing against at the time had issues with their client. 
               Jens helped them briefly, resulting in them clearing the tests.
               General help / discussion was planned out well by Jens.
            </p>
            <h4>Cons</h4>
            <p>
                One major con, which became present at almost every of our tests, 
                was the protocol. A lot of the groups either did not send out the right 
                commands, or failed receive them as they were supposed to. This either resulted 
                in painstakingly waiting for them to understand the protocol, or either 
                ask for help, which took time. One major flaw we later discovered (Props to Chris from the group for pointing this out), 
                was that it's impossible to know who sent a private message to who. The user will receive a message, 
                however without massive modification to the client it's impossible for the user to know if it's a private message or just a #ALL message. 
                What the protocol states, is that the syntax for a private message is: MSG#USER#MESSAGE TO USER. 
                However, what it should have been was: MSG#FROM USER#TO USER#MESSAGE TO USER. 
                This ensures that we can alert the user.
            </p>
            <h4>Who Did What</h4>
            <p>
                We all split out work, and prefer sharing screen or all working on the same class at the same time giving ideas and inputs.
                It really makes it more fun and enjoyable for us, and doing it cooperatively gives us a lot of insight.
                If we were to split it out (since it's a requirement) it would be something like this:<br>
                Viktor: Linux Server/Web + Client GUI<br>
                Chris: Client Software + JUnit tests<br>
                William: Server Software + Documentation
            </p>
        <h3>Architecture</h3>
        <p>
            <h4>The Server</h4>
                We based the architecture of the server on a previous TCP server that we wrote, called EchoServer / EchoClient. 
                We understood the premise of TCP, so expanding the code was no issue. The server has a method called startServer, 
                which contains both a ServerSocket, aswell as a Socket. The ServerSockets job is to bind to a specific IP / Port, 
                where it listens to incoming requests. The ServerSocket has a method called accept, which returns the incoming connection socket. 
                Incase of a connection, the socket connection would not be null, whereas it would initiate the handleConnection to the incoming socket. 
                HandleConnection is where all of our text management will happen in a switch case. We took the approach to create a 
                ServerHandler which handles deep logic, and the server itself would handle text input.
            <h4>The Client</h4>
                The client has 2 GUI's. One which asks for IP / Port as well as Username. Once done, the Press OK button initiates the 2nd GUI, 
                disposing of the old one. Each of the GUI's know eachother from the Handler. This is the case, so that we can transfer values from each of the 
                JFrames in the constructors of the instances, inside each of the GUI's. Apart from that, the architecture is almost the same. We create a 
                sendMessage method, which sends a a message via OututStreaming a Buffer of the string needed to be sent. Small changes were made to the client 
                in order to make it more diverse / dynamic, since most test issues from the test class was difference in protocol use.
        </p>
        <h3>Program Guidance</h3>
            <h4>Server</h4>
                Guidance for the server is difficult. In order to change the IP and the Port you have to change the base of the code, which isn't too user friendly. The server is suppose to run stationary on a server, rather than being edited towards the specific server.
            <h4>Client</h4>
                The client is well thought of. You're welcomed with a login screen, which asks for a IP / Port, and a Username. After typing these in, you press OK, which leads you to the chat screen. Here you can send messages to everyone, or a specific user, by selecting a user in the side list.
        <h3>Perspective: Last Semester</h3>
            Our strategy this project, compared to the last semester, was to approach things more relaxed. Our exam project was rushed to meet our userstories early to get critique, however we got burned out on the last few sprints. We had several meetings, but all of us knew what to do, and when to do so. Corrections were fairly easy to make, due to the programming experience of the group. Since we already had done a project similar to this, it wasn't really worth breaking a sweat over. We had ease at starting both the server and client. The only real thing that took time was understanding the flaws of the protocol given
        <br />
         <br />
          <br />
          
        
</div>
    <br />
    <br />
    <br />
    <br />
</body>
</html>
