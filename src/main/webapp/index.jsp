<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="id">
    <head>
        <title>Rental Mobil Kaciw</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">


        <!--CSS NAVBAR-->
        <link rel="stylesheet" href="css/navbar.css">



        <!-- Tailwind CDN -->
        <script src="https://cdn.tailwindcss.com"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
        <!-- Custom CSS -->
        <style>

            /*smooth scroll*/
            html {
                scroll-behavior: smooth;
            }


            .hero-bg {
                background:
                    linear-gradient(rgba(2,6,23,0.75), rgba(2,6,23,0.75)),
                    url("https://i.pinimg.com/736x/94/6a/4e/946a4eabaeae4830ca015d713496aba6.jpg");
                background-size: cover;
                background-position: center;
            }


            .card-hover {
                transition: transform 0.3s ease, box-shadow 0.3s ease;
            }
            .card-hover:hover {
                transform: translateY(-6px);
                box-shadow: 0 20px 30px rgba(0,0,0,0.15);
            }

            /*section line*/
            .section-line {
                width: 50px;
                height: 4px;
                background: linear-gradient(90deg, #3b82f6, #6366f1);
                border-radius: 999px;
                transition: width 0.4s ease;
            }

            /* SAAT AKTIF */
            .section-title.active .section-line {
                width: 80px;
            }
            .section-title .section-line {
                opacity: 1;
            }




            .fade-up {
                opacity: 0;
                transform: translateY(40px);
                transition: all 0.8s ease;
            }

            .fade-up.show {
                opacity: 1;
                transform: translateY(0);
            }


            .fade-delay-1 {
                animation-delay: 0.15s;
            }
            .fade-delay-2 {
                animation-delay: 0.3s;
            }
            .fade-delay-3 {
                animation-delay: 0.45s;
            }
            .fade-delay-4 {
                animation-delay: 0.6s;
            }

            /*layanan utama*/
            /* REVEAL BASE */
            .reveal-left,
            .reveal-right {
                opacity: 0;
                transform: translateX(0);
                transition: all 0.9s ease;
            }

            /* DARI KIRI */
            .reveal-left {
                transform: translateX(-60px);
            }

            /* DARI KANAN */
            .reveal-right {
                transform: translateX(60px);
            }

            /* SAAT AKTIF */
            .reveal-active {
                opacity: 1;
                transform: translateX(0);
            }





            /*            @keyframes fadeUp {
                            to {
                                opacity: 1;
                                transform: translateY(0);
                            }
                        }*/

            /*logo animasi*/
            @keyframes float {
                0%, 100% {
                    transform: translateY(0);
                }
                50% {
                    transform: translateY(-12px);
                }
            }

            .animate-float {
                animation: float 4s ease-in-out infinite;
            }


        </style>
    </head>
    <body class="font-sans text-slate-800">

        <jsp:include page="partials/navbar.jsp" />



        <!-- Hero Section -->
        <section class="hero-bg text-white pt-32 pb-24 relative overflow-hidden" id="home">

            <!-- Overlay blur -->
            <div class="absolute inset-0 backdrop-blur-[2px]"></div>

            <!-- Konten hero -->
            <div class="relative z-10">
                <div class="max-w-7xl mx-auto px-6 grid md:grid-cols-2 gap-10 items-center">

                    <!-- KIRI: TEKS -->
                    <div>
                        <!--                        <span class="inline-block bg-indigo-100 text-indigo-600 px-4 py-1 rounded-full text-sm font-semibold mb-4">
                                                    🚗 Rental Mobil Terpercaya
                                                </span>-->

                        <h2 class="text-4xl md:text-5xl font-extrabold leading-tight mt-4">
                            Solusi <span class="text-indigo-400">Rental Mobil</span><br>
                            Nyaman, Aman & Profesional
                        </h2>

                        <p class="mt-6 text-slate-300">
                            Berbagai pilihan mobil terawat dengan harga transparan,
                            cocok untuk perjalanan bisnis maupun liburan keluarga.
                        </p>

                        <div class="mt-8 flex gap-4">
                            <a href="#mobil" class="bg-indigo-600 px-6 py-3 rounded-lg font-semibold hover:bg-indigo-700">
                                Lihat Mobil
                            </a>
                            <a href="#kontak" class="border border-white px-6 py-3 rounded-lg hover:bg-white hover:text-slate-900">
                                Hubungi Kami
                            </a>
                        </div>

                        <div class="mt-8 flex gap-6 text-slate-300 text-sm">
                            <div>✔ Mobil Terawat</div>
                            <div>✔ Supir Profesional</div>
                            <div>✔ Harga Transparan</div>
                        </div>
                    </div>

                    <!-- KANAN (opsional, kalau sudah dihapus boleh kosong) -->

                    <div class="hidden md:flex justify-center items-center">
                        <img src="img/logo.png"
                             class="w-[480px] lg:w-[600px] xl:w-[700px] 
                             animate-float 
                             drop-shadow-[0_30px_60px_rgba(99,102,241,0.5)]"
                             alt="Logo Rental Mobil">
                    </div>








                </div>
            </div>

        </section>




        <!-- TENTANG KAMI -->
        <section class="py-20 bg-gradient-to-b from-white to-slate-50" id="profil">
            <div class="max-w-[1200px] mx-auto px-8">

                <!-- HEADER -->
                <div class="text-center mb-20 fade-up section-title" data-section="profil">
                    <span class="inline-block text-blue-600 font-semibold tracking-widest uppercase 
                          px-4 py-1 rounded-full">
                        Tentang Kami
                    </span>

                    <!-- GARIS -->
                    <div class="section-line mx-auto mt-2 "></div>

                    <h2 class="mt-5 text-3xl md:text-4xl font-extrabold text-gray-800">
                        Rental Mobil Terpercaya untuk Setiap Perjalanan
                    </h2>

                    <p class="mt-5 text-gray-500 max-w-2xl mx-auto leading-relaxed">
                        Kami hadir untuk memberikan pengalaman sewa mobil yang aman,
                        nyaman, dan mudah dengan armada terbaik serta pelayanan profesional.
                    </p>
                </div>

                <!-- CONTENT -->
                <div class="grid grid-cols-1 md:grid-cols-2 gap-20 items-center">

                    <!-- KIRI -->
                    <div class="space-y-6 fade-up fade-delay-1">
                        <h3 class="text-2xl font-semibold text-gray-800">
                            Mengapa Memilih Kami?
                        </h3>

                        <p class="text-gray-600 leading-relaxed">
                            Rental Mobil Nusantara adalah layanan penyewaan mobil yang
                            mengutamakan kualitas, kenyamanan, dan kepuasan pelanggan.
                            Dengan armada yang terawat dan harga transparan, kami siap
                            menjadi partner perjalanan Anda.
                        </p>

                        <!-- LIST -->
                        <ul class="space-y-5 pt-4">
                            <li class="flex items-start gap-4 group">
                                <span class="mt-1 h-3 w-3 rounded-full bg-blue-600
                                      group-hover:scale-125 transition"></span>
                                <span class="text-gray-600 group-hover:text-gray-800 transition">
                                    Armada mobil bersih, terawat, dan siap jalan
                                </span>
                            </li>
                            <li class="flex items-start gap-4 group">
                                <span class="mt-1 h-3 w-3 rounded-full bg-blue-600
                                      group-hover:scale-125 transition"></span>
                                <span class="text-gray-600 group-hover:text-gray-800 transition">
                                    Harga transparan tanpa biaya tersembunyi
                                </span>
                            </li>
                            <li class="flex items-start gap-4 group">
                                <span class="mt-1 h-3 w-3 rounded-full bg-blue-600
                                      group-hover:scale-125 transition"></span>
                                <span class="text-gray-600 group-hover:text-gray-800 transition">
                                    Pelayanan ramah dan responsif
                                </span>
                            </li>                        
                        </ul>

                    </div>



                    <!-- KANAN -->
                    <div class="grid grid-cols-1 sm:grid-cols-2 gap-6">

                        <!-- CARD -->
                        <div class="p-8 rounded-3xl border border-gray-200
                             bg-white shadow-sm
                             hover:shadow-xl hover:-translate-y-1
                             transition-all duration-300
                             fade-up fade-delay-1">
                            <h4 class="text-4xl font-bold text-blue-600">
                                50+
                            </h4>
                            <p class="mt-2 text-gray-600">
                                Armada Mobil
                            </p>
                        </div>

                        <div class="p-8 rounded-3xl border border-gray-200
                             bg-white shadow-sm
                             hover:shadow-xl hover:-translate-y-1
                             transition-all duration-300 
                             fade-up fade-delay-2">
                            <h4 class="text-4xl font-bold text-blue-600">
                                1.000+
                            </h4>
                            <p class="mt-2 text-gray-600">
                                Pelanggan Puas
                            </p>
                        </div>

                        <div class="p-8 rounded-3xl border border-gray-200
                             bg-white shadow-sm
                             hover:shadow-xl hover:-translate-y-1
                             transition-all duration-300 
                             fade-up fade-delay-3">
                            <h4 class="text-4xl font-bold text-blue-600">
                                5+
                            </h4>
                            <p class="mt-2 text-gray-600">
                                Tahun Pengalaman
                            </p>
                        </div>

                        <div class="p-8 rounded-3xl border border-gray-200
                             bg-white shadow-sm
                             hover:shadow-xl hover:-translate-y-1
                             transition-all duration-300 
                             fade-up fade-delay-4">
                            <h4 class="text-4xl font-bold text-blue-600">
                                24/7
                            </h4>
                            <p class="mt-2 text-gray-600">
                                Layanan Support
                            </p>
                        </div>

                    </div>

                </div>
                <!-- VISI & MISI -->
                <div class="mt-16 grid grid-cols-1 md:grid-cols-2 gap-8">

                    <!-- VISI -->
                    <div class="card-hover fade-up fade-delay-1
                         p-10 rounded-2xl border border-gray-200 bg-white">

                        <span class="inline-block mb-4 px-5 py-1.5 rounded-full
                              bg-blue-50 text-blue-600 text-sm font-semibold">
                            Visi
                        </span>

                        <p class="text-gray-600 leading-relaxed text-lg">
                            Menjadi layanan rental mobil terpercaya yang
                            mengutamakan kenyamanan, keamanan, dan kepuasan pelanggan
                            di setiap perjalanan.
                        </p>
                    </div>

                    <!-- MISI -->
                    <div class="card-hover fade-up fade-delay-2
                         p-10 rounded-2xl border border-gray-200 bg-white">

                        <span class="inline-block mb-4 px-5 py-1.5 rounded-full
                              bg-blue-50 text-blue-600 text-sm font-semibold">
                            Misi
                        </span>

                        <p class="text-gray-600 leading-relaxed text-lg">
                            Menyediakan armada kendaraan yang terawat, pelayanan profesional
                            yang ramah dan responsif, serta harga yang transparan demi
                            memberikan pengalaman sewa mobil terbaik bagi pelanggan.
                        </p>
                    </div>

                </div>

            </div>
        </section>



        <!-- Layanan Kami - Sesuai Tema Rental Mobil -->
        <section id="layanan" class="py-10 bg-gray-50">
            <div class="max-w-7xl mx-auto px-6">

                <!-- HEADER -->
                <div class="text-center mb-20 section-title" data-section="layanan">
                    <p class="inline-block text-blue-600 font-semibold tracking-widest uppercase 
                       px-4 py-1 rounded-full">
                        Layanan Kami
                    </p>

                    <!-- GARIS -->
                    <div class="section-line mx-auto mt-2"></div>

                    <h2 class="text-4xl font-bold text-gray-800 mt-5">
                        Apa yang Kami Tawarkan
                    </h2>
                    <p class="text-gray-600 max-w-2xl mx-auto leading-relaxed">
                        Solusi terbaik untuk perjalanan Anda dengan nyaman, cepat, dan aman.
                    </p>
                </div>

                <!-- LAYANAN UTAMA -->
                <div class="grid grid-cols-1 lg:grid-cols-2 gap-20 items-center mb-28">

                    <!-- IMAGE -->
                    <div class="reveal-left">
                        <img src="img/tim.jpg"
                             alt="Layanan Rental Mobil"
                             class="rounded-3xl shadow-2xl w-full h-[560px] object-cover">
                    </div>

                    <!-- CONTENT LIST -->
                    <div class="divide-y divide-gray-200">

                        <!-- ITEM -->
                        <div class="flex gap-6 py-8 fade-in-up-scroll">
                            <div class="flex-shrink-0 text-blue-600">
                                <svg xmlns="http://www.w3.org/2000/svg" class="w-6 h-6"
                                     fill="none" viewBox="0 0 24 24" stroke="currentColor" stroke-width="2">
                                <path d="M3 13l2-5a3 3 0 013-2h8a3 3 0 013 2l2 5M5 13h14"/>
                                </svg>
                            </div>

                            <div>
                                <h3 class="text-xl font-semibold text-gray-800 mb-2">
                                    Sewa Mobil Harian
                                </h3>
                                <p class="text-gray-600 leading-relaxed max-w-xl">
                                    Solusi praktis untuk kebutuhan perjalanan harian dengan armada
                                    kendaraan yang bersih, nyaman, dan siap digunakan kapan saja.
                                </p>
                            </div>
                        </div>

                        <!-- ITEM -->
                        <div class="flex gap-6 py-8 fade-in-up-scroll delay-150">
                            <div class="flex-shrink-0 text-blue-600">
                                <svg xmlns="http://www.w3.org/2000/svg" class="w-6 h-6"
                                     fill="none" viewBox="0 0 24 24" stroke="currentColor" stroke-width="2">
                                <path d="M12 8v4l3 3M12 2a10 10 0 100 20 10 10 0 000-20z"/>
                                </svg>
                            </div>

                            <div>
                                <h3 class="text-xl font-semibold text-gray-800 mb-2">
                                    Sewa Jangka Panjang
                                </h3>
                                <p class="text-gray-600 leading-relaxed max-w-xl">
                                    Paket sewa mingguan hingga bulanan yang ideal untuk kebutuhan
                                    bisnis maupun penggunaan pribadi dengan biaya lebih efisien.
                                </p>
                            </div>
                        </div>

                        <!-- ITEM -->
                        <div class="flex gap-6 py-8 fade-in-up-scroll delay-300">
                            <div class="flex-shrink-0 text-blue-600">
                                <svg xmlns="http://www.w3.org/2000/svg" class="w-6 h-6"
                                     fill="none" viewBox="0 0 24 24" stroke="currentColor" stroke-width="2">
                                <path d="M18 8a6 6 0 10-12 0c0 7-3 9-3 9h18s-3-2-3-9"/>
                                </svg>
                            </div>

                            <div>
                                <h3 class="text-xl font-semibold text-gray-800 mb-2">
                                    Layanan 24 Jam
                                </h3>
                                <p class="text-gray-600 leading-relaxed max-w-xl">
                                    Dukungan customer service profesional yang siap membantu Anda
                                    kapan saja demi perjalanan yang aman dan tanpa kendala.
                                </p>
                            </div>
                        </div>

                    </div>
                </div>


                <!-- LAYANAN TAMBAHAN -->
                <div class="grid grid-cols-1 sm:grid-cols-2 md:grid-cols-3 gap-10">

                    <!-- CARD -->
                    <div class="bg-white rounded-3xl shadow-lg p-6 fade-in-up-scroll
                         hover:-translate-y-2 hover:shadow-2xl transition duration-500">
                        <img src="img/supir.jpg"
                             class="rounded-xl mb-6 w-full object-cover">
                        <h4 class="font-semibold text-gray-800 mb-2">
                            Driver Profesional
                        </h4>
                        <p class="text-gray-600 text-sm mb-4 leading-relaxed">
                            Didukung driver berpengalaman yang mengutamakan
                            keselamatan, kenyamanan, dan ketepatan waktu.
                        </p>
                        <a href="#pemesanan"
                           class="text-blue-600 font-semibold inline-flex items-center">
                            Selengkapnya
                            <span class="ml-1">→</span>
                        </a>
                    </div>

                    <!-- CARD -->
                    <div class="bg-white rounded-3xl shadow-lg p-6 fade-in-up-scroll delay-150
                         hover:-translate-y-2 hover:shadow-2xl transition duration-500">
                        <img src="img/mesin.jpg"
                             class="rounded-xl mb-6 w-full object-cover">
                        <h4 class="font-semibold text-gray-800 mb-2">
                            Armada Bersih & Terawat
                        </h4>
                        <p class="text-gray-600 text-sm mb-4 leading-relaxed">
                            Kendaraan rutin dicek, bersih, dan siap digunakan
                            untuk perjalanan jarak dekat maupun jauh.
                        </p>
                        <a href="#mobil"
                           class="text-blue-600 font-semibold inline-flex items-center">
                            Lihat Armada
                            <span class="ml-1">→</span>
                        </a>
                    </div>

                    <!-- CARD -->
                    <div class="bg-white rounded-3xl shadow-lg p-6 fade-in-up-scroll delay-300
                         hover:-translate-y-2 hover:shadow-2xl transition duration-500">
                        <img src="img/rental.jpg"
                             class="rounded-xl mb-6 w-full object-cover">
                        <h4 class="font-semibold text-gray-800 mb-2">
                            Booking Online Mudah
                        </h4>
                        <p class="text-gray-600 text-sm mb-4 leading-relaxed">
                            Pesan mobil secara cepat dan praktis langsung
                            dari website tanpa proses ribet.
                        </p>
                        <a href="#pemesanan"
                           class="text-blue-600 font-semibold inline-flex items-center">
                            Pesan Sekarang
                            <span class="ml-1">→</span>
                        </a>
                    </div>

                </div>

            </div>
        </section>


        <!-- Daftar Mobil -->
        <section class="py-10 bg-gray-50" id="mobil">
            <div class="container max-w-6xl mx-auto px-8">
                <div class="">
                    <div class="text-center mb-14">
                        <h2 class="text-3xl font-bold text-gray-800">
                            Pilihan Mobil
                        </h2>
                        <p class="text-gray-500 mt-2">
                            Beragam pilihan mobil terbaik
                        </p>
                    </div>

                    <div class="grid gap-8 sm:grid-cols-2 lg:grid-cols-4">
                        <!-- CARD -->
                        <div class="bg-white rounded-2xl border border-gray-200 
                             shadow-sm hover:shadow-xl
                             transition-all duration-300 ease-out
                             hover:-translate-y-2">

                            <!-- IMAGE WRAPPER -->
                            <div class="p-6 bg-slate-50 rounded-t-2xl">
                                <img src="img/brio.png"
                                     alt="Honfa Brio"
                                     class="w-full h-40 object-contain 
                                     transition duration-300 
                                     group-hover:scale-105">
                            </div>

                            <!-- CONTENT -->
                            <div class="p-6 text-center">
                                <h3 class="font-semibold text-lg text-gray-800">
                                    Honda Brio
                                </h3>

                                <p class="text-sm text-gray-500 mt-1">
                                    Manual • 7 Kursi
                                </p>

                                <p class="text-blue-600 font-bold text-lg mt-3">
                                    Rp 350.000 / hari
                                </p>

                                <button
                                    class="mt-5 w-full bg-blue-600 text-white 
                                    py-3 rounded-full font-semibold
                                    hover:bg-blue-700
                                    transition">
                                    Sewa
                                </button>
                            </div>
                        </div>
                        <div class="bg-white rounded-2xl border border-gray-200 
                             shadow-sm hover:shadow-xl
                             transition-all duration-300 ease-out
                             hover:-translate-y-2">

                            <!-- IMAGE WRAPPER -->
                            <div class="p-6 bg-slate-50 rounded-t-2xl">
                                <img src="img/rush.jpg"
                                     alt="Toyota Rush"
                                     class="w-full h-40 object-contain 
                                     transition duration-300 
                                     group-hover:scale-105">
                            </div>

                            <!-- CONTENT -->
                            <div class="p-6 text-center">
                                <h3 class="font-semibold text-lg text-gray-800">
                                    Toyota Rush
                                </h3>

                                <p class="text-sm text-gray-500 mt-1">
                                    Manual • 7 Kursi
                                </p>

                                <p class="text-blue-600 font-bold text-lg mt-3">
                                    Rp 350.000 / hari
                                </p>

                                <button
                                    class="mt-5 w-full bg-blue-600 text-white 
                                    py-3 rounded-full font-semibold
                                    hover:bg-blue-700
                                    transition">
                                    Sewa
                                </button>
                            </div>
                        </div>
                        <div class="bg-white rounded-2xl border border-gray-200 
                             shadow-sm hover:shadow-xl
                             transition-all duration-300 ease-out
                             hover:-translate-y-2">

                            <!-- IMAGE WRAPPER -->
                            <div class="p-6 bg-slate-50 rounded-t-2xl">
                                <img src="img/fortuner.png"
                                     alt="Toyota Fortuner"
                                     class="w-full h-40 object-contain 
                                     transition duration-300 
                                     group-hover:scale-105">
                            </div>

                            <!-- CONTENT -->
                            <div class="p-6 text-center">
                                <h3 class="font-semibold text-lg text-gray-800">
                                    Toyota Fortuner
                                </h3>

                                <p class="text-sm text-gray-500 mt-1">
                                    Manual • 7 Kursi
                                </p>

                                <p class="text-blue-600 font-bold text-lg mt-3">
                                    Rp 350.000 / hari
                                </p>

                                <button
                                    class="mt-5 w-full bg-blue-600 text-white 
                                    py-3 rounded-full font-semibold
                                    hover:bg-blue-700
                                    transition">
                                    Sewa
                                </button>
                            </div>
                        </div>
                        <div class="bg-white rounded-2xl border border-gray-200 
                             shadow-sm hover:shadow-xl
                             transition-all duration-300 ease-out
                             hover:-translate-y-2">

                            <!-- IMAGE WRAPPER -->
                            <div class="p-6 bg-slate-50 rounded-t-2xl">
                                <img src="img/avanza.jpg"
                                     alt="Toyota Avanza"
                                     class="w-full h-40 object-contain 
                                     transition duration-300 
                                     group-hover:scale-105">
                            </div>

                            <!-- CONTENT -->
                            <div class="p-6 text-center">
                                <h3 class="font-semibold text-lg text-gray-800">
                                    Toyota Avanza
                                </h3>

                                <p class="text-sm text-gray-500 mt-1">
                                    Manual • 7 Kursi
                                </p>

                                <p class="text-blue-600 font-bold text-lg mt-3">
                                    Rp 350.000 / hari
                                </p>

                                <button
                                    class="mt-5 w-full bg-blue-600 text-white 
                                    py-3 rounded-full font-semibold
                                    hover:bg-blue-700
                                    transition">
                                    Sewa
                                </button>
                            </div>
                        </div>
                        <div class="bg-white rounded-2xl border border-gray-200 
                             shadow-sm hover:shadow-xl
                             transition-all duration-300 ease-out
                             hover:-translate-y-2">

                            <!-- IMAGE WRAPPER -->
                            <div class="p-6 bg-slate-50 rounded-t-2xl">
                                <img src="img/avanza.jpg"
                                     alt="Toyota Avanza"
                                     class="w-full h-40 object-contain 
                                     transition duration-300 
                                     group-hover:scale-105">
                            </div>

                            <!-- CONTENT -->
                            <div class="p-6 text-center">
                                <h3 class="font-semibold text-lg text-gray-800">
                                    Toyota Avanza
                                </h3>

                                <p class="text-sm text-gray-500 mt-1">
                                    Manual • 7 Kursi
                                </p>

                                <p class="text-blue-600 font-bold text-lg mt-3">
                                    Rp 350.000 / hari
                                </p>

                                <button
                                    class="mt-5 w-full bg-blue-600 text-white 
                                    py-3 rounded-full font-semibold
                                    hover:bg-blue-700
                                    transition">
                                    Sewa
                                </button>
                            </div>
                        </div>
                        <div class="bg-white rounded-2xl border border-gray-200 
                             shadow-sm hover:shadow-xl
                             transition-all duration-300 ease-out
                             hover:-translate-y-2">

                            <!-- IMAGE WRAPPER -->
                            <div class="p-6 bg-slate-50 rounded-t-2xl">
                                <img src="img/avanza.jpg"
                                     alt="Toyota Avanza"
                                     class="w-full h-40 object-contain 
                                     transition duration-300 
                                     group-hover:scale-105">
                            </div>

                            <!-- CONTENT -->
                            <div class="p-6 text-center">
                                <h3 class="font-semibold text-lg text-gray-800">
                                    Toyota Avanza
                                </h3>

                                <p class="text-sm text-gray-500 mt-1">
                                    Manual • 7 Kursi
                                </p>

                                <p class="text-blue-600 font-bold text-lg mt-3">
                                    Rp 350.000 / hari
                                </p>

                                <button
                                    class="mt-5 w-full bg-blue-600 text-white 
                                    py-3 rounded-full font-semibold
                                    hover:bg-blue-700
                                    transition">
                                    Sewa
                                </button>
                            </div>
                        </div>
                        <div class="bg-white rounded-2xl border border-gray-200 
                             shadow-sm hover:shadow-xl
                             transition-all duration-300 ease-out
                             hover:-translate-y-2">

                            <!-- IMAGE WRAPPER -->
                            <div class="p-6 bg-slate-50 rounded-t-2xl">
                                <img src="img/avanza.jpg"
                                     alt="Toyota Avanza"
                                     class="w-full h-40 object-contain 
                                     transition duration-300 
                                     group-hover:scale-105">
                            </div>

                            <!-- CONTENT -->
                            <div class="p-6 text-center">
                                <h3 class="font-semibold text-lg text-gray-800">
                                    Toyota Avanza
                                </h3>

                                <p class="text-sm text-gray-500 mt-1">
                                    Manual • 7 Kursi
                                </p>

                                <p class="text-blue-600 font-bold text-lg mt-3">
                                    Rp 350.000 / hari
                                </p>

                                <button
                                    class="mt-5 w-full bg-blue-600 text-white 
                                    py-3 rounded-full font-semibold
                                    hover:bg-blue-700
                                    transition">
                                    Sewa
                                </button>
                            </div>
                        </div>
                        <div class="bg-white rounded-2xl border border-gray-200 
                             shadow-sm hover:shadow-xl
                             transition-all duration-300 ease-out
                             hover:-translate-y-2">

                            <!-- IMAGE WRAPPER -->
                            <div class="p-6 bg-slate-50 rounded-t-2xl">
                                <img src="img/avanza.jpg"
                                     alt="Toyota Avanza"
                                     class="w-full h-40 object-contain 
                                     transition duration-300 
                                     group-hover:scale-105">
                            </div>

                            <!-- CONTENT -->
                            <div class="p-6 text-center">
                                <h3 class="font-semibold text-lg text-gray-800">
                                    Toyota Avanza
                                </h3>

                                <p class="text-sm text-gray-500 mt-1">
                                    Manual • 7 Kursi
                                </p>

                                <p class="text-blue-600 font-bold text-lg mt-3">
                                    Rp 350.000 / hari
                                </p>

                                <button
                                    class="mt-5 w-full bg-blue-600 text-white 
                                    py-3 rounded-full font-semibold
                                    hover:bg-blue-700
                                    transition">
                                    Sewa
                                </button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>


        <!-- GALLERY -->
        <section id="gallery" class="py-24 bg-slate-50">
            <div class="max-w-7xl mx-auto px-6">

                <!-- HEADER -->
                <div class="text-center mb-16 fade-up">
                    <span class="text-indigo-600 font-semibold tracking-widest uppercase">
                        Gallery
                    </span>
                    <h2 class="mt-4 text-3xl md:text-4xl font-extrabold text-gray-800">
                        Armada & Aktivitas Kami
                    </h2>
                    <p class="mt-4 text-gray-500 max-w-2xl mx-auto">
                        Dokumentasi armada kendaraan dan momen pelayanan terbaik
                        kami untuk pelanggan.
                    </p>
                </div>

                <!-- GRID -->
                <div class="grid grid-cols-1 sm:grid-cols-2 md:grid-cols-3 gap-8">

                    <!-- CARD -->
                    <div class="group overflow-hidden rounded-2xl shadow-sm fade-up">
                        <img src="src="https://images.unsplash.com/photo-1605559424843-9e4c228bf1c8"
                             class="w-full h-64 object-cover
                             transition duration-500
                             group-hover:scale-110"
                             alt="Gallery 1">
                    </div>

                    <div class="group overflow-hidden rounded-2xl shadow-sm fade-up fade-delay-1">
                        <img src="img/gallery2.jpg"
                             class="w-full h-64 object-cover
                             transition duration-500
                             group-hover:scale-110"
                             alt="Gallery 2">
                    </div>

                    <div class="group overflow-hidden rounded-2xl shadow-sm fade-up fade-delay-2">
                        <img src="img/gallery3.jpg"
                             class="w-full h-64 object-cover
                             transition duration-500
                             group-hover:scale-110"
                             alt="Gallery 3">
                    </div>

                    <div class="group overflow-hidden rounded-2xl shadow-sm fade-up">
                        <img src="img/gallery4.jpg"
                             class="w-full h-64 object-cover
                             transition duration-500
                             group-hover:scale-110"
                             alt="Gallery 4">
                    </div>

                    <div class="group overflow-hidden rounded-2xl shadow-sm fade-up fade-delay-1">
                        <img src="img/gallery5.jpg"
                             class="w-full h-64 object-cover
                             transition duration-500
                             group-hover:scale-110"
                             alt="Gallery 5">
                    </div>

                    <div class="group overflow-hidden rounded-2xl shadow-sm fade-up fade-delay-2">
                        <img src="img/gallery6.jpg"
                             class="w-full h-64 object-cover
                             transition duration-500
                             group-hover:scale-110"
                             alt="Gallery 6">
                    </div>

                </div>
            </div>
        </section>



        <!-- Team -->
        <section id="team" class="py-10 bg-slate-50">
            <div class="text-center mb-20 fade-up section-title" data-section="tim">
                <p class="inline-block text-blue-600 font-semibold tracking-widest uppercase 
                   px-4 py-1 rounded-full">
                    Tim Kami
                </p>

                <!-- GARIS -->
                <div class="section-line mx-auto mt-2 "></div>

                <h3 class="text-3xl font-bold text-center mt-5">
                    Tim Profesional Kami
                </h3>

                <p class="max-w-2xl mx-auto text-center text-slate-600 leading-relaxed mb-10">
                    Didukung oleh tim berpengalaman dan berdedikasi tinggi, kami berkomitmen
                    memberikan pelayanan terbaik dengan standar profesional demi memastikan
                    setiap perjalanan Anda berjalan aman, nyaman, dan tepat waktu.
                </p>

                <!-- HIGHLIGHT -->
                <!--                <div class="flex justify-center gap-8 mb-14 text-sm text-slate-500">
                                    <div class="flex items-center gap-2">
                                        <span class="w-2 h-2 bg-blue-600 rounded-full"></span>
                                        Tim Berpengalaman
                                    </div>
                                    <div class="flex items-center gap-2">
                                        <span class="w-2 h-2 bg-blue-600 rounded-full"></span>
                                        Pelayanan Responsif
                                    </div>
                                    <div class="flex items-center gap-2">
                                        <span class="w-2 h-2 bg-blue-600 rounded-full"></span>
                                        Profesional & Terpercaya
                                    </div>
                                </div>-->
                <div class="container max-w-6xl mx-auto px-8">

                    <div class="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-4 gap-8">
                        <div class="bg-white rounded-2xl p-6 text-center card-hover">
                            <img src="https://images.unsplash.com/photo-1607746882042-944635dfe10e" class="w-32 h-32 mx-auto rounded-full object-cover mb-4" alt="Direktur">
                            <h4 class="text-xl font-semibold">Ahmad Pratama</h4>
                            <p class="text-slate-500">Direktur</p>
                            <div class="flex justify-center gap-4 text-gray-400">
                                <a href="#" class="hover:text-blue-600 transition">
                                    <i class="fab fa-linkedin text-lg"></i>
                                </a>
                                <a href="#" class="hover:text-sky-500 transition">
                                    <i class="fab fa-twitter text-lg"></i>
                                </a>
                                <a href="#" class="hover:text-pink-500 transition">
                                    <i class="fab fa-instagram text-lg"></i>
                                </a>
                            </div>
                        </div>

                        <div class="bg-white rounded-2xl p-6 text-center card-hover">
                            <img src="https://images.unsplash.com/photo-1595152772835-219674b2a8a6" class="w-32 h-32 mx-auto rounded-full object-cover mb-4" alt="Operasional">
                            <h4 class="text-xl font-semibold">Siti Rahma</h4>
                            <p class="text-slate-500">Manajer Operasional</p>
                            <div class="flex justify-center gap-4 text-gray-400">
                                <a href="#" class="hover:text-blue-600 transition">
                                    <i class="fab fa-linkedin text-lg"></i>
                                </a>
                                <a href="#" class="hover:text-sky-500 transition">
                                    <i class="fab fa-twitter text-lg"></i>
                                </a>
                                <a href="#" class="hover:text-pink-500 transition">
                                    <i class="fab fa-instagram text-lg"></i>
                                </a>
                            </div>
                        </div>

                        <div class="bg-white rounded-2xl p-6 text-center card-hover">
                            <img src="https://images.unsplash.com/photo-1527980965255-d3b416303d12" class="w-32 h-32 mx-auto rounded-full object-cover mb-4" alt="Customer Service">
                            <h4 class="text-xl font-semibold">Budi Santoso</h4>
                            <p class="text-slate-500">Customer Service</p>
                            <div class="flex justify-center gap-4 text-gray-400">
                                <a href="#" class="hover:text-blue-600 transition">
                                    <i class="fab fa-linkedin text-lg"></i>
                                </a>
                                <a href="#" class="hover:text-sky-500 transition">
                                    <i class="fab fa-twitter text-lg"></i>
                                </a>
                                <a href="#" class="hover:text-pink-500 transition">
                                    <i class="fab fa-instagram text-lg"></i>
                                </a>
                            </div>
                        </div>

                        <div class="bg-white rounded-2xl p-6 text-center card-hover">
                            <img src="https://images.unsplash.com/photo-1527980965255-d3b416303d12" class="w-32 h-32 mx-auto rounded-full object-cover mb-4" alt="Customer Service">
                            <h4 class="text-xl font-semibold">Budi Santoso</h4>
                            <p class="text-slate-500">Customer Service</p>
                            <div class="flex justify-center gap-4 text-gray-400">
                                <a href="#" class="hover:text-blue-600 transition">
                                    <i class="fab fa-linkedin text-lg"></i>
                                </a>
                                <a href="#" class="hover:text-sky-500 transition">
                                    <i class="fab fa-twitter text-lg"></i>
                                </a>
                                <a href="#" class="hover:text-pink-500 transition">
                                    <i class="fab fa-instagram text-lg"></i>
                                </a>
                            </div>
                        </div>
                    </div>

                </div>
                <!-- TEAM VALUE -->
                <div class="mt-20">

                    <div class="max-w-5xl mx-auto bg-white rounded-3xl shadow-sm border border-slate-200 px-8 py-12">

                        <h4 class="text-2xl font-semibold text-center mb-10">
                            Mengapa Memilih Tim Kami?
                        </h4>

                        <div class="grid grid-cols-1 md:grid-cols-3 gap-8 text-center">

                            <!-- ITEM -->
                            <div class="space-y-3">
                                <div class="w-14 h-14 mx-auto rounded-2xl bg-blue-600/10
                                     flex items-center justify-center">
                                    <svg xmlns="http://www.w3.org/2000/svg" class="w-7 h-7 text-blue-600"
                                         fill="none" viewBox="0 0 24 24" stroke="currentColor" stroke-width="2">
                                    <path d="M12 8c-2.2 0-4 1.8-4 4s1.8 4 4 4 4-1.8 4-4-1.8-4-4-4z"/>
                                    <path d="M20 21a8 8 0 10-16 0"/>
                                    </svg>
                                </div>
                                <h5 class="font-semibold text-lg">Berpengalaman</h5>
                                <p class="text-slate-600 text-sm leading-relaxed">
                                    Tim kami memiliki pengalaman dalam menangani berbagai kebutuhan
                                    sewa kendaraan secara profesional dan terstruktur.
                                </p>
                            </div>

                            <!-- ITEM -->
                            <div class="space-y-3">
                                <div class="w-14 h-14 mx-auto rounded-2xl bg-blue-600/10
                                     flex items-center justify-center">
                                    <svg xmlns="http://www.w3.org/2000/svg" class="w-7 h-7 text-blue-600"
                                         fill="none" viewBox="0 0 24 24" stroke="currentColor" stroke-width="2">
                                    <path d="M9 12l2 2 4-4"/>
                                    <path d="M12 22a10 10 0 100-20 10 10 0 000 20z"/>
                                    </svg>
                                </div>
                                <h5 class="font-semibold text-lg">Terpercaya</h5>
                                <p class="text-slate-600 text-sm leading-relaxed">
                                    Kami mengutamakan kejujuran, transparansi, dan komitmen
                                    dalam setiap layanan yang diberikan kepada pelanggan.
                                </p>
                            </div>

                            <!-- ITEM -->
                            <div class="space-y-3">
                                <div class="w-14 h-14 mx-auto rounded-2xl bg-blue-600/10
                                     flex items-center justify-center">
                                    <svg xmlns="http://www.w3.org/2000/svg" class="w-7 h-7 text-blue-600"
                                         fill="none" viewBox="0 0 24 24" stroke="currentColor" stroke-width="2">
                                    <path d="M18 8a6 6 0 10-12 0c0 7-3 9-3 9h18s-3-2-3-9"/>
                                    <path d="M13.73 21a2 2 0 01-3.46 0"/>
                                    </svg>
                                </div>
                                <h5 class="font-semibold text-lg">Responsif</h5>
                                <p class="text-slate-600 text-sm leading-relaxed">
                                    Kami siap membantu pelanggan dengan respon cepat dan solusi
                                    tepat demi kenyamanan perjalanan Anda.
                                </p>
                            </div>

                        </div>

                    </div>

                </div>

            </div>
        </section>


        <!-- ARTIKEL -->
        <section id="artikel" class="py-10 bg-slate-50">
            <div class="max-w-6xl mx-auto px-6">

                <!-- HEADER -->
                <div class="text-center mb-20 fade-up section-title" data-section="artikel">
                    <span class="inline-block text-blue-600 font-semibold tracking-widest uppercase">
                        Artikel & Tips
                    </span>

                    <!-- GARIS -->
                    <div class="section-line mx-auto mt-4"></div>

                    <h2 class="mt-5 text-3xl md:text-4xl font-extrabold text-gray-800">
                        Insight & Panduan Perjalanan
                    </h2>

                    <p class="mt-4 text-gray-500 max-w-2xl mx-auto leading-relaxed">
                        Temukan tips, panduan, dan informasi bermanfaat seputar rental mobil
                        agar perjalanan Anda lebih nyaman dan aman.
                    </p>
                </div>

                <!-- LIST ARTIKEL -->
                <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-10">

                    <!-- CARD -->
                    <article class="group bg-white rounded-3xl overflow-hidden
                             border border-gray-200 shadow-sm
                             hover:shadow-2xl hover:-translate-y-2
                             transition-all duration-500
                             fade-up fade-delay-1">

                        <!-- IMAGE -->
                        <div class="overflow-hidden">
                            <img src="https://images.unsplash.com/photo-1503376780353-7e6692767b70"
                                 class="h-56 w-full object-cover
                                 transition duration-700 group-hover:scale-110"
                                 alt="Tips Rental Mobil">
                        </div>

                        <!-- CONTENT -->
                        <div class="p-6">
                            <span class="text-sm text-blue-600 font-semibold">
                                Tips & Panduan
                            </span>

                            <h3 class="mt-2 text-xl font-semibold text-gray-800
                                group-hover:text-blue-600 transition">
                                Tips Memilih Mobil Rental yang Tepat
                            </h3>

                            <p class="mt-3 text-gray-600 text-sm leading-relaxed">
                                Pelajari cara memilih mobil rental sesuai kebutuhan perjalanan
                                agar lebih hemat dan nyaman.
                            </p>

                            <a href="#"
                               class="inline-flex items-center mt-5 text-blue-600 font-semibold">
                                Baca Selengkapnya
                                <span class="ml-2 transition group-hover:translate-x-1">→</span>
                            </a>
                        </div>
                    </article>

                    <!-- CARD -->
                    <article class="group bg-white rounded-3xl overflow-hidden
                             border border-gray-200 shadow-sm
                             hover:shadow-2xl hover:-translate-y-2
                             transition-all duration-500
                             fade-up fade-delay-2">

                        <div class="overflow-hidden">
                            <img src="https://images.unsplash.com/photo-1483729558449-99ef09a8c325"
                                 class="h-56 w-full object-cover
                                 transition duration-700 group-hover:scale-110"
                                 alt="Keuntungan Rental Mobil">
                        </div>

                        <div class="p-6">
                            <span class="text-sm text-blue-600 font-semibold">
                                Edukasi
                            </span>

                            <h3 class="mt-2 text-xl font-semibold text-gray-800
                                group-hover:text-blue-600 transition">
                                Keuntungan Rental Mobil Dibanding Kendaraan Pribadi
                            </h3>

                            <p class="mt-3 text-gray-600 text-sm leading-relaxed">
                                Ketahui alasan mengapa rental mobil bisa menjadi solusi
                                terbaik untuk perjalanan Anda.
                            </p>

                            <a href="#"
                               class="inline-flex items-center mt-5 text-blue-600 font-semibold">
                                Baca Selengkapnya
                                <span class="ml-2 transition group-hover:translate-x-1">→</span>
                            </a>
                        </div>
                    </article>

                    <!-- CARD -->
                    <article class="group bg-white rounded-3xl overflow-hidden
                             border border-gray-200 shadow-sm
                             hover:shadow-2xl hover:-translate-y-2
                             transition-all duration-500
                             fade-up fade-delay-3">

                        <div class="overflow-hidden">
                            <img src="https://images.unsplash.com/photo-1500530855697-b586d89ba3ee"
                                 class="h-56 w-full object-cover
                                 transition duration-700 group-hover:scale-110"
                                 alt="Road Trip">
                        </div>

                        <div class="p-6">
                            <span class="text-sm text-blue-600 font-semibold">
                                Travel
                            </span>

                            <h3 class="mt-2 text-xl font-semibold text-gray-800
                                group-hover:text-blue-600 transition">
                                Persiapan Road Trip yang Aman & Nyaman
                            </h3>

                            <p class="mt-3 text-gray-600 text-sm leading-relaxed">
                                Hal-hal penting yang wajib Anda siapkan sebelum melakukan
                                perjalanan jauh.
                            </p>

                            <a href="#"
                               class="inline-flex items-center mt-5 text-blue-600 font-semibold">
                                Baca Selengkapnya
                                <span class="ml-2 transition group-hover:translate-x-1">→</span>
                            </a>
                        </div>
                    </article>

                </div>
            </div>
        </section>


        <!-- KONTAK KAMI -->
        <section id="kontak" class="py-28 bg-slate-50 relative">
            <div class="max-w-[1200px] mx-auto px-8">

                <!-- HEADER -->
                <div class="text-center mb-20 fade-up">
                    <span class="text-blue-600 font-semibold tracking-wide uppercase">
                        Kontak
                    </span>
                    <!-- GARIS -->
                    <div class="section-line mx-auto mt-2 "></div>

                    <h2 class="mt-3 text-3xl md:text-4xl font-bold text-gray-800">
                        Hubungi Kami Kapan Saja
                    </h2>
                    <p class="mt-4 text-gray-500 max-w-2xl mx-auto">
                        Butuh informasi, konsultasi, atau ingin langsung booking?
                        Tim kami siap membantu Anda dengan cepat dan ramah.
                    </p>

                </div>

                <!-- CONTENT -->
                <div class="grid grid-cols-1 md:grid-cols-2 gap-14 items-start">

                    <!-- KIRI (INFO KONTAK) -->
                    <div class="space-y-8 fade-up fade-delay-1">

                        <div class="p-8 rounded-3xl bg-white shadow-lg border">
                            <h3 class="text-2xl font-semibold text-gray-800 mb-6">
                                Informasi Kontak
                            </h3>

                            <ul class="space-y-5 text-gray-600">
                                <li class="flex items-center gap-4">
                                    <span class="h-10 w-10 flex items-center justify-center
                                          rounded-full bg-blue-100 text-blue-600 font-bold">
                                        📍
                                    </span>
                                    <span>
                                        Jl. Nusantara No. 123, Indonesia
                                    </span>
                                </li>

                                <li class="flex items-center gap-4">
                                    <span class="h-10 w-10 flex items-center justify-center
                                          rounded-full bg-blue-100 text-blue-600 font-bold">
                                        📞
                                    </span>
                                    <span>
                                        +62 812-3456-7890
                                    </span>
                                </li>

                                <li class="flex items-center gap-4">
                                    <span class="h-10 w-10 flex items-center justify-center
                                          rounded-full bg-blue-100 text-blue-600 font-bold">
                                        ✉️
                                    </span>
                                    <span>
                                        info@rentalmobilnusantara.com
                                    </span>
                                </li>
                            </ul>
                        </div>

                        <!-- CTA -->
                        <div class="p-8 rounded-3xl bg-blue-600 text-white shadow-xl">
                            <h4 class="text-xl font-semibold">
                                Siap Booking Sekarang?
                            </h4>
                            <p class="mt-3 text-blue-100">
                                Klik tombol di bawah dan kami akan segera menghubungi Anda.
                            </p>

                            <a href="#"
                               class="inline-block mt-6 bg-white text-blue-600
                               font-semibold px-8 py-3 rounded-full
                               hover:scale-105 transition">
                                Chat via WhatsApp
                            </a>
                        </div>

                    </div>

                    <!-- KANAN (FORM) -->
                    <div class="fade-up fade-delay-2">
                        <form class="bg-white p-10 rounded-3xl shadow-2xl border space-y-6">

                            <div>
                                <label class="block text-sm font-medium text-gray-600 mb-1">
                                    Nama Lengkap
                                </label>
                                <input type="text"
                                       class="w-full px-5 py-3 rounded-xl border
                                       focus:ring-2 focus:ring-blue-500 outline-none"
                                       placeholder="Masukkan nama Anda">
                            </div>

                            <div>
                                <label class="block text-sm font-medium text-gray-600 mb-1">
                                    Email
                                </label>
                                <input type="email"
                                       class="w-full px-5 py-3 rounded-xl border
                                       focus:ring-2 focus:ring-blue-500 outline-none"
                                       placeholder="email@example.com">
                            </div>

                            <div>
                                <label class="block text-sm font-medium text-gray-600 mb-1">
                                    Pesan
                                </label>
                                <textarea rows="4"
                                          class="w-full px-5 py-3 rounded-xl border
                                          focus:ring-2 focus:ring-blue-500 outline-none"
                                          placeholder="Tulis pesan Anda..."></textarea>
                            </div>

                            <button type="submit"
                                    class="w-full bg-blue-600 text-white
                                    py-4 rounded-xl font-semibold
                                    hover:bg-blue-700 transition">
                                Kirim Pesan
                            </button>

                        </form>
                    </div>

                </div>
            </div>

            <!-- MAP PREMIUM -->
            <div class="relative mt-24 fade-up">

                <!-- MAP -->
                <div class="rounded-3xl overflow-hidden shadow-2xl">
                    <iframe
                        src="https://www.google.com/maps?q=Jakarta&output=embed"
                        class="w-full h-[420px] md:h-[520px]"
                        loading="lazy">
                    </iframe>
                </div>

                <!-- OVERLAY INFO -->
                <div class="absolute bottom-8 left-8 bg-white/90 backdrop-blur-xl 
                     rounded-2xl p-6 shadow-xl max-w-sm">
                    <h4 class="text-lg font-semibold text-gray-800">
                        Kantor Rental Mobil
                    </h4>
                    <p class="mt-2 text-gray-600 text-sm leading-relaxed">
                        Jl. Contoh Alamat No. 123<br>
                        Jakarta, Indonesia
                    </p>

                    <a href="https://maps.google.com"
                       target="_blank"
                       class="inline-flex items-center mt-4 text-blue-600 font-semibold text-sm hover:underline">
                        Lihat di Google Maps →
                    </a>
                </div>

            </div>


        </section>


        <jsp:include page="partials/footer.jsp" />


        <script>
            const observer = new IntersectionObserver((entries) => {
                entries.forEach(entry => {
                    if (entry.isIntersecting) {
                        entry.target.classList.add('show');
                    }
                });
            }, {
                threshold: 0.2
            });
            document.querySelectorAll('.fade-up').forEach(el => {
                observer.observe(el);
            });
        </script>


        <!-- Tailwind Scroll Animation Script -->
        <script>
            const faders = document.querySelectorAll('.fade-in-up-scroll');
            const appearOptions = {
                threshold: 0.3,
                rootMargin: "0px 0px -50px 0px"
            };
            const appearOnScroll = new IntersectionObserver(function (entries, observer) {
                entries.forEach(entry => {
                    if (!entry.isIntersecting)
                        return;
                    entry.target.classList.add('opacity-100', 'translate-y-0');
                    entry.target.classList.remove('opacity-0', 'translate-y-6');
                    observer.unobserve(entry.target);
                });
            }, appearOptions);
            faders.forEach(fader => {
                fader.classList.add('opacity-0', 'translate-y-6', 'transition-all', 'duration-700');
                appearOnScroll.observe(fader);
            });</script>


        <!--layanan utama-->
        <script>
            document.addEventListener("scroll", () => {
                const reveals = document.querySelectorAll(".reveal-left, .reveal-right");

                reveals.forEach(el => {
                    const windowHeight = window.innerHeight;
                    const elementTop = el.getBoundingClientRect().top;

                    if (elementTop < windowHeight - 100) {
                        el.classList.add("reveal-active");
                    }
                });
            });
        </script>


        <!----- SECTION LINE ----->
        <script>
            const sectionTitles = document.querySelectorAll(".section-title");

            const sectionObserver = new IntersectionObserver((entries) => {
                entries.forEach(entry => {
                    const id = entry.target.getAttribute("id");
                    const title = document.querySelector(
                            `.section-title[data-section="${id}"]`
                            );

                    if (entry.isIntersecting && title) {
                        sectionTitles.forEach(t => t.classList.remove("active"));
                        title.classList.add("active");
                    }
                });
            }, {
                threshold: 0.5
            });

            document.querySelectorAll("section[id]").forEach(section => {
                sectionObserver.observe(section);
            });
        </script>

        <!--NAVBAR-->
        <script>
            function toggleMenu() {
                document.getElementById("mobileMenu").classList.toggle("hidden");
            }
        </script>


        <script>
            const sections = document.querySelectorAll("section[id]");
            const navLinks = document.querySelectorAll(".nav-link");

            window.addEventListener("scroll", () => {
                let current = "";

                sections.forEach(section => {
                    const sectionTop = section.offsetTop - 120;
                    if (pageYOffset >= sectionTop) {
                        current = section.getAttribute("id");
                    }
                });

                navLinks.forEach(link => {
                    link.classList.remove("active");
                    if (link.getAttribute("href") === "#" + current) {
                        link.classList.add("active");
                    }
                });
            });
        </script>



    </body>
</html>
