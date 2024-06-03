<?php ob_start(); ?>
<nav class="flex justify-center small-shadow fixed w-full z-50 bg-white">
    <div class="w-[90%] flex justify-center items-center relative h-[4rem]">
        <img src="public/img/logo-no-bg.png" class=" h-12 absolute left-8" alt="">
        <ul class="flex justify-center gap-4 font-rubik-semibold">
            <li><a href="#hero-img" class="is-active">Beranda</a></li>
            <li><a href="#tipe-kamar">Kamar</a></li>
        </ul>
    </div>
</nav>
<main>
    <div id="hero-img" class="relative w-full ">
        <img src="public/img/hero.png" class="h-[100vh] w-full" alt="">
        <div class="absolute left-1/2 top-1/2 flex flex-col gap-3 -translate-x-1/2 -translate-y-1/2 z-10 text-center text-white">
            <h1 class="font-rubik-bold text-8xl">StayEase</h1>
            <p class="text-2xl">Reservasi Hotel dengan Mudah dan Nyaman</p>
        </div>
    </div>
    <div id="tentang-kami" class="my-16 flex justify-center">
        <div class="w-[80%] grid grid-cols-2 gap-10">
            <img src="public/img/about-us.png" class=" rounded-2xl shadow-lg" alt="">
            <div class="flex flex-col gap-3 justify-center">
                <p class="font-rubik-bold text-lg text-prime">Selamat datang</p>
                <h2 class="font-rubik-bold text-6xl">Tentang Kami</h2>
                <p class="break-words">Selamat datang di StayEase, tempat di mana kenyamanan, keramahtamahan, dan layanan terbaik berpadu dalam harmoni yang sempurna. Terletak di lokasi strategis yang mudah diakses, StayEase merupakan pilihan ideal bagi pelancong bisnis maupun rekreasi yang mencari pengalaman menginap tak terlupakan.</p>
            </div>
        </div>
    </div>
    <div id="visi-misi" class="my-16 flex justify-center">
        <div class="w-[80%] grid grid-cols-2 gap-10">
            <div class="flex justify-between gap-4 items-center">
                <img src="public/img/ellipse.png" alt="">
                <div>
                    <p class="font-rubik-bold">Visi</p>
                    <p class="break-words">“Menjadi hotel terkemuka yang mengutamakan kenyamanan dan kepuasan tamu dengan pelayanan terbaik dan fasilitas unggul, serta berkomitmen memberikan pengalaman menginap yang tak terlupakan.”</p>
                </div>
            </div>
            <div class="flex justify-between gap-4 items-center">
                <img src="public/img/ellipse.png" alt="">
                <div>
                    <p class="font-rubik-bold">Misi</p>
                    <ol>
                        <li>1. Memberikan Pelayanan Prima</li>
                        <li>2. Menyediakan Fasilitas Unggul</li>
                        <li>3.  Menciptakan Pengalaman Menginap yang Tak Terlupakan</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="text-4xl flex justify-center my-16">
        <div class="w-[90%]">
            <h2>Our Living Room</h2>
            <h2>Rooms & Suits</h2>
        </div>
    </div>
    <div id="tipe-kamar" class="flex justify-center my-16">
        <div class="w-[90%]">
            <h2 class="text-4xl font-rubik-semibold text-center">Tipe Kamar Terbaik</h2>
            <div class="grid grid-cols-3 gap-6 my-10">
                <?php for($i=0; $i<3; $i++): ?>
                    <div class="flex flex-col rounded-xl items-center box-border p-3 shadow-md">
                        <img src="public/img/rooms/superior.png" class="rounded-lg" alt="">
                        <div class="mt-3 flex flex-col justify-between items-center h-[16rem]">
                            <h3 class="text-center font-rubik-bold">Superior Room</h3>
                            <p class="text-xs break-words text-center">
                            Didesain dengan elegan dan dilengkapi dengan fasilitas modern, kamar ini menawarkan tempat tidur king size yang nyaman, televisi layar datar, akses Wi-Fi gratis, meja kerja, dan kamar mandi pribadi dengan perlengkapan mandi premium.
                            </p>
                            <a href="" class="text-lg bg-anchor hover:bg-prime py-1 px-4 rounded-md w-fit">View</a>
                        </div>
                    </div>
                <?php endfor; ?>
            </div>
        </div>
    </div>
</main>
<footer class="mt-16 mb-8 px-8 flex justify-between bg-[#FBFBFB] text-xs">
    <div class="w-[20%]">
        <img src="public/img/logo-no-bg.png" class="mb-2" alt="">
        <p class="break-words">Sistem informasi berbasis website yang menyediakan layanan untuk reservasi hotel sehingga dapat memudahkan dan memfasilitasi tamu dalam pemesanan hotel</p>
    </div>
    <div class="w-[20%] flex flex-col gap-3">
        <p class="font-rubik-bold">NAVIGASI</p>
        <ul class="flex flex-col gap-1">
            <li><a class="hover:underline" href="#hero-img">Beranda</a></li>
            <li><a class="hover:underline" href="#tipe-kamar">Kamar</a></li>
        </ul>
    </div>
    <div class="w-[20%] flex flex-col gap-3">
        <p class="font-rubik-bold">CONTACT INFO</p>
        <div class="flex flex-col gap-3">
            <ul class="flex flex-col gap-1">
                <li>Phone: 1234567890</li>
                <li>Email: company@email.com</li>
                <li>Location: 100 Smart Street, LA, USA</li>
            </ul>
            <ul class="flex gap-2">
                <li>
                    <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                    <path d="M21.4286 0H2.57143C1.88944 0 1.23539 0.270918 0.753154 0.753154C0.270918 1.23539 0 1.88944 0 2.57143L0 21.4286C0 22.1106 0.270918 22.7646 0.753154 23.2468C1.23539 23.7291 1.88944 24 2.57143 24H9.92411V15.8405H6.54911V12H9.92411V9.07286C9.92411 5.74339 11.9063 3.90429 14.9421 3.90429C16.3961 3.90429 17.9164 4.16357 17.9164 4.16357V7.43143H16.2413C14.5907 7.43143 14.0759 8.45571 14.0759 9.50625V12H17.7605L17.1713 15.8405H14.0759V24H21.4286C22.1106 24 22.7646 23.7291 23.2468 23.2468C23.7291 22.7646 24 22.1106 24 21.4286V2.57143C24 1.88944 23.7291 1.23539 23.2468 0.753154C22.7646 0.270918 22.1106 0 21.4286 0Z" fill="#CFD166"/>
                    </svg>
                </li>
                <li>
                    <svg width="27" height="22" viewBox="0 0 27 22" fill="none" xmlns="http://www.w3.org/2000/svg">
                    <path d="M27 2.6096C26.0071 3.05059 24.9405 3.34856 23.8191 3.48324C24.9761 2.78933 25.8417 1.69719 26.2544 0.410618C25.1674 1.05779 23.9777 1.51332 22.737 1.75742C21.9027 0.864556 20.7977 0.272751 19.5934 0.0738863C18.3891 -0.124978 17.1531 0.080224 16.0771 0.657635C15.0011 1.23505 14.1454 2.15236 13.6429 3.26716C13.1403 4.38195 13.019 5.63186 13.2979 6.82283C11.0952 6.71198 8.9405 6.13817 6.97346 5.13862C5.00643 4.13907 3.27106 2.73613 1.87999 1.02085C1.40434 1.84324 1.13085 2.79672 1.13085 3.81219C1.13032 4.72634 1.35491 5.62649 1.78471 6.43277C2.21451 7.23906 2.83623 7.92654 3.59469 8.43423C2.71507 8.40617 1.85487 8.16795 1.08566 7.73937V7.81088C1.08557 9.09302 1.52805 10.3357 2.33801 11.3281C3.14798 12.3204 4.27554 13.0014 5.52938 13.2553C4.71339 13.4767 3.85788 13.5093 3.02748 13.3507C3.38124 14.4539 4.07033 15.4186 4.99828 16.1097C5.92623 16.8009 7.04659 17.1839 8.2025 17.2051C6.24027 18.7491 3.81692 19.5866 1.32229 19.5829C0.880397 19.583 0.438873 19.5572 0 19.5054C2.53219 21.1373 5.47984 22.0034 8.49027 22C18.681 22 24.252 13.5402 24.252 6.20306C24.252 5.96469 24.246 5.72393 24.2353 5.48556C25.3189 4.7001 26.2543 3.72744 26.9976 2.61318L27 2.6096Z" fill="#CFD166"/>
                    </svg>
                </li>
                <li>
                    <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                    <path d="M12 0C8.73784 0 8.33129 0.015752 7.05463 0.0697587C5.77272 0.132767 4.90561 0.331541 4.14052 0.628579C3.33976 0.930882 2.61457 1.40419 2.0155 2.0155C1.40248 2.61317 0.928914 3.33877 0.628579 4.14052C0.331541 4.90561 0.132767 5.77272 0.0697587 7.05463C0.0120015 8.33204 0 8.73784 0 12C0 15.2622 0.015752 15.6687 0.0697587 16.9454C0.132767 18.2235 0.331541 19.0944 0.628579 19.8595C0.930882 20.6602 1.40419 21.3854 2.0155 21.9845C2.61317 22.5975 3.33877 23.0711 4.14052 23.3714C4.90561 23.6647 5.77647 23.8672 7.05463 23.9302C8.33204 23.988 8.73784 24 12 24C15.2622 24 15.6687 23.9842 16.9454 23.9302C18.2235 23.8672 19.0944 23.664 19.8595 23.3714C20.6602 23.0691 21.3854 22.5958 21.9845 21.9845C22.5983 21.3875 23.072 20.6617 23.3714 19.8595C23.6647 19.0944 23.8672 18.2235 23.9302 16.9454C23.988 15.668 24 15.2622 24 12C24 8.73784 23.9842 8.33129 23.9302 7.05463C23.8672 5.77647 23.664 4.90111 23.3714 4.14052C23.0691 3.33976 22.5958 2.61457 21.9845 2.0155C21.3875 1.40169 20.6617 0.928001 19.8595 0.628579C19.0944 0.331541 18.2235 0.132767 16.9454 0.0697587C15.668 0.0120015 15.2622 0 12 0ZM12 2.16027C15.2037 2.16027 15.5862 2.17602 16.8524 2.23003C18.0203 2.28479 18.6563 2.47981 19.0786 2.64483C19.6007 2.83755 20.0732 3.14428 20.4618 3.54269C20.8595 3.92961 21.1651 4.40106 21.3559 4.92212C21.5209 5.34442 21.716 5.9805 21.7707 7.14839C21.8247 8.41455 21.8405 8.79785 21.8405 12.0007C21.8405 15.2037 21.8247 15.5869 21.7662 16.8531C21.7032 18.021 21.5082 18.6571 21.3439 19.0794C21.1166 19.6427 20.8631 20.0365 20.4446 20.4626C20.0547 20.8585 19.5825 21.1637 19.0614 21.3567C18.6443 21.5217 17.9993 21.7167 16.8269 21.7715C15.5539 21.8255 15.1789 21.8412 11.967 21.8412C8.7551 21.8412 8.3808 21.8255 7.10639 21.767C5.93849 21.704 5.29416 21.5089 4.87186 21.3447C4.30179 21.1174 3.91099 20.8639 3.49244 20.4453C3.07013 20.023 2.8016 19.621 2.59457 19.0621C2.42655 18.6451 2.23453 18 2.17227 16.8276C2.12952 15.5697 2.10926 15.1796 2.10926 11.9827C2.10926 8.78735 2.12952 8.39655 2.17227 7.12289C2.23453 5.95049 2.42655 5.30691 2.59457 4.88836C2.8016 4.31754 3.07088 3.92749 3.49244 3.50519C3.91024 3.08739 4.30179 2.81735 4.87186 2.60583C5.29416 2.44156 5.92274 2.24653 7.09514 2.18802C8.36805 2.14227 8.74309 2.12577 11.9505 2.12577L12 2.16027ZM12 5.84098C11.1909 5.84068 10.3897 5.99983 9.64212 6.30932C8.89456 6.61881 8.21531 7.07258 7.6432 7.6447C7.07108 8.21681 6.61731 8.89606 6.30782 9.64362C5.99833 10.3912 5.83918 11.1924 5.83948 12.0015C5.83918 12.8106 5.99833 13.6118 6.30782 14.3594C6.61731 15.1069 7.07108 15.7862 7.6432 16.3583C8.21531 16.9304 8.89456 17.3842 9.64212 17.6937C10.3897 18.0032 11.1909 18.1623 12 18.162C12.8091 18.1623 13.6103 18.0032 14.3579 17.6937C15.1054 17.3842 15.7847 16.9304 16.3568 16.3583C16.9289 15.7862 17.3827 15.1069 17.6922 14.3594C18.0017 13.6118 18.1608 12.8106 18.1605 12.0015C18.1608 11.1924 18.0017 10.3912 17.6922 9.64362C17.3827 8.89606 16.9289 8.21681 16.3568 7.6447C15.7847 7.07258 15.1054 6.61881 14.3579 6.30932C13.6103 5.99983 12.8091 5.84068 12 5.84098ZM12 16.0018C9.78872 16.0018 7.99975 14.2128 7.99975 12.0015C7.99975 9.79022 9.78872 8.00125 12 8.00125C14.2113 8.00125 16.0002 9.79022 16.0002 12.0015C16.0002 14.2128 14.2113 16.0018 12 16.0018ZM19.849 5.59495C19.8486 5.97725 19.6964 6.34375 19.426 6.61393C19.1555 6.88412 18.7888 7.03588 18.4066 7.03588C18.2175 7.03588 18.0303 6.99865 17.8557 6.92631C17.6811 6.85397 17.5224 6.74794 17.3887 6.61428C17.2551 6.48062 17.149 6.32194 17.0767 6.1473C17.0044 5.97266 16.9671 5.78548 16.9671 5.59645C16.9671 5.40742 17.0044 5.22024 17.0767 5.0456C17.149 4.87096 17.2551 4.71228 17.3887 4.57862C17.5224 4.44496 17.6811 4.33893 17.8557 4.26659C18.0303 4.19425 18.2175 4.15702 18.4066 4.15702C19.1994 4.15702 19.849 4.8021 19.849 5.59495Z" fill="#CFD166"/>
                    </svg>
                </li>
                <li>
                    <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                    <path fill-rule="evenodd" clip-rule="evenodd" d="M2.96792e-07 2.00509C2.96792e-07 1.47331 0.21125 0.963308 0.587278 0.58728C0.963305 0.211253 1.47331 2.67307e-06 2.00509 2.67307e-06H21.9927C22.2563 -0.000427747 22.5173 0.0511258 22.7609 0.151712C23.0045 0.252298 23.2258 0.399941 23.4123 0.586188C23.5987 0.772435 23.7466 0.993628 23.8475 1.2371C23.9483 1.48058 24.0001 1.74156 24 2.00509V21.9927C24.0003 22.2563 23.9486 22.5174 23.8479 22.761C23.7472 23.0046 23.5994 23.2259 23.4131 23.4123C23.2268 23.5988 23.0055 23.7466 22.762 23.8475C22.5184 23.9483 22.2574 24.0001 21.9938 24H2.00509C1.74169 24 1.48086 23.9481 1.23752 23.8473C0.994184 23.7464 0.773096 23.5986 0.586892 23.4123C0.400688 23.226 0.253017 23.0049 0.152316 22.7615C0.0516145 22.5181 -0.000143013 22.2572 2.96792e-07 21.9938V2.00509ZM9.49964 9.15055H12.7495V10.7825C13.2185 9.84437 14.4185 9 16.2218 9C19.6789 9 20.4982 10.8687 20.4982 14.2975V20.6487H16.9996V15.0785C16.9996 13.1258 16.5305 12.024 15.3393 12.024C13.6865 12.024 12.9993 13.212 12.9993 15.0785V20.6487H9.49964V9.15055ZM3.49964 20.4993H6.99927V9H3.49964V20.4982V20.4993ZM7.5 5.24946C7.5066 5.5491 7.45328 5.84704 7.34317 6.1258C7.23306 6.40456 7.06838 6.65851 6.8588 6.87276C6.64921 7.08702 6.39894 7.25725 6.12268 7.37346C5.84641 7.48968 5.54972 7.54955 5.25 7.54955C4.95028 7.54955 4.65359 7.48968 4.37732 7.37346C4.10106 7.25725 3.85079 7.08702 3.6412 6.87276C3.43162 6.65851 3.26694 6.40456 3.15683 6.1258C3.04672 5.84704 2.9934 5.5491 3 5.24946C3.01295 4.6613 3.25569 4.10159 3.67624 3.69021C4.09678 3.27882 4.6617 3.04846 5.25 3.04846C5.8383 3.04846 6.40322 3.27882 6.82376 3.69021C7.24431 4.10159 7.48705 4.6613 7.5 5.24946Z" fill="#CFD166"/>
                    </svg>
                </li>
            </ul>
        </div>
    </div>
</footer>
<?php $body = ob_get_clean(); ?>

<?php include __DIR__ . '/../main.php'; ?>