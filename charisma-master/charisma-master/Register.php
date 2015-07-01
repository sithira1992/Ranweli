<?php include 'header.php';?>
<?php include 'NavBar.php';?>
<form role="form" xmlns="http://www.w3.org/1999/html">
    <div class="col-sm-3"
    <div class="form-group">


        <label class="control-label col-sm-4" for="email">Email:</label>

    <input type="email" class="form-control" id="email" placeholder="Enter email">


        
        </div>
    </div>


</form>



<form role="form">
    <div class="form-group">
        <label for="email">Email address:</label>
        <input type="email" class="form-control" id="email">
    </div>
    <div class="form-group">
        <label for="pwd">Password:</label>
        <input type="password" class="form-control" id="pwd">
    </div>
    <div class="checkbox">
        <label><input type="checkbox"> Remember me</label>
    </div>
    <button type="submit" class="btn btn-default">Submit</button>
</form>