<%-- 
    Document   : newjsp
    Created on : 9/11/2022, 18:32:36
    Author     : ramir
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
          <head>
                    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
                    <!-- CSS only -->
                    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
                    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css" integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ" crossorigin="anonymous">
                    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
                    <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
                    <!-- JavaScript Bundle with Popper -->
                    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
                    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">
                    <link href="StyleLoginPage.css" rel="stylesheet" type="text/css"/>
                    <script src="js/LoginScript.js" type="text/javascript"></script>
                    <script src="js/script.js" type="text/javascript"></script>
                    <title>Iniciar Sesión</title>
          </head>
          <body id="bod">

                    <c:if test="${success ==0}">
                              <div class="alert alert-danger" id="error">${message}</div>
                    </c:if>

                    <div class="container" id="container">

                              <div class="form-container sign-up-container">

                                        <form action="SaveUser" id="form" method="POST" name="form">
                                                  <h1 class="text-white">Create Account</h1>
                                                  <div class="social-container">
                                                            <a class="btn btn-outline-light btn-floating m-1" href="#" role="button">
                                                                      <i>
                                                                                <svg xmlns="http://www.w3.org/2000/svg" width="25" fill="currentColor" class="bi bi-facebook" viewBox="0 0 16 16">
                                                                                <path d="M16 8.049c0-4.446-3.582-8.05-8-8.05C3.58 0-.002 3.603-.002 8.05c0 4.017 2.926 7.347 6.75 7.951v-5.625h-2.03V8.05H6.75V6.275c0-2.017 1.195-3.131 3.022-3.131.876 0 1.791.157 1.791.157v1.98h-1.009c-.993 0-1.303.621-1.303 1.258v1.51h2.218l-.354 2.326H9.25V16c3.824-.604 6.75-3.934 6.75-7.951z"/>
                                                                                </svg></i>
                                                            </a>
                                                            <a class="btn btn-outline-light btn-floating m-1" href="#" role="button">
                                                                      <i>
                                                                                <svg xmlns="http://www.w3.org/2000/svg" width="25" fill="currentColor" class="bi bi-google" viewBox="0 0 16 16">
                                                                                <path d="M15.545 6.558a9.42 9.42 0 0 1 .139 1.626c0 2.434-.87 4.492-2.384 5.885h.002C11.978 15.292 10.158 16 8 16A8 8 0 1 1 8 0a7.689 7.689 0 0 1 5.352 2.082l-2.284 2.284A4.347 4.347 0 0 0 8 3.166c-2.087 0-3.86 1.408-4.492 3.304a4.792 4.792 0 0 0 0 3.063h.003c.635 1.893 2.405 3.301 4.492 3.301 1.078 0 2.004-.276 2.722-.764h-.003a3.702 3.702 0 0 0 1.599-2.431H8v-3.08h7.545z"/>
                                                                                </svg></i>
                                                            </a>
                                                  </div>
                                                  <span>or use your email for registration</span>
                                                  <!-- <input type="text" placeholder="Name" /> -->
                                                  <input type="email" placeholder="Email"  id="userRegister" name="userRegister"/>
                                                  <input type="hidden" name="control" value="SAVE"/>
                                                  <input type="password" placeholder="Password" id="passRegister" name="passRegister"/>
                                                  <input id="SignUpB" type="button" onclick="sendForm()" value="Sign Up"> 
                                        </form>
                              </div>

                              <div class="form-container sign-in-container">

                                        <form action="UserValidation" method="POST">
                                                  <h1 class="text-white">Sign in</h1>
                                                  <div class="social-container">
                                                            <a class="btn btn-outline-light btn-floating m-1" href="#" role="button">
                                                                      <i>
                                                                                <svg xmlns="http://www.w3.org/2000/svg" width="25" fill="currentColor" class="bi bi-facebook" viewBox="0 0 16 16">
                                                                                <path d="M16 8.049c0-4.446-3.582-8.05-8-8.05C3.58 0-.002 3.603-.002 8.05c0 4.017 2.926 7.347 6.75 7.951v-5.625h-2.03V8.05H6.75V6.275c0-2.017 1.195-3.131 3.022-3.131.876 0 1.791.157 1.791.157v1.98h-1.009c-.993 0-1.303.621-1.303 1.258v1.51h2.218l-.354 2.326H9.25V16c3.824-.604 6.75-3.934 6.75-7.951z"/>
                                                                                </svg></i>
                                                            </a>
                                                            <a class="btn btn-outline-light btn-floating m-1" href="#" role="button">
                                                                      <i>
                                                                                <svg xmlns="http://www.w3.org/2000/svg" width="25" fill="currentColor" class="bi bi-google" viewBox="0 0 16 16">
                                                                                <path d="M15.545 6.558a9.42 9.42 0 0 1 .139 1.626c0 2.434-.87 4.492-2.384 5.885h.002C11.978 15.292 10.158 16 8 16A8 8 0 1 1 8 0a7.689 7.689 0 0 1 5.352 2.082l-2.284 2.284A4.347 4.347 0 0 0 8 3.166c-2.087 0-3.86 1.408-4.492 3.304a4.792 4.792 0 0 0 0 3.063h.003c.635 1.893 2.405 3.301 4.492 3.301 1.078 0 2.004-.276 2.722-.764h-.003a3.702 3.702 0 0 0 1.599-2.431H8v-3.08h7.545z"/>
                                                                                </svg></i>
                                                            </a>
                                                  </div>
                                                  <span>or use your account</span>
                                                  <input type="email" placeholder="Email" id="user" name="user">
                                                  <input type="password" placeholder="Password" id="pass" name="pass" >
                                                  <a href="#">Forgot your password?</a>
                                                  <button type="submit" id="SignInB">Sign In</button>
                                        </form>
                              </div>
                              <div class="overlay-container">
                                        <div class="overlay">
                                                  <div class="overlay-panel overlay-left">
                                                            <br>
                                                            <h1> Welcome Back!</h1>
                                                            <p>
                                                                      To keep connected with us please login with your personal info</p>
                                                            <button class="ghost" id="signIn" onClick="signin()">Sign In</button>
                                                  </div>
                                                  <div class="overlay-panel overlay-right"><br>
                                                            <h1>Hello, Friend!</h1>
                                                            <p>Enter your personal details and start journey with us</p>
                                                            <button class="ghost" id="signUp" onClick="signup()">Sign Up</button>
                                                  </div>
                                        </div>
                              </div>
                    </div>
                    <!-- partial -->
          </body>
</html>
