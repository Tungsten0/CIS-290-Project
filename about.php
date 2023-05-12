<?php

require "php/connection.php";
require "php/functions.php";
require "header.php";

?>

<body>


<main>

<div class="container-fluid" style="padding: 50px;">
  
	<div class="row">
    <div class="text-center text" style="margin-top: 50px; margin-bottom: -50px;">
      <h1>
        Contributions
      </h1>
    </div>
		<div class="col Services-tab item" style="width: 50px;">
			<div class="folded-corner service_tab_1">
				<div class="text">
					<i class="fa fa-laptop-code fa-5x fa-icon-image"></i>
						<p class="item-title"> 
								<h3>Marco Lee-Shi</h3>
						</p>
					<p>
						Group Leader <br>
						Head Programmer
					</p>
				</div>
			</div>
	    </div>
		<div class="col Services-tab item">
			<div class="folded-corner service_tab_1">
				<div class="text">
					<i class="fa fa-lightbulb fa-5x fa-icon-image" ></i>
						<p class="item-title">
							<h3>Leanna Gutierrez</h3>
						</p>
						<p>
							Head Researcher
					</p>
				</div>
			</div>
		</div>
		<div class="col Services-tab item">
			<div class="folded-corner service_tab_1">
				<div class="text">
					<i class="fa fa-sharp fa-solid fa-palette fa-5x fa-icon-image"></i>
						<p class="item-title">
							<h3>Jesus Zafra</h3>
						</p>
					<p>
						Head Designer
					</p>
				</div>
			</div>
		</div>
    <div class="col Services-tab item">
			<div class="folded-corner service_tab_1">
				<div class="text">
					<i class="fa fa-laptop-code fa-5x fa-icon-image"></i>
						<p class="item-title">
							<h3>Amali Teck</h3>
						</p>
					<p>
						Designer <br>
						Programmer
					</p>
				</div>
			</div>
		</div>
	  <div class="col Services-tab item">
			<div class="folded-corner service_tab_1">
				<div class="text">
					<i class="fa fa-lightbulb fa-5x fa-icon-image"></i>
						<p class="item-title">
							<h3>Kent Haylock</h3>
						</p>
					<p>
						Researcher
					</p>
				</div>
			</div>
		</div>
	</div>
</div>

</main>

<style>
h3 {
  color: #ec5626;
}
.text{
	color: #ec5626;
	text-align: center;
}


.folded-corner:hover .text{
	visibility: visible;
	color: #000000;;
}
.Services-tab{
	margin-top:80px;
}

/*
  nav link items
*/
.folded-corner{
  padding: 60px 30px;
  position: relative;
  font-size: 100%;
  text-decoration: none;
  color: #999; 
  background: transparent;
  transition: all ease .5s;
  border: 1px solid #ec5626;
}
.folded-corner:hover{
	background-color: #ec5626;
}

/*
  paper fold corner
*/

.folded-corner:before {
  content: "";
  position: absolute;
  top: 0;
  right: 0;
  border-style: solid;
  border-width: 0 0px 0px 0;
  border-color: #ddd #000;
  transition: all ease .3s;
}

/*
  on li hover make paper fold larger
*/
.folded-corner:hover:before {
	background-color: #D00003;
  border-width: 0 50px 50px 0;
  border-color: #eee #000;
  
}

.service_tab_1{
	background-color: #000;
}
.service_tab_1:hover .fa-icon-image{
    color: #000;
    transform:  scale(1.5);
}


.fa-icon-image{ 
	color: #ec5626; 
	display: inline-block; 
    font-style: normal;
    font-variant: normal;
    font-weight: normal;
    line-height: 1;
    font-size-adjust: none;
    font-stretch: normal;
    -moz-font-feature-settings: normal;
    -moz-font-language-override: normal;
    text-rendering: auto;
    transition: all .65s linear 0s;
    text-align: center;
    transition: all 1s cubic-bezier(.99,.82,.11,1.41);
}


</style>

</body>


<?php

require "footer.php";

?>