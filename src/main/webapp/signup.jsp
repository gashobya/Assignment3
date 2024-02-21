<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="Icons/icons8-hr-50.png">

    <title>Human Resource</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <link href="style.css" rel="stylesheet">
  </head>

  <body class="text-center">
    <div class="card">


    <form class="form-signin" action="/signup" method="post" id="form-signin">
      <img class="mb-4" src="Icons/icons8-hr-100.png" alt="" width="72" height="72">
      <h1 class="h3 mb-3 font-weight-normal">Please sign in</h1>
      <label for="inputEmail" class="sr-only">Email address</label>
      <input type="email" id="inputEmail" class="form-control" placeholder="Email address" name="email" required autofocus>
      <label for="inputPassword" class="sr-only">Password</label>
      <input type="password" id="inputPassword" class="form-control" placeholder="Password" name="password" required>

      <label for="inputPassword" class="sr-only">Confirm Password :</label>
      <input type="password" id="confirmPassword" class="form-control" placeholder="Confirm Password" name="confirmPassword" required>

      <div class="checkbox mb-3">


      </div>
      <button  class="btn btn-lg btn-primary btn-block" type="submit">Sign Up</button>
      <p class="mt-5 mb-3 text-muted">&copy; Izere Sabine 2024</p>
    </form>
</div>
    <script src="index.js"></script>
  </body>
</html>
