<?php

require "php/connection.php";
require "php/functions.php";
require "header.php";

?>

<body>

<main>

<div class="container card" style="padding: 30px; margin-top: 20px; margin-bottom: 30px;">
  <h1 class="text-center" style="font-size: 50px;">Contact Us</h1>  
  <div class="row">
    <div class="col">
      <div>
        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1902.4534765609246!2d-88.19845906650009!3d17.511954589246898!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x8f5c5850b68f448b%3A0xfbf80c53c7801587!2sSt%20John&#39;s%20College%20Junior%20College%20Weber%20Building!5e0!3m2!1sen!2sbz!4v1683854942783!5m2!1sen!2sbz" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
      </div>
    </div>
    <div class="col">
      <div class="card">
        <div class="card-header bg-primary text-white"><i class="fa fa-envelope"></i> Contact us.</div>
        <div class="card-body">
          <form action="php/submit_form.php" method="POST">
            <div class="form-group">
              <label for="name">Name</label>
              <input type="text" class="form-control" id="name" aria-describedby="emailHelp" placeholder="Enter name" required>
            </div>
            <div class="form-group">
              <label for="email">Email address</label>
              <input type="email" class="form-control" id="email" aria-describedby="emailHelp" placeholder="Enter email" required>
              <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
            </div>
            <div class="form-group">
              <label for="message">Message</label>
              <textarea class="form-control" id="message" rows="6" required></textarea>
            </div>
            <div class="mx-auto" style="margin-top: 10px;">
              <button type="submit" class="btn btn-primary text-right">Submit</button></div>
          </form>
        </div>
      </div>
    </div>
  </div>
  <section style="margin-bottom: -30px;">
  <div class="row text-center" id="contact">
    <div class="col">
               <div class="card border-0">
                  <div class="card-body text-center">
                    <i class="fa fa-phone fa-5x mb-3" aria-hidden="true"></i>
                    <h4 class="text-uppercase">Call Us</h4>
                   <address>(+501) 223-3732</address>
                  </div>
                </div>
             </div>
             <div class="col">
               <div class="card border-0">
                  <div class="card-body text-center">
                    <i class="fa fa-map-marker fa-5x mb-3" aria-hidden="true"></i>
                    <h4 class="text-uppercase">Address</h4>
                    <address>Landivar Campus, Princess Margaret Dr, Belize City</address>
                  </div>
                </div>
             </div>
             <div class="col">
               <div class="card border-0">
                  <div class="card-body text-center">
                    <i class="fa fa-globe fa-5x mb-3" aria-hidden="true"></i>
                    <h4 class="text-uppercase">Email</h4>
                    <address><a style="text-decoration: none;" href="mailto:agritech@gmail.com">agritech@gmail.com</a></address>
                  </div>
                </div>
             </div>
  </div>
  </section>
  
</div>

<style>
#contact .card:hover i,#contact .card:hover h4{
	color: lightblue;
}

</style>


</main>

</body>

<?php

require("footer.php");

?>