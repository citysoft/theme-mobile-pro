<!--- 
Theme: 	New Professional 2.0
File: 	header.cfm
Notes: 	This is a sample header file.  The header file file is generally called from 
		head.cfm after the call to init.cfm.
--->

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

<!--- Add Title and Meta Tags --->
<cfoutput>
  <title>MY ORGANIZATION |
  <cfif isHomepage>
    HOME PAGE TITLE
    <cfelse>
    #attributes.pagetitle#
  </cfif>
  </title>
  #getMetaTags()#</cfoutput>
<!--- Add style sheets as necessary. --->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
<cfoutput>
  <link rel="stylesheet" href="../_data/#vNodeFolder#/styles/flexnav.css" type="text/css" media="screen, projection" />
  <link rel="stylesheet" href="../_data/#vNodeFolder#/styles/custom.css" type="text/css" media="screen, projection" />
  
  <!-- Bootstrap -->
  <link rel="stylesheet" href="../_data/#vNodeFolder#/styles/bootstrap.min.css" type="text/css" media="screen, projection" />
</cfoutput>

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

<body>
<div class="row">
  <div class="col-lg-12" id="top-row"> </div>
</div>
<div class="container">
<br clear="all">
<div class="row">
  <div class="col-md-8"><a href="/index.cfm?nodeID=9"><img src="../_data/n_0009/images/logo.png" width="173" height="51" alt=""/></a><br>
    <p>optional tagline or mission statement</p>
  </div>
  <div class="col-md-4"><p class="pull-right"> <a href="/join">Join</a> |
    <cfif isDefined("client.userid") and client.userid NEQ 0>
      <cfoutput><a href="/index.cfm?fuseaction=home.editUserProfile">#request.editProfileTitle#</a></cfoutput> | 
      <!--<li class="member" style="border-right:0px"> --><a href="/index.cfm?fuseaction=home.Logout&nodeID=1">Logout</a> |<!--</li> -->
      <cfif isDefined("client.issuperuser") and client.issuperuser EQ 1>
        <!--<li class="member" style="border-right:0px"> --><a href="/admin">Admin</a><!--</li> -->
      </cfif>
      <cfelse>
      <!--<li class="member" style="border-right:0px"> --><a href="/login">Login</a><!--</li> -->
    </cfif>
    | <a href="/subscribe">Subscribe</a></p>
    
    <div class="input-group">
      <input type="text" class="form-control" placeholder="Search for...">
      <span class="input-group-btn">
      <button class="btn btn-default" type="button"><span class="glyphicon glyphicon-search" aria-hidden="true"></span> Go!</button>
      </span> </div>
    <!-- /input-group --> 
    
  </div>
</div>
<br clear="all">
<div class="row" >
  <div class="col-lg-12">
    <div class="menu-button"><span class="glyphicon glyphicon-menu-hamburger" aria-hidden="true"></span> Menu</div>
    <nav > 
      <!--- START: Navigation.  Navigation is defined within a <ul><li> structure and uses the "nav" id 
			  which is defined in the css file.  --->
      <ul id="nav" data-breakpoint="800" class="flexnav">
        <!--- The topmenu_show variable is used in the menu widget to determine which version
					  (public or password protected) of the menu will be displayed. --->
        <cfif not isDefined("client.userID") or client.userId lte 0>
          <cfset topmenu_show="public">
          <cfelse>
          <cfset topmenu_show="roleid">
        </cfif>
        <!--- Include main navigation file.  This will in turn include a cached navigation
				file that, in conjunction with the id defined above and the .css file, will define 
				the navigation (e.g. a drop down menu structure). --->
        
        <cfinclude template="../../../_includes/design/menu.cfm">
        <!--- Optional: Add login and admin links to menu. ---> 
        <!---
				<cfif isDefined("client.userid") and client.userid NEQ 0>
					<li class="member" style="border-right:0px"><a href="/index.cfm?fuseaction=home.Logout&nodeID=1">Logout</a></li>
					<cfif isDefined("client.issuperuser") and client.issuperuser EQ 1>
						<li class="member" style="border-right:0px"><a href="/admin">Admin</a></li>
					</cfif>
				<cfelse>
					<li class="member" style="border-right:0px"><a href="/index.cfm?pageId=482">Member Login</a></li>
				</cfif>--->
      </ul>
      <!--- END: Navigation ---> 
    </nav>
  </div>
</div>
<br clear="all">
<cfif isHomepage>
  <div id="carousel-example-generic" class="carousel slide" data-ride="carousel"> 
    
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
      <li data-target="#carousel-example-generic" data-slide-to="1"></li>
      <li data-target="#carousel-example-generic" data-slide-to="2"></li>
      <li data-target="#carousel-example-generic" data-slide-to="3"></li>
    </ol>
    
    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
      <div class="item active"> <img src="../_data/n_0009/images/main_img1.jpg" alt="">
        <div class="carousel-caption">
          <h1>Heading</h1>
          <p class="lead">Cras justo odio, dapibus ac facilisis in, egestas eget quam.</p>
          <p> <a class="btn btn-lg btn-success" href="#" role="button">Learn More!</a> </p>
        </div>
      </div>
      <div class="item"> <img src="../_data/n_0009/images/hm_slide_temp2.jpg" alt="">
        <div class="carousel-caption">
          <h1>Heading</h1>
          <p class="lead">Cras justo odio, dapibus ac facilisis in, egestas eget quam.</p>
          <p> <a class="btn btn-lg btn-success" href="#" role="button">Learn More!</a></p>
        </div>
      </div>
      <div class="item"> <img src="../_data/n_0009/images/hm_slide_temp3.jpg" alt="">
        <div class="carousel-caption">
          <h1>Heading</h1>
          <p class="lead">Cras justo odio, dapibus ac facilisis in, egestas eget quam.</p>
          <p> <a class="btn btn-lg btn-success" href="#" role="button">Learn More!</a></p>
        </div>
      </div>
      <div class="item"> <img src="../_data/n_0009/images/hm_slide_temp4.jpg" alt="">
        <div class="carousel-caption">
          <h1>Heading</h1>
          <p class="lead">Cras justo odio, dapibus ac facilisis in, egestas eget quam.</p>
          <p> <a class="btn btn-lg btn-success" href="#" role="button">Learn More!</a></p>
        </div>
      </div>
    </div>
    
    <!-- Controls --> 
    <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev"> <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span> <span class="sr-only">Previous</span> </a> <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next"> <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span> <span class="sr-only">Next</span> </a> </div>
  <br clear="all">
</cfif>

<!---	<!-- Start Email Subscription Widget-->
			<cfoutput>
			<div id="emailsubscription">
			    <cfif client.userid lte 0>
					<form name="newsletter" method="post" action="/index.cfm?fuseaction=email.subscribe">
						<input type="text" class="textfield" value="Email" onfocus="if(this.value==this.defaultValue) this.value='';" onblur="if(this.value=='') this.value = 'Email';" maxlength="50"  name="email_post">
				        <input type="text" class="textfield"  value="Zip Code" size="11px" onfocus="if(this.value==this.defaultValue) this.value='';" onblur="if(this.value=='') this.value = 'Zip Code';" maxlength="10"  name="postalcode">
				        <input type="hidden" value="1" name="EmailRecipientListIDs">
				        <input type="submit" class="button" value="Join Our Email List" name="submit">
					</form>
					<p class="emailsubscriptionfoot"><a href="/index.cfm?pageId=xxx">Optional message / link here</a></p>
				<cfelse>
			    	<a href="/index.cfm?fuseaction=email.subscribe" title="Manage my subscriptions">My Subscriptions</a>
					<p class="emailsubscriptionfoot"><a href="/index.cfm?pageId=xxx">Optional message / link here</a></p>
			    </cfif>
			</div>
			</cfoutput>
			<!-- End Email Subscription Widget -->---> 

