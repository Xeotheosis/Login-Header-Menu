<%@ Page Title="" Language="C#" MasterPageFile="~/AdminAsoc/AdminAssociationMaster.Master" AutoEventWireup="true" CodeBehind="AdminAsocDashboard.aspx.cs" Inherits="WebAppNet472.AdminAsocDashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Admin Dashboard</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <script src="https://unpkg.com/react@17/umd/react.production.min.js" crossorigin></script>
    <script src="https://unpkg.com/react-dom@17/umd/react-dom.production.min.js" crossorigin></script>
    <script src="https://unpkg.com/@babel/standalone/babel.min.js"></script>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap');
        .poppins {
            font-family: "Poppins", sans-serif;
        }
        .roboto {
            font-family: "Roboto", sans-serif;
        }
       
.* {
  scrollbar-width: none;
  -ms-overflow-style: none;  
  overflow: hidden;
}

.*::-webkit-scrollbar {
  display: none;
}

        .menu-item {
            background-color: #e0e7ff; /* bg-indigo-100 */
            padding: 0.5rem; /* p-8 */
            padding-block: 2rem;
            border-radius: 0.375rem; /* rounded-md */
            display: flex; /* flex */
            align-items: center; /* items-center */
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1); /* shadow-md */
            justify-content: center;
            transition: transform 150ms ease-in-out; /* transition-transform */
            transition-delay: 100ms; /* delay-100 */
            font-size: 1.125rem;
            gap: 1rem;
        }
        @media (min-width: 1280px) { /* xl breakpoint */
            .menu-item {
                flex-direction: column-reverse;
                align-items: center;
            }
        }
        .menu-item:hover {
            transform: scale(0.95); /* hover:scale-95 */
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
     <section id="root" class=" w-full h-full rounded-lg grid grid-cols-1 gap-8 xl:grid-cols-2 xl:gap-4 lg:overflow-scroll xl:overflow-visible"></section>
    <script type="text/babel">
        const { useState } = React;

        const Dashboard = () => {
            const [isWaterIconClicked, setWaterIconClicked] = useState(false);

            const toggleWaterMenu = (e) => {
                e.preventDefault();
                setWaterIconClicked((prev) => !prev);
            };

            return (
              <>
                    <section className="font-bold cursor-pointer group transition-all delay-100 grid grid-cols-2 xl:grid xl:grid-rows-2 xl:grid-cols-3 gap-3 group">
                        <a href="#" className="flex p-8 lg:flex-row justify-center items-center shadow-md rounded-md gap-4 h-full w-full col-span-2 lg:col-span-3 bg-indigo-200">
                            <i className="bx bxs-info-circle text-4xl"></i>
                            <div>
                                <h1 className="poppins text-3xl xl:text-2xl tracking-widest 2xl:text-4xl">Informatii</h1>
                            </div>
                        </a>
                        <a href="#" className="menu-item 2xl:text-xl">
                            Editare
                            <i className="fa-solid fa-highlighter text-blue-400"></i>
                        </a>
                        <a href="#" className="menu-item text-lg 2xl:text-xl">
                            Preturi
                            <i className="fa-solid fa-hand-holding-dollar text-green-800 text-xl"></i>
                        </a>
                        <a href="#" className="col-span-2 lg:col-span-1 menu-item 2xl:text-xl">
                            Cheltuieli
                            <i className="fa-solid fa-sack-dollar text-xl text-green-800"></i>
                        </a>
                    </section>

                    <section className="font-bold cursor-pointer group transition-all delay-100 grid grid-cols-2 xl:grid md:grid-cols-4 md:grid-rows-3 gap-3">
                        <a onClick={toggleWaterMenu} href="#" className="relative order-2 lg:order-none menu-item">
                            Apa
                            <i className="fa-solid fa-faucet-drip text-xl text-blue-300"></i>
                            <div className={`${isWaterIconClicked ? "block opacity-100" : "hidden opacity-0"} z-10 absolute flex flex-col -top-35 bg-gray-50 shadow-lg right-0 gap-4 w-full translate-x-40 rounded-lg transition-opacity delay-100 md:-translate-x-40 lg:translate-x-40 xl:flex-row xl:justify-evenly xl:w-max xl:bottom-10 xl:translate-x-30`}>
                                <a href="#" className="p-4 grid place-items-center border-b border-gray-300 xl:border-b-0">
                                    <i className="fa-solid fa-faucet text-red-500 text-xl"></i>
                                    Apa calda
                                </a>
                                <a href="#" className="p-4 grid place-items-center border-b border-gray-300 xl:border-b-0 xl:border-r xl:border-l">
                                    <i className="fa-solid fa-faucet text-blue-300 text-xl"></i>
                                    Apa rece
                                </a>
                                <a href="#" className="p-4 rounded-md grid place-items-center">
                                    <i className="fa-solid fa-cloud-rain text-gray-800"></i>
                                    Apa pluviala
                                </a>
                            </div>
                        </a>
                        <a href="#" className="flex order-1 bg-indigo-200 items-center justify-center rounded-lg p-8 shadow-md gap-2 w-full col-span-2 md:col-span-3 row-span-2">
                            <i className="bx bx-dollar-circle text-4xl"></i>
                            <div>
                                <h1 className="poppins text-3xl tracking-widest font-extrabold">Cheltuieli</h1>
                            </div>
                        </a>

                        <a href="#" className="order-3 menu-item">
                            Gaze
                            <i className="fa-solid fa-fire-burner text-xl text-red-300"></i>
                        </a>

                        <a href="#" className="order-4 menu-item">
                            Energie
                            <i className="fa-solid fa-bolt text-xl text-yellow-300"></i>
                        </a>

                        <a href="#" className="order-5 menu-item">
                            Facturi
                            <i className="fa-solid fa-file-invoice text-xl text-blue-400"></i>
                        </a>
                        <a href="#" className="order-6 menu-item">
                            Lift
                            <i className="fa-solid fa-cable-car text-xl text-green-800"></i>
                        </a>
                        <a href="#" className="order-7 menu-item">
                            Alte cheltuieli
                            <i className="fa-solid fa-cash-register text-xl"></i>
                        </a>
                    </section>

                    <section className="font-bold grid grid-cols-2 group transition-all delay-100 lg:grid lg:grid-cols-3 lg:grid-rows-3 gap-3">
                        <a href="#" className="menu-item order-2 lg:order-none">
                            Consumuri
                            <i className="fa-solid fa-chart-simple text-xl text-green-800"></i>
                        </a>
                        <a href="#" className="menu-item order-3 lg:order-none">
                            Restante
                            <i className="fa-solid fa-hourglass-half text-xl text-amber-800"></i>
                        </a>
                        <a href="#" className="menu-item order-6 lg:order-none">
                            Setari
                            <i className="bx bxs-cog text-xl"></i>
                        </a>
                        <a href="#" className="flex order-1 shadow-md justify-center items-center rounded-lg p-8 gap-4 h-full w-full col-span-2 lg:row-span-2 bg-indigo-200">
                            <i className="bx bx-buildings text-4xl"></i>
                            <div>
                                <h1 className="poppins text-3xl tracking-wider group-hover:opacity-100">Apartamente</h1>
                            </div>
                        </a>
                        <div className="menu-item order-4">
                            Caldura
                            <i className="fa-solid fa-fire text-xl text-red-500"></i>
                        </div>
                        <div className="menu-item order-5">Altele</div>
                    </section>

                    <section className="font-bold grid grid-cols-2 group transition-all delay-100 lg:grid lg:grid-cols-3 gap-3">
                        <a href="#" className="menu-item order-2 lg:order-none">
                            Afise
                            <i className="fa-solid fa-chalkboard-user text-xl text-orange-300"></i>
                        </a>
                        <a href="#" className="menu-item order-3 lg:order-none">
                            Centralizator
                        </a>
                        <a href="#" className="menu-item order-4 lg:order-none">
                            Formulare
                            <i className="fa-regular fa-rectangle-list text-xl text-indigo-500"></i>
                        </a>
                        <a href="#" className="flex justify-center p-8 items-center shadow-md rounded-md gap-4 h-full w-full col-span-2 lg:col-span-3 bg-indigo-200">
                            <i className="bx bxs-file-pdf text-4xl"></i>
                            <div>
                                <h1 className="poppins text-3xl tracking-wider">Rapoarte</h1>
                            </div>
                        </a>
                    </section>
            </>
            );
        };

        ReactDOM.render(<Dashboard />, document.getElementById('root'));
    </script>
</asp:Content>
