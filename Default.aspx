<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebAppNet472.Default" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>AsPropManager - Home</title>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v6.3.0/css/all.css" />
    <link rel="icon" href="https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css" />
    <link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.8/css/line.css" />

    <script src="https://cdn.tailwindcss.com"></script>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap');

        :root {
            --primary-color: #344E41;
            --secondary-color: #dad7cd;
            --accent-color: #3A5A40;
        }


        body {
            background-repeat: no-repeat;
            font-family: "Roboto", sans-serif;
        }



        /* CUSTOM CLASS FOR GLASS-LIKE BACKGROUND */
        .glass {
            background: rgba(255, 255, 255, 0.2);
            border-radius: 15px;
            box-shadow: 0 4px 30px rgba(0, 0, 0, 0.1);
            backdrop-filter: blur(10px);
            -webkit-backdrop-filter: blur(10px);
            text-align: center;
        }

        /* BACKGROUND SETTINGS */

        .bg-main {
            background: linear-gradient(180deg, rgba(218, 215, 205, 1) 0%, rgba(163, 177, 138, 1) 100%);
        }

        .bg-primary {
            background: linear-gradient(0deg, rgba(11, 44, 36, 1) 0%, rgba(52, 78, 65, 1) 100%);
        }

        .bg-accent {
            background-color: var(--accent-color);
        }

        .bg-secondary {
            background-color: var(--secondary-color);
        }

        /* FONT SETTINGS */


        /* Fonts */
        .poppins {
            font-family: "Poppins", sans-serif;
        }

        .roboto {
            font-family: "Robot", sans-serif;
        }

        /* Colors */
        .font-primary-color {
            color: var(--primary-color)
        }
    </style>
</head>

<body class="bg-gray-50 h-screen">
    <div id="root"
        class="w-full h-full relative flex flex-col items-center justify-center gap-8 p-4 lg:max-w-[80%] lg:flex-row lg:m-0 lg:mx-auto">
       <section class="shadow-xl rounded-xl flex flex-col-reverse  md:grid grid-cols-2 w-full md:max-w-5xl">
      <section class="bg-gray-100 p-4 h-full rounded-xl lg:rounded-tl-xl lg:rounded-bl-xl">
        <div class="px-8 flex flex-col justify-between gap-4 h-full">
          <div>
            <h2 class="font-bold text-4xl text-center">Welcome back</h2>
            <p class="text-md text-center">
              Sign in if you are already a member
            </p>
          </div>
          <form
            action="submit"
            class="flex flex-col gap-4">
            <input
              class="p-2 rounded-xl border"
              type="text"
              placeholder="Username"
            />
            <div class="relative">
              <input
                class="p-2 rounded-xl border w-full"
                type="password"
                placeholder="Password"
              />
            </div>

            <a href="Login.aspx" class="bg-indigo-200 rounded-xl font-bold py-2 text-center">
              Log in
            </a>
          </form>
          <div class="mt-10 grid grid-cols-3 items-center text-gray-500">
            <hr class="border-gray-500" />
            <p class="text-center text-sm">Or</p>
            <hr class="border-gray-500" />
          </div>

          <div>
            <button class="bg-indigo-200 rounded-xl font-bold py-2 w-full">
              Sign up
            </button>
          </div>

          <div>
            <p class="text-sm font-primary-color text-center opacity-50 hover:cursor-pointer hover:opacity-100 transition-opacity delay-100">
              Forgot your password?
            </p>
          </div>
        </div>
      </section>

      <section class="bg-indigo-200 flex flex-col gap-4 justify-between items-center p-4 rounded-xl lg:rounded-tr-xl lg:rounded-br-xl">
        <div class="text-center">
          <h1 class="text-4xl font-bold flex items-center gap-2">
            <i class="bx bx-bar-chart-alt"></i>
            AsPropManager
          </h1>
          <p>Your tool for all administrative needs</p>
        </div>
        <div class="flex justify-center">
          <img
            class="rounded-xl aspect-square w-1/2 md:w-3/4"
            src="AdminAsoc/Images/Hero.png"
            alt="hero image"
          />
        </div>
        <div class="sm:block hidden">
          <p class="text-xs flex gap-2 items-center">
            Copyright
            <i class="fa-regular fa-copyright text-sm"></i>
            AsPropManager 2024
          </p>
        </div>
      </section>
    </section>
    </div>
</body>

</html>
