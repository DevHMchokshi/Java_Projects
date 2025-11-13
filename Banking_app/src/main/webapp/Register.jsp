<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Register - MyBank</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
  <style>
    body { background-color: #f8f9fa; font-family: Arial, sans-serif; }
    .auth-card { background: #fff; border-radius: 12px; padding: 30px; box-shadow: 0px 4px 15px rgba(0,0,0,0.1); max-width: 400px; margin: auto; margin-top: 80px; }
    .auth-title { font-weight: bold; color: #0077b6; margin-bottom: 20px; text-align: center; }
    .form-control:focus { border-color: #0077b6; box-shadow: 0 0 5px rgba(0,119,182,0.5); }
  </style>
</head>
<body>

  <div class="auth-card">
    <h4 class="auth-title">Create an Account</h4>
    <form action="index.html">
      <div class="mb-3 input-group">
        <span class="input-group-text"><i class="fa fa-user"></i></span>
        <input type="text" class="form-control" placeholder="Full Name" required>
      </div>
      <div class="mb-3 input-group">
        <span class="input-group-text"><i class="fa fa-envelope"></i></span>
        <input type="email" class="form-control" placeholder="Email" required>
      </div>
      <div class="mb-3 input-group">
        <span class="input-group-text"><i class="fa fa-lock"></i></span>
        <input type="password" class="form-control" placeholder="Password" required>
      </div>
      <div class="mb-3 input-group">
        <span class="input-group-text"><i class="fa fa-phone"></i></span>
        <input type="text" class="form-control" placeholder="Phone" required>
      </div>
      <button type="submit" class="btn btn-success w-100">Register</button>
      <p class="text-center mt-3">Already have an account? <a href="bankUi.jsp">Login here</a></p>
    </form>
  </div>

</body>
</html>
