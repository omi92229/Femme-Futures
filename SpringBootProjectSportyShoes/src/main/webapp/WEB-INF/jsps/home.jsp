
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
     <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Femme Futures</title>
    
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="icon" href="/images/femme futures-logos_black (1).png">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<style type="text/css">
/* navigation style */

body{
    margin: 0;
    padding: 0;
    font-family: Arial, Helvetica, sans-serif;
}

header{
    /* background-color: pink; */
    background-image: url("./images/pinkbgm.jpg");
background-size: 100% ;
    color: black;
    padding: 10px 0;
    text-align: center;
    position: fixed;
    z-index: 1;
    width: 100%;
    
}

nav{
    display: flex;
    justify-content: space-between;
    align-items: center;
    max-width: 1200px;
    margin: 0 auto;
    padding: 0 20px;
}

.logo img{
    height: 100px;
    width: auto;
    padding: 0 20px;
    
}

.project-name h1{
    font-size: 24px;
    padding: 0 20px;
    margin: 0;
    font-family: Georgia, 'Times New Roman', Times, serif;
}

ul.menu{
    list-style: none;
    display: flex;
    
}

ul.menu li{
    margin-right: 20px;
    font-weight: bold;
    color: brown;
justify-content: center;
}

ul.menu li:last-child{
    margin-right: 0;
}

ul.menu li a{
    text-decoration: none;
    color: brown;
}

.search-bar{
    display: flex;
    text-align: center;
    flex: none;
    justify-content: center;
    
}

.search-bar input[type="text"]{
    padding: 26px;
    width: 250px;
    border: 1px solid whitesmoke;
    border-radius:8px 0 0 8px;
    outline: none;
    margin: 0;
    vertical-align: middle;
}

.search-bar button[type="submit"]{
    background-color: white;
    border: none;
    border-radius: 0 8px 8px 0;
    cursor: pointer;
    padding: 0;
    margin: 0;
    height: fit-content;
}

.search-bar button[type="submit"] i{
    font-size: 20px;
    vertical-align: middle;
}

@media screen  and (max-width: 768px) {
    header{
        padding: 10px;
    }

    .project-name{
        font-size: 20px;
    }

    ul.menu{
        flex-direction: column;
        align-items: flex-start;
        background-color: pink;
        padding: 10px 20px 10px 20px;
    }

    ul.menu li{
        margin-right: 0;
        margin-bottom: 10px;
        text-align: center;
    }

}


/* styling for slider */ 

.slider-body{
/* background-color: rgba(255,192,203 , 0.5); */
background-image: url("./images/pinkbgm.jpg");
background-size: 100% 100%;

}

.slider{
    position: relative;
    width: 100%;
    max-width: 75%;
    margin: 0 auto;
    margin-top: 10px;
    overflow: hidden;
}

.slides{
    display: flex;
    transition: transform 1s ease-in-out;
}

.slides .slide{
    position: relative;
    flex: 0 0 100%;
    max-width: 100%;
    height: auto;
    overflow: hidden;
}

.slide img{
    width: 100%;
    height: auto;
}

.slide-text{
    position: absolute;
    top: 20px;
    right: 20px;
    background-color: rgba(0, 0, 0, 0.7);
    color: white;
    padding: 10px;
    transform: translateY(0);
    opacity: 1;
    transition: opacity 0.5s, transform 0.5s;
}

h1{
    font-size: 24px;
    margin: 0;
}

.animate-text{
    font-size: 18px;
    font-weight: bold;
    margin: 5px 0;
    white-space: nowrap;
    overflow: hidden;
    border-right: 2px solid peachpuff;
    animation: typing 3s steps(30) infinite;
}

@keyframes typing {
    0%{
        width: 0;
    }
    100%{
        width: 100%;
    }
}

/* these styling are for accordion */

.accordion{
    display: flex;
    flex-direction: column;
    max-width: auto;
    padding: 10px;
    /* background-color: purple; */
    background-image: url("./images/pinkbadal.jpg");
    background-size: 100% 100%;
    
    
}

#faqs{
    text-align: center;
}

.accordion-item{
    border: 1px solid grey;
    margin-bottom: 10px;
    border: salmon;
    border-radius: 10px;
    
}

.accordion-title{
    background-color: pink;
    padding: 10px;
    cursor: pointer;
    text-align: left;
    font-weight: bold;
    border: solid salmon;
    border-radius: 10px;
}

.accordion-content{
    display: none;
    padding: 30px;
    font-size: large;
    /* background-color: rgba(255, 255, 0, 0.8); */
    text-align: justify;
    border-style: dotted;
    background-image: url("./images/pinkrain.jpg");
    background-size: 100% 100%;
}

.accordion-content p{
    margin: 0;
}

/* styling for cards/blogs */

.blog-card, .blog-card *{
    margin:0;
    padding:0;
    
    
}

body{
    font-family: Arial, Helvetica, sans-serif;
    background-color: aliceblue;
}

.blog-cards{
    display: flex;
    flex-wrap: wrap;
    justify-content: space-evenly;
    align-items: stretch;
    gap: 20px;
    padding: 20px;
    /* background-color: pink; */
    background-image: url("./images/pinkpank.jpg");
background-size: 100% 100%;
}

.blog-card{
    flex: 0 1 calc(33.333% - 20px);
    background-color: antiquewhite;
    padding: 20px;
    margin: 0;
    border-radius: 5px;
    box-shadow: 0 0 5px rgba(0, 0, 0, 0.2);
    text-align: center;
}

.blog-card img{
    width: 100%;
    height: auto;
    border-radius: 5px;
}

#blog{
font-size: 50px;
font-weight: bolder;
align-items: center;
text-align: center;

}

.blog-card h2{
    font-size: 24px;
    margin: 10px 0;
}

.blog-card p {
    margin-bottom: 10px;
}

.blog-card .read-more{
    display: inline-block;
    padding: 10px 20px;
    background-color: orange;
    text-decoration: none;
    border-radius: 5px;
    font-weight: bold;
}

.blog-card .read-more:hover{
    background-color: cadetblue;
    color: blue;
    transition: ease-in-out  1000ms;
    font-size: 110%;
}

/* styling for video */

.video {
    display: flex; 
    justify-content: center; 
    align-items: center; 
    /* background-color: pink; */
    padding: 10px;
    background-image: url("./images/pexels-irina-iriser-1408221.jpg");
background-size: 100% 100%;
}

/* styling for jobs */

.job-portal{
    /* background-color: salmon; */
    padding: 1px;
    background-image: url("./images/pinkrain.jpg");
background-size: 100% 100%;
    
}

#job{
font-size: 50px;
font-weight: bolder;
align-items: center;
text-align: center;
}

.job-listing{
    background-color: pink;
    padding: 20px;
    margin: 20px;
    border-radius: 5px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
    
    
}

.job-listing h2{
font-size: 24px;
margin-bottom: 10px;
color: red;
position: relative;
    left: 20px;
    text-align: center;
}

.job-listing p{
margin-bottom: 10px;
position: relative;
    left: 20px;
}


.apply-button {
    display: inline-block;
    padding: 10px 20px;
    background-color: sandybrown;
    color: purple;
    text-decoration: none;
    border-radius: 10px;
    font-weight: bold;
    position: relative;
    left: 20px;
}

.apply-button:hover {
    background-color: greenyellow;
    color: brown;
}

.jobpara{
    margin-top: 10px;
    font-size: large;
    font-weight: 100;
    padding: 10px 60px 1px 60px;
    font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif;
}

/* styling for schemes */

.scheme-card, .scheme-cards {
    margin: 0;
    padding: 0;
    /* background-color: rgba(194, 44, 27, 0.5); */
    
}

#scheme{
font-size: 50px;
font-weight: bolder;
align-items: center;
text-align: center;
}

body {
    font-family: Arial, Helvetica, sans-serif;
    background-color: whitesmoke; /* Soft pink background */
}

.scheme-cards {
    display: flex;
    flex-wrap: wrap;
    flex-direction: row;
    justify-content: space-around;
    gap: 20px;
    padding: 20px;
    background-image: url("./images/auramix.jpg");
background-size: 100% 100%;
}

.scheme-card {
    flex: 0 1 calc(33.333% - 20px); /* Three cards per row */
    background-color: #fff; /* White card background */
    padding: 20px;
    margin: 0;
    border: 1px solid #f0e0e2; /* Light border */
    border-radius: 10px; /* Rounded corners */
    box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1); /* Subtle shadow */
    text-align: center;
    transition: transform 0.2s; /* Add a smooth transition effect */
    background-image: url("./images/pinkleav.jpg");
background-size: 100% 100%;
}

.scheme-card:hover {
    transform: scale(1.05); /* Slight scale-up on hover */
}

.scheme-card img {
    width: 90%;
    height: auto;
    border-radius: 10px 10px 0 0; /* Rounded top corners */
    transition: transform 0.2s; /* Add a smooth transition effect */
}

.scheme-card h2 {
    font-size: 24px;
    margin: 10px 0;
    color: #ff69b4; /* Pink for headings */
}

.scheme-card p {
    margin-bottom: 10px;
    color: #555; /* Dark gray text color */
}

.scheme-card .read-more {
    display: inline-block;
    padding: 10px 20px;
    background-color: #ff69b4; /* Pink background for the "Read More" button */
    text-decoration: none;
    border-radius: 5px;
    font-weight: bold;
    color: #fff; /* White text color */
    transition: background-color 0.3s;
}

.scheme-card .read-more:hover {
    background-color: #d2006e; /* Darker pink on hover */
    color: #fff;
}

/* styling for footer */

.contact-footer{
    /* background-color: palevioletred; */
    color: black;
    padding: 20px;
    display: flex;
    justify-content: space-between;
    align-items: center;
    background-image: url("/images/aura.jpg");
background-size: 100% 100%;
    
}

.contact-info, .social-links, .map{
    flex: 1;
    text-align: center;
}

.contact-info h3, .social-links h3, .map h3{
    font-size: 20px;
}

.contact-info p{
    font-size: 16px;
    margin-top: 10px;
}

.social-links a{
    display: inline-block;
    margin: 10px;
    text-decoration: none;
}

.map iframe{
    width: 100%;
    max-width: 300px;
    height: 200px;
    border: 0;
}

.fa {
    padding: 20px;
    font-size: 30px;
    width: 50px;
    text-align: center;
    text-decoration: none;
    margin: 5px 2px;
  }
  
  .fa:hover {
      opacity: 0.7;
  }
  
  .fa-facebook {
    background: #3B5998;
    color: white;
    font-size: larger;
  }
  
  .fa-twitter {
    background: #55ACEE;
    color: white;
    font-size: larger;
  }
  
  .fa-linkedin {
    background: #007bb5;
    color: white;
    font-size: larger;
  }
  
  .fa-youtube {
    background: #bb0000;
    color: white;
    font-size: larger;
  }
  
  .fa-instagram {
    background: #125688;
    color: white;
    font-size: larger;
  }

  
</style>
</head>
<body>
     <header>
        <nav>
            <div class="logo">
                <img src="./logo/femme futures-logos_transparent (1).png" alt="Project Logo">
            </div>
            <div class="project-name">
                <h1 style = "font-weight: bolder">Femme Futures</h1>
            </div>
            <div class="search-bar">
                <form id="search-form" action="https://www.google.com/search" method="GET" target="_blank">
                    <input type="text" id="search-input" name="q" placeholder="Search">
                    <button type="submit"><i class="fa fa-search" style="font-size: 20px; color: pink;"></i></button>
                </form>
            </div>
            <ul class="menu">
                <li><a href="#">Home</a></li>
                <li><a href="#faqs">FAQs</a></li>
                <li><a href="#blog">Blogs</a></li>
                <li><a href="#job">Jobs</a></li>
                <li><a href="#scheme">Government Schemes</a></li>
                <li><a href="./showLogin">Login</a></li>
                <li><a href="./showSignUp">SignUp</a></li>
                <li><a href="./viewProducts">View products</a></li>
                <li><a href="#footer">About Us</a></li>
            </ul>
        </nav>
    </header>
<br><br><br><br>
    <div class="slider-body">
    <div class="slider">
        <div class="slides">
            <div class="slide">
                <img src="./images/baby girl.jpg" alt="Image 1">
                <div class="slide-text">
                    <h1>GIRL</h1>
                    <p class="animate-text">Get Inspired</p>
                    <p class="animate-text">Rise</p>
                    <p class="animate-text">Lead</p>
                </div>
            </div>
            <div class="slide">
                <img src="./images/computer women.jpg" alt="Image 2">
                <div class="slide-text">
                    <h1>GIRL</h1>
                    <p class="animate-text">Get Inspired</p>
                    <p class="animate-text">Rise</p>
                    <p class="animate-text">Lead</p>
                </div>
            </div>
            <div class="slide">
                <img src="./images/girl1.jpg" alt="Image 3">
                <div class="slide-text">
                    <h1>GIRL</h1>
                    <p class="animate-text">Get Inspired</p>
                    <p class="animate-text">Rise</p>
                    <p class="animate-text">Lead</p>
                </div>
            </div>
            <div class="slide">
                <img src="./images/hijab girl.jpg" alt="Image 4">
                <div class="slide-text">
                    <h1>GIRL</h1>
                    <p class="animate-text">Get Inspired</p>
                    <p class="animate-text">Rise</p>
                    <p class="animate-text">Lead</p>
                </div>
            </div>
            <div class="slide">
                <img src="./images/indian computer girl.jpg" alt="Image 5">
                <div class="slide-text">
                    <h1>GIRL</h1>
                    <p class="animate-text">Get Inspired</p>
                    <p class="animate-text">Rise</p>
                    <p class="animate-text">Lead</p>
                </div>
            </div>
            <div class="slide">
                <img src="./images/labor women.jpg" alt="Image 6">
                <div class="slide-text">
                    <h1>GIRL</h1>
                    <p class="animate-text">Get Inspired</p>
                    <p class="animate-text">Rise</p>
                    <p class="animate-text">Lead</p>
                </div>
            </div>
            <div class="slide">
                <img src="./images/poor girl.jpg" alt="Image 7">
                <div class="slide-text">
                    <h1>GIRL</h1>
                    <p class="animate-text">Get Inspired</p>
                    <p class="animate-text">Rise</p>
                    <p class="animate-text">Lead</p>
                </div>
            </div>
            <div class="slide">
                <img src="./images/school girl.jpg" alt="Image 8">
                <div class="slide-text">
                    <h1>GIRL</h1>
                    <p class="animate-text">Get Inspired</p>
                    <p class="animate-text">Rise</p>
                    <p class="animate-text">Lead</p>
                </div>
            </div>
            <div class="slide">
                <img src="./images/wedding-girl.jpg" alt="Image 3">
                <div class="slide-text">
                    <h1>GIRL</h1>
                    <p class="animate-text">Get Inspired</p>
                    <p class="animate-text">Rise</p>
                    <p class="animate-text">Lead</p>
                </div>
            </div>
            <div class="slide">
                <img src="./images/women1.jpg" alt="Image 10">
                <div class="slide-text">
                    <h1>GIRL</h1>
                    <p class="animate-text">Get Inspired</p>
                    <p class="animate-text">Rise</p>
                    <p class="animate-text">Lead</p>
                </div>
            </div>
        </div>
    </div>
</div>


<div class="accordion">
    <section id="faqs">
    <br><br>
        <h2><b>Frequently Asked Questions (FAQs)</b></h2>
        <p><h3>Explore our FAQs to find answers to common questions about Femme Futures and how we empower women to achieve their goals.</h3></p>
        
    <div class="accordion-item">
        <div class="accordion-title">Click here to read Objectives of this website</div>
        <div class="accordion-content">
            <p>To create an online platform that empowers women by providing them with resources, information, and opportunities to achieve their personal and professional goals, promote gender equality, and encourage women to become leaders in various fields.</p>
        </div>
    </div>

    <div class="accordion-item">
        <div class="accordion-title">Click here to read Goals of this website</div>
        <div class="accordion-content">
            <p><b>Empower Women:</b> Empower women of all ages and backgrounds by offering resources, support, and opportunities that enhance their personal and professional development.
<br><br>
                <b>Gender Equality:</b> Promote gender equality by advocating for equal rights, opportunities, and representation for women in various sectors.
                <br><br>
            <b> Career Advancement: </b>Facilitate career advancement for women by providing job listings, training, mentorship, and networking opportunities.
            <br><br> 
        <b> Education and Awareness:</b> Raise awareness about important issues affecting women, such as gender-based violence, women's health, and education.
        <br><br>     
    <b>Community Building:</b> Foster a sense of community and support among women, where they can share experiences, inspire each other, and find mentors.
    <br><br>       
<b>Leadership Development:</b> Encourage women to take on leadership roles in various fields and promote their contributions.
<br><br>        
<b>Resource Hub:</b> Serve as a comprehensive resource hub, offering articles, blogs, courses, and guides on topics relevant to women's personal and professional growth.
<br><br>        
<b>Policy Advocacy:</b> Advocate for policies and initiatives that support gender equality, women's rights, and empowerment.
<br><br>       
<b> Impact and Outreach:</b> Measure the impact of the platform by tracking user engagement, success stories, and partnerships, and aim for increased outreach over time.
<br><br>       
<b>Positive Change:</b> Strive to create a positive and lasting change in the lives of women, contributing to their overall empowerment and well-being.</p>
        </div>
    </div>

    <div class="accordion-item">
        <div class="accordion-title">Who Are the Primary Users of "Femme Futures" and What Are Their Needs and Expectations?</div>
        <div class="accordion-content">
            <p><b>Women Seeking Employment:</b>
<br><br>
            <b>Needs:</b> Women looking for job opportunities need a platform where they can search for suitable positions, access career advice, and receive training and support to enhance their employability.
            <br>   <b> Expectations:</b> They expect to find a user-friendly job search feature, relevant job listings, and resources for skill development.
            <br><br>  <b> Women Entrepreneurs:</b>
            <br>      
            <br><b> Needs:</b> Women entrepreneurs need resources and guidance for starting and growing their businesses. They may also seek funding opportunities and networking.
            <br><b>Expectations:</b> They expect access to business resources, mentorship, information on funding options, and opportunities to connect with investors and other entrepreneurs.
            <br><br>  <b> Young Girls and Students:</b>
            <br>     
            <br> <b>  Needs:</b> Young girls and students require educational resources and mentorship to help them make informed career choices and educational decisions.
            <br>  <b>Expectations:</b> They expect access to educational content, mentorship programs, and information about scholarships and internships.
            <br> <br>  <b> Women's Rights Advocates:</b>
            <br>               
            <br><b>Needs:</b> Advocates for women's rights require a platform to access information, network with like-minded individuals, and stay updated on gender equality issues.
            <br><b> Expectations:</b> They expect a space for information sharing, discussions, and awareness campaigns, as well as opportunities to collaborate with other advocates.
            <br><br> <b> Professionals and Experts:</b>
            <br>              
            <br><b>  Needs:</b> Professionals in various fields and experts can contribute by offering mentorship, training, or resources to empower women in their respective industries.
            <br><b>  Expectations: </b>They expect a platform where they can share their knowledge, mentor others, and contribute to the advancement of women in their field.
            <br><br> <b> Government and NGOs:</b>
            <br>                
            <br><b> Needs:</b> Government and non-governmental organizations working for gender equality may seek partnerships and a platform to reach and support women.
            <br><b> Expectations:</b> They expect a channel for collaboration, data sharing, and outreach to a wider audience of women.
            <br><br> <b> General Public:</b>
            <br>                
            <br><b> Needs: </b>The general public, including men and women, may need to access information on women's issues and show support for gender equality.
            <br><b> Expectations:</b> They expect to find informative content, awareness campaigns, and ways to engage in promoting gender equality.</p>
        </div>
    </div>

    <div class="accordion-item">
        <div class="accordion-title">Expected Benefits and Outcomes</div>
        <div class="accordion-content">
            <p><b>Empowering Women:</b> "Femme Futures" will empower women by providing access to job opportunities, government schemes, and valuable information through blogs, improving their socio-economic status and overall well-being.
<br>
<br>  <b>Efficient Job Matching: </b>The software will efficiently match job seekers with suitable job openings, reducing the time and effort required for job searches, benefiting both job seekers and employers.
<br>      
<br> <b> Enhanced User Experience:</b> Users will experience a user-friendly platform that provides seamless navigation and quick access to relevant information, resulting in a positive user experience.
<br>            
<br><b> Increased Productivity:</b> For businesses and employers, the software will lead to increased productivity by connecting them with qualified female candidates, contributing to more diverse and productive workforces.
<br>             
<br><b> Revenue Generation: </b>"Femme Futures" can generate revenue through partnerships, advertisements, and sponsored content, which can help sustain the platform's services and further its impact.
<br>               
<br><b>  Community Growth:</b> The software's success will foster a growing online community of women, creating a supportive network where knowledge and experiences can be shared, leading to personal and professional growth.
<br>              
<br><b> Awareness and Education:</b> The platform will raise awareness about government schemes and women-centric issues, providing valuable educational content to address these challenges effectively.
<br>               
<br><b> Data-Driven Decisions:</b> The organization can make data-driven decisions based on user behavior, preferences, and demographics, which can be invaluable for future improvements and tailoring services to meet users' needs.</p>
        </div>
    </div>

    <div class="accordion-item">
        <div class="accordion-title">Key Features and Functionality</div>
        <div class="accordion-content">
            <p><b>Job Portal:</b> "Femme Futures" provides a comprehensive job portal with features for job seekers and employers, allowing job postings, resume submissions, and efficient job matching.
<br>
<br>   <b> Government Scheme Information:</b> The platform offers a dedicated section to educate users about government schemes and initiatives aimed at women's empowerment.
<br>       
<br>  <b> Blogging:</b> Users can access a rich repository of blogs on various topics, including career guidance, health and wellness, and inspirational stories.
<br>        
<br> <b> Efficient Matchmaking:</b> An innovative job matching algorithm connects job seekers with employers, considering skills, preferences, and location.
<br>            
<br><b>Revenue Generation:</b> "Femme Futures" explores revenue generation through advertising, partnerships, and sponsored content to sustain its operations.
<br>            
<br><b> Mobile Accessibility:</b> The platform is accessible on mobile devices, ensuring that users can access its services on the go.
<br>            
<br><b>  User Support:</b> It offers user support services to address queries, technical issues, and feedback, ensuring a seamless user experience.
<br>              
<br><b> User-Generated Content:</b> Users can contribute by sharing their stories, advice, and insights, creating a dynamic and engaging content hub.
<br>             
<br><b> Educational Resources:</b> The software provides educational resources and articles to inform and empower women in various aspects of life.
<br>               
<br><b>  Privacy and Security:</b> It prioritizes user data privacy and employs robust security measures to safeguard user information.
<br>              
<br><b> Community Guidelines:</b> Enforces community guidelines to maintain a positive and supportive environment for all users.
<br>              
<br><b>Unique Empowerment Approach:</b> "Femme Futures" uniquely focuses on women's empowerment, offering a holistic platform that combines job opportunities, government resources, and community support in one place.
<br>          
<br><b>DIY Arts Marketplace: </b>"Femme Futures" empowers women to showcase and sell their do-it-yourself (DIY) arts and crafts, fostering entrepreneurship and economic independence.</p>
        </div>
    </div>

    <div class="accordion-item">
        <div class="accordion-title">Technology Stack</div>
        <div class="accordion-content">
            <p>
                <b>Programming Languages:</b>
<br>
<br>  <b>Java:</b> The primary programming language for the backend development, using Object-Oriented Programming (OOP) principles, Data Structures and Algorithms (DSA) for efficient processing.
<br> <b> HTML and CSS: </b>Used for creating the structure and styling of web pages.
<br> <b>JSP (JavaServer Pages):</b> Used for dynamic content generation within the Java web application.
<br><b> SQL: </b>For managing the database, creating and querying data.
<br><b> XML (eXtensible Markup Language):</b> Utilized for configuration and data interchange.
<br><br><b> Frameworks and Libraries:</b>
<br>              
<br><b>Spring Boot:</b> The core framework for building Java-based web applications with a focus on simplicity and convention over configuration. It includes an embedded web server, typically based on Tomcat, which eliminates the need for deploying  application to a separate web server.
<br><b> Hibernate:</b> An object-relational mapping (ORM) framework for simplifying database interactions.
<br><b>JDBC (Java Database Connectivity): </b>Used for database connectivity and query execution.
<br><b>CSS Frameworks:</b> Applied CSS frameworks like Bootstrap for responsive and visually appealing designs.
<br><b> Servlets: </b>Java classes that extend the capabilities of servers, providing dynamic responses to client requests.
<br><b> Git: </b>Version control system for tracking and managing code changes.
<br><br><b>   Database:</b>
<br>               
<br><b> SQL Database:</b> A relational database management system (RDBMS) for storing data related to users, products, and other application information.
<br><br><b> MVC Architecture:</b>
<br>              
<br><b>Model: </b>Represents the data and business logic of the application.
<br><b> View:</b> Handles the presentation and user interface, including JSP pages.
<br><b>Controller:</b> Manages the flow of data and user requests, connecting the Model and View components.
<br><br><b> Development Tools:</b>
<br>               
<br><b> Integrated Development Environment (IDE):</b> Tools like Vs Code and Spring Tool Suite for coding, debugging, and testing.
<br><b>  Maven:</b> Build automation tool for managing project dependencies.
<br><b> Database Management Tools:</b> Such as MySQL Workbench for database design and management.
<br><br><b>Version Control and Collaboration:</b>
<br>
<br><b>Git:</b> Utilized for version control to track code changes and collaborate with a development team.
<br><b>Scrum:</b> Implemented the Scrum methodology for agile project management and teamwork.

<br><br><b>Security:</b>
<br>
<br><b>Authentication and Authorization:</b> Implemented secure user authentication and authorization mechanisms.
</p>
         </div>
    </div>

    <div class="accordion-item">
        <div class="accordion-title">Developer Information</div>
        <div class="accordion-content">
            <p>   <div class="developer-info">
                <h3><b>Om Shankar Mishra</b></h3>
                <p>0302CA221024</p>
                <p>Role: Backend / Full Stack</p>
                <p>MCA 3rd Semester</p>
                <p>Vindhya Institute of Technology and Science - [VITS], Satna</p>
            </div>
            <hr>
            <div class="developer-info">
                <h3><b>Saniya Mirza</b></h3>
                <p>0302CA221035</p>
                <p>Role: Frontend</p>
                <p>MCA 3rd Semester</p>
                <p>Vindhya Institute of Technology and Science - [VITS], Satna</p>
            </div>
        </p>
        </div>
    </div>
</div>

<section class="blog-cards">
    <h1 id="blog">Empowering Women Through Knowledge</h1>
    <p><h3>Explore our collection of insightful and inspiring blogs dedicated to women's issues, empowerment, education, and more. Gain knowledge, find your voice, and be part of the Femme Futures movement.</h3></p>
<div class="blog-card">
    <img src="./images/pregnant blog.jpg" alt="pregnant">
    <h2>Pregnancy Blog</h2>
    <p>"Explore pregnancy's wonders, get expert tips, and find community support on our blog - your companion on the journey to motherhood...."</p>
<a href="https://fleurhealth.com/blog/five-blogs-to-read-during-your-pregnancy/" target="_blank" class="read-more">Read More</a>
</div>

<div class="blog-card">
    <img src="./images/child marriage.jpg" alt="child marriage">
    <h2>Child Marriage Blog</h2>
    <p>"Unveil the harsh realities of child marriage, championing change through stories of courage, legal insights, and empowering voices, raising awareness against this...."</p>
<a href="https://blog.ipleaders.in/child-marriage-impacts-consequences-effects-girl-child/" target="_blank" class="read-more">Read More</a>
</div>

<div class="blog-card">
    <img src="./images/nirmala.jpg" alt="nirmala">
    <h2>Strongest Women Blog</h2>
    <p>"Discover extraordinary stories of strength, resilience, and empowerment in our tribute to the world's most inspiring women...."</p>
<a href="https://www.hindustantimes.com/india-news/nirmala-sitharaman-among-6-indians-on-forbes-list-of-world-s-most-powerful-women-101670423879193.html" target="_blank" class="read-more">Read More</a>
</div>

<div class="blog-card">
    <img src="./images/periods blog.jpg" alt="periods">
    <h2>Puberty Blog</h2>
    <p>"Navigate the journey of adolescence with insights on puberty and periods – a guide for teens and parents on growing up...."</p>
<a href="https://www.healthdirect.gov.au/puberty-for-girls" target="_blank" class="read-more">Read More</a>
</div>

</section>

<div class="video">
<iframe width="78%" height="700px" style="border-radius: 15px;" src="https://www.youtube.com/embed/fWFtFxb8G7I?si=ACxHuus_M7uqQ7Q-" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
</div>

<div class="job-portal">
    <div class="jobpara">
    <h1 id="job"><b>Explore Exciting Job Opportunities</b></h1>
    <p>Welcome to the career hub of opportunities. Whether you're a seasoned professional looking for your next challenge or a fresh graduate eager to kickstart your career, our job listings offer a diverse array of possibilities. From tech giants like Microsoft and Google to innovative companies like Spotify and Netflix, we've got you covered. Browse through our curated job openings and find the perfect fit for your skills and aspirations. Your dream career may be just a click away. Start your journey today!</p>
</div>
<div class="job-listing">
    <h2><b>TOSCA TESTSUITE APPLICATION DEVELOPER</b></h2>
    <p><b>Company:</b> Accenture</p>
    <p><b>Location:</b> BENGALURU, India</p>
    <p><b>Salary:</b> 3,80,000 - 6,90,000 per year</p>
    <p><b>Description:</b>  The TOSCA TestSuite Application Developer role at Accenture involves creating business process models based on requirements, adapting industry trends to clients' unique needs, and ensuring the application's efficiency. You'll play a key part in mapping best practices and optimizing processes, contributing to a dynamic and innovative software development team.</p>
    <a href="https://www.accenture.com/in-en/careers" target="_blank" class="apply-button">Apply Now</a>
</div>

<div class="job-listing">
    <h2><b>Automation Tester at IBM</b></h2>
    <p><b>Company:</b> International Business Machines</p>
    <p><b>Location:</b> Hyderabad, India</p>
    <p><b>Salary:</b> 7,80,000 - 10,90,000 per year</p>
    <p><b>Description:</b>  Seeking an experienced Automation Tester to ensure the quality of our software products. Collaborate with developers to create and maintain test cases. Execute tests and report defects. Contribute to the improvement of testing processes.</p>
    <a href="https://www.ibm.com/careers/in-en/" target="_blank" class="apply-button">Apply Now</a>
</div>

<div class="job-listing">
    <h2><b>Data Analyst at Microsoft</b></h2>
    <p><b>Company:</b> Microsoft</p>
    <p><b>Location:</b> BENGALURU, India</p>
    <p><b>Salary:</b> 4,80,000 - 6,80,000 per year</p>
    <p><b>Description:</b>  Join our team as a Data Analyst to extract valuable insights from data and drive decision-making. Analyze large datasets, create visualizations, and provide data-driven recommendations. Work on diverse projects with a global impact.</p>
    <a href="https://careers.microsoft.com/v2/global/en/home.html" target="_blank" class="apply-button">Apply Now</a>
</div>

<div class="job-listing">
    <h2><b>Front-End Developer at Google</b></h2>
    <p><b>Company:</b> Google</p>
    <p><b>Location:</b> BENGALURU, India</p>
    <p><b>Salary:</b> 6,80,000 - 9,90,000 per year</p>
    <p><b>Description:</b>  We're looking for a skilled Front-End Developer to create exceptional web experiences. Develop and maintain user interfaces, optimize web performance, and ensure cross-browser compatibility. Collaborate with design and backend teams to implement user-friendly features.</p>
    <a href="https://careers.google.com/stories/applying-to-google/" target="_blank" class="apply-button">Apply Now</a>
</div>

<div class="job-listing">
    <h2><b>Software Engineer at Amazon</b></h2>
    <p><b>Company:</b> Amazon</p>
    <p><b>Location:</b> Indore, India</p>
    <p><b>Salary:</b> 3,80,000 - 6,90,000 per year</p>
    <p><b>Description:</b> Join Amazon as a Software Engineer and shape the future of e-commerce technology. Design, develop, and maintain scalable software solutions. Collaborate with cross-functional teams, solve complex problems, and deliver innovative customer experiences.</p>
    <a href="https://www.amazon.jobs/en/landing_pages/online-application" target="_blank" class="apply-button">Apply Now</a>
</div>

<div class="job-listing">
    <h2><b>Cybersecurity Analyst at Cisco</b></h2>
    <p><b>Company:</b> Cisco</p>
    <p><b>Location:</b> Bhopal, India</p>
    <p><b>Salary:</b> 2,80,000 - 5,90,000 per year</p>
    <p><b>Description:</b> Protect our systems and networks as a Cybersecurity Analyst at Cisco. Monitor security incidents, investigate vulnerabilities, and develop strategies to mitigate risks. Stay up to date with cybersecurity threats and assist in incident response.</p>
    <a href="https://www.cisco.com/c/en/us/training-events/training-certifications/tech-roles/cyberops-analyst.html" target="_blank" class="apply-button">Apply Now</a>
</div>

<div class="job-listing">
    <h2><b>UX Designer at Adobe</b></h2>
    <p><b>Company:</b> Adobe</p>
    <p><b>Location:</b> BENGALURU, India</p>
    <p><b>Salary:</b> 7,80,000 - 9,90,000 per year</p>
    <p><b>Description:</b> Adobe seeks a creative UX Designer to enhance user experiences in our software products. Conduct user research, create wireframes and prototypes, and collaborate with development teams. Shape the visual and interaction design of industry-leading applications.</p>
    <a href="https://www.adobe.com/careers.html" target="_blank" class="apply-button">Apply Now</a>
</div>

<div class="job-listing">
    <h2><b>Product Manager at Facebook</b></h2>
    <p><b>Company:</b> Facebook</p>
    <p><b>Location:</b> BENGALURU, India</p>
    <p><b>Salary:</b> 9,80,000 - 15,90,000 per year</p>
    <p><b>Description:</b> We're hiring a Product Manager to drive the development of innovative features. Define product strategy, prioritize features, and work closely with engineering and design teams. Ensure the delivery of products that meet user needs.</p>
    <a href="https://www.metacareers.com/areas-of-work/product-management/?p[teams][0]=Product%20Management&teams[0]=Product%20Management" target="_blank" class="apply-button">Apply Now</a>
</div>

</div>

<section class="scheme-cards">
    <h1 id="scheme">Unlocking Opportunities: Government Schemes for Women</h1>
    <p>Discover a world of opportunities for women through government schemes. Explore initiatives, benefits, and support systems designed to empower and uplift women. Explore and leverage the schemes that can change lives.</p>
    <div class="scheme-card">
        <img src="./images/ladli behna yojna.png" alt="behna-yojna">
        <h2><b>लाडली बहना योजना</b></h2>
        <p>28 जनवरी, 2023 को मध्य प्रदेश के मुख्यमंत्री शिवराज सिंह चौहान ने राज्य में 'लाडली लक्ष्मी योजना' की तरह नर्मदा जयंती और नर्मदापुरम के गौरव दिवस पर नर्मदापुरम (होशंगाबाद) जिले में 'लाडली बहना योजना' शुरू करने की घोषणा की। इस योजना में सभी वर्ग की गरीब बहनों को प्रति माह एक हजार रुपये मिलेंगे और यदि उन्हें अन्य योजनाओं का लाभ मिल रहा है तो वह भी पहले की तरह मिलता रहेगा....</p>
    <a href="https://cmhelpline.mp.gov.in/Schmedetail.aspx?Schemeid=964" target="_blank" class="read-more">अभी आवेदन करें</a>
    </div>

    <div class="scheme-card">
        <img src="./images/Pradhan_Mantri_Matritva_Vandana_Yojana.png" alt="vandana">
        <h2><b>प्रधानमंत्री मातृ वंदना योजना</b></h2>
        <p>इंदि‍रा गांधी मातृत्‍व सहयोग योजना के अंतर्गत गर्भवती और दूध पि‍लाने वाली महि‍लाओं को कुछ शर्तों के साथ मातृत्‍व लाभ पहुंचाए जाते हैं जि‍नका उद्देश्‍य उनके स्‍वास्‍थ्‍य और पोषण की स्‍थि‍ति‍ में सुधार लाना है ताकि दूध पि‍लाने वाली और गर्भवती स्‍त्रि‍यों के माहौल में सुधार कि‍या जा सके और इसके लि‍ए उन्‍हें नकद प्रोत्‍साहन राशि‍ दी जा सके।  फि‍लहाल लाभार्थि‍यों को दो कि‍स्‍तों में 6,000 रुपए बैंक अथवा डाकघर खातों के जरि‍ए दि‍ए जाते हैं। ...</p>
    <a href="https://wcd.nic.in/schemes/pradhan-mantri-matru-vandana-yojana" target="_blank" class="read-more">अभी आवेदन करें</a>
    </div>

    <div class="scheme-card">
        <img src="./images/Madhya-Pradesh-Prasuti-Sahayata-Yojana.jpg" alt="prasuti-sahayta">
        <h2><b>प्रसूति सहायता योजना</b></h2>
        <p>गर्भवती महिलाओ को गर्भवस्था के समय खाने पीने के लिए उचित भोजन भी नहीं मिल पाता और वह अपनी स्वास्थ्य सम्बन्धी जरूरतों को भी पूरा नहीं कर पाते इन सभी परेशानियों को देखते हुए राज्य सरकार ने मध्यप्रदेश प्रसूति सहायता योजना 2023 को शुरू किया है इस योजना के तहत मध्य प्रदेश की सरकार द्वारा 16000 रूपये की आर्थिक सहायता प्रदान ...</p>
    <a href="https://mp.gov.in/" target="_blank" class="read-more">अभी आवेदन करें</a>
    </div>

    <div class="scheme-card">
        <img src="./images/MP-KANYA-VIVAH-YOJANA-min.png" alt="kanya-viviah">
        <h2><b>मुख्यमंत्री कन्या विवाह योजना</b></h2>
        <p>मुख्यमंत्री कन्या विवाह/निकाह योजना के तहत राज्य सरकार द्वारा गरीब परिवार की लड़कियों के विवाह हेतु 49,000 की राशि दी जा रही थी। जिसे बढ़ाकर अब 51,000 रुपए कर दिया गया है। अब से इस योजना के तहत सरकार द्वारा राज्य के राज्य की गरीब परिवार की कन्याओं की शादी के लिए 51 हजार रुपए की राशि प्रदान की जाएगी।</p>
    <a href="https://cmhelpline.mp.gov.in/Schmedetail.aspx?Schemeid=373" target="_blank" class="read-more">अभी आवेदन करें</a>
    </div>

    <div class="scheme-card">
        <img src="./images/usha kiran yojna.jpg" alt="usha-kiran">
        <h2><b>उषा किरण योजना</b></h2>
        <p>एक सरकारी कार्यक्रम है जिसका उद्देश्य 18 वर्ष से कम उम्र की महिलाओं और बच्चों की मदद करना है, जो घरेलू हिंसा से महिला संरक्षण अधिनियम 2005 और नियम 2006 के अनुसार परिवार के सदस्यों द्वारा विभिन्न प्रकार की घरेलू हिंसा का सामना करते हैं, चाहे वह घर पर हो या सार्वजनिक रूप से।</p>
    <a href="https://cmhelpline.mp.gov.in/Schmedetail.aspx?Schemeid=250" target="_blank" class="read-more">अभी आवेदन करें</a>
    </div>

    <div class="scheme-card">
        <img src="./images/Ladli-Laxmi-Yojana.jpg" alt="laxmi-yojna">
        <h2><b>लाड़ली लक्ष्मी योजना</b></h2>
        <p>लाड़ली लक्ष्मी योजना मध्य प्रदेश सरकार द्वारा शुरू की गई एक योजना है। इसका उद्घाटन मुख्यमंत्री शिवराज सिंह चौहान ने किया. यह 7 अप्रैल 2007 से लागू हुआ। इस योजना के तहत, राज्य सरकार को पांच वर्षों के लिए प्रत्येक वर्ष ₹6,000 मूल्य के राष्ट्रीय बचत प्रमाणपत्र खरीदने होंगे और इन्हें समय-समय पर नवीनीकृत किया जाएगा। 21 वर्ष पूरे होने पर उसे शेष राशि मिलेगी, जो लगभग ₹1 लाख होगी। लाड़ली लक्ष्मी योजना के लिए साइबर कैफे, लोक सेवा केन्द्र, आंगनवाड़ी कार्यकर्ता के माध्यम से योजना के तहत आवेदन किया जा सकता है। इसके लिए बेटी का माता या पिता के साथ फोटो देना होगा।....</p>
    <a href="https://ladlilaxmi.mp.gov.in/Application/Public/LadliLaxmiRegistration.aspx" target="_blank" class="read-more">अभी आवेदन करें</a>
    </div>

</section>

<footer class="contact-footer" id="footer">
<div class="contact-info">
    <h3><b>Contact us</b></h3>
    <p>Email: <a href="https://mail.google.com/mail/u/0/#inbox?compose=DmwnWrRttNjCBHzcDpLkQrZhMVJQRRSQGnndGqHssxlmdhRkQmTdZGBZKcVFwWHsXsnNhHVhLXCl">omshankar92229@gmail.com</a></p>
</div>

<div class="social-links">
    <h3><b>Follow Us</b></h3>
    <a href="https://www.facebook.com/omshankar92229" class="fa fa-facebook" target="_blank"></a>
    <a href="https://www.linkedin.com/in/omi92229" class="fa fa-linkedin" target="_blank"></a>
    <a href="https://www.youtube.com/@solutionsandtricks/videos" class="fa fa-youtube" target="_blank"></a>
    <a href="https://www.instagram.com/art_attack_by_om/" class="fa fa-instagram" target="_blank"></a>
    <a href="https://twitter.com/monalithakur311" class="fa fa-twitter" target="_blank"></a>
</div>

<div class="map">
    <h3><b>Visit Us</b></h3>
    <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d14519.576347725968!2d81.3069207!3d24.523747!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sen!2sin!4v1698689643387!5m2!1sen!2sin" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
</div>

</footer>

    <script>


document.querySelector('#search-form').addEventListener('submit', function(event) {
        event.preventDefault(); // Prevent the form from submitting as a regular POST request

        // Get the user's search query from the input field
        var query = document.querySelector('#search-input').value;

        // Update the 'action' attribute of the form to include the query
        this.action = 'https://www.google.com/search?q=' + encodeURIComponent(query);

        // Submit the form with the updated action (will open Google search results in a new tab)
        this.submit();
    });


        const slider = document.querySelector('.slider');
        const slides = document.querySelector('.slides');
        let slideIndex = 0;

        function nextSlide(){
            slideIndex++;
            if(slideIndex === slides.children.length){
                slideIndex = 0;
            }
            const slideWidth = slides.children[0].offsetWidth;
            slides.style.transform=`translateX(-${slideIndex * slideWidth}px)`;
        }
        setInterval(nextSlide, 3000);




        const accordionItem = document.querySelectorAll('.accordion-item');
        accordionItem.forEach((item) => {
            const title= item.querySelector('.accordion-title');
            const content = item.querySelector('.accordion-content');
            title.addEventListener('click', ()=> {
                if(content.style.display === 'block'){
                    content.style.display='none';
                } else{
                    content.style.display='block';
                }
            })
        }

        )

    </script>
</body>
</html>
