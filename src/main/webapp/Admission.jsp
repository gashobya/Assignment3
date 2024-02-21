<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Human Resource</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
  <link rel="stylesheet" href="style.css">
  <link rel="icon" href="Icons/icons8-hr-64.png">

</head>

<body>
  <!-- nav-bar section -->
  <nav class="navbar navbar-expand-lg bg-primary bg-body-tertiary my-nav">
    <div class="container-fluid">
      <a class="navbar-brand" href="index.html"><img src="Icons/icons8-hr-64.png" alt=""></a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
        aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav">
          <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="index.html">Home</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="registration.html">Registration</a>
          </li>
          <li class="nav-item">
            <a class="nav-link login-link" href="login.html">Logout</a>
          </li>

        </ul>
      </div>
    </div>
  </nav>

  <div class="container">

    <form id="registration-form" action="/admission" method="post">
      <div class="row names labels">
        <div class="col">
          <p>First Name</p>
        </div>

        <div class="col">
          <p>Last Name</p>
        </div>
      </div>
      <div class="row names">
        <div class="col">
          <input required type="text" class="form-control" placeholder="First name" aria-label="First name">
        </div>

        <div class="col">
          <input required type="text" class="form-control" placeholder="Last name" aria-label="Last name">
        </div>
      </div>

      <div class="row address labels">
        <div class="col">
          <p>Country</p>
        </div>

        <div class="col">
          <p>City</p>
        </div>
      </div>


      <div class="row address">
        <div class="col">
          <input required type="text" class="form-control" placeholder="Country" aria-label="country">
        </div>
        <div class="col">
          <input required type="text" class="form-control" placeholder="City" aria-label="City">
        </div>
      </div>

      <div class="row contact labels">
        <div class="col">
          <p>Email</p>
        </div>

        <div class="col">
          <p>Document</p>
        </div>
      </div>




      <div class="row contact">
        <div class="col">
          <input required type="email" name="email" class="form-control" placeholder="email" aria-label="email">
        </div>
        <div class="col">
          <input required type="file" accept=".pdf" class="form-control" placeholder="phone" aria-label="phone">
        </div>
      </div>

      <div class="row labels">
        <div class="col">
          <p>Gender</p>
        </div>

        <div class="col">
          <p>Date Of Birth</p>
        </div>
      </div>


      <div class="row">
        <div class="col">

          <div class="gender-select">
            <select class="form-select" id="inlineFormSelectPref">
              <option selected="">Choose...</option>
              <option value="1">Male</option>
              <option value="2">Female</option>
              <option value="3">Prefer Not To Say</option>
            </select>
          </div>
        </div>

        <div class="col">
          <input required type="date" class="form-control" placeholder="day" aria-label="day">
        </div>
      </div>

      <div class="row position labels">
        <div class="col-sm-6">
          <p>Position</p>
        </div>
        <div class="col">
          <p>Passport Photo</p>
        </div>
      </div>
      <div class="row psotion">
        <div class="col-sm-6">
          <input class="form-control" type="text" name="postion" id="position" required placeholder="position">
        </div>
        <div class="col-sm-6">
          <div class="inputContainer" role="button" aria-label="Browse Files
              Drag and drop files here" tabindex="0"><input required multiple="multiple" class="fileupload-input"
              id="input_26" type="file" name="file" aria-labelledby="label_26" aria-hidden="true" tabindex="-1">
            <!-- <input required multiple="multiple" type="file" name="passport" id="passport" accept=".jpg" placeholder="Input your Picture"> -->
          </div>

        </div>
      </div>

      <button class="btn btn-primary btn-md" type="submit">submit</button>

    </form>

  </div>
  <script src="index.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
    integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r"
    crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js"
    integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+"
    crossorigin="anonymous"></script>

</body>

</html>