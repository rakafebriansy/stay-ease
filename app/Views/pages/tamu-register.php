<?php ob_start(); 
$baseurl = '/stay-ease/'; 
?>
<main class="grid grid-cols-2">
    <div class="relative w-full">
        <img src="public/img/aside.png" class="h-screen w-full" alt="">
        <div class="h-screen w-full bg-[rgba(0,0,0,0.5)] absolute z-10 top-0"></div>
        <div class="absolute left-1/2 top-1/2 flex flex-col gap-3 -translate-x-1/2 -translate-y-1/2 z-10 text-center text-white">
            <h1 class="font-just-another-hand text-8xl">StayEase</h1>
            <p class="text-lg">Sistem Informasi Reservasi Hotel Dengan Mudah & Nyaman  </p>
        </div>
    </div>
    <div class="flex justify-start items-center relative">
        <div class="p-4 fixed top-0 w-full">
            <img src="public/img/logo-no-bg.png" class="h-[2.5rem]" alt="">
        </div>
        <div class="w-full h-screen flex flex-col justify-center gap-4 items-center text-xs">
            <form action="<?=$baseurl?>tamu-register" method="POST" class="w-[60%]">
                <div class="w-full mb-3">
                    <a href="<?=$baseurl . 'tamu-login'?>" class="w-[2.5rem] h-[2.5rem] flex justify-center items-center rounded-full bg-gray-300">
                        <svg width="11" height="18" viewBox="0 0 11 18" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <path d="M9.16309 1.83606L2.03172 9.6874L9.35964 16.3433" stroke="white" stroke-width="2" stroke-linecap="round"/>
                        </svg>
                    </a>
                </div>
                <div class="mb-2">
                    <label for="username" class="mb-2">Username</label>
                    <input type="text" name="username" class="border-border-gray border-[0.05rem] w-full h-[3rem] p-2 rounded-md" name="" id="">
                </div>
                <div class="mb-2">
                    <label for="nik" class="mb-2">NIK</label>
                    <input type="text" name="nik" class="border-border-gray border-[0.05rem] w-full h-[3rem] p-2 rounded-md" name="" id="">
                    <p class="text-xs text-second">*Harus berisi angka 16 digit</p>
                </div>
                <div class="mb-2">
                    <label for="no_telepon" class="mb-2">No Telepon</label>
                    <input type="text" name="no_telepon" class="border-border-gray border-[0.05rem] w-full h-[3rem] p-2 rounded-md" name="" id="">
                    <p class="text-xs text-second">*Harus berisi angka</p>
                </div>
                <div class="mb-2">
                    <label for="email" class="mb-2">Email</label>
                    <input type="email" name="email" class="border-border-gray border-[0.05rem] w-full h-[3rem] p-2 rounded-md" name="" id="">
                </div>
                <div class="mb-3">
                    <label for="password" class="mb-2">Password</label>
                    <input type="password" name="password" class="border-border-gray border-[0.05rem] w-full h-[3rem] p-2 rounded-md" name="" id="">
                    <p class="text-xs text-second">*Harus kombinasi huruf dan angka</p>
                </div>
                <div class="w-full">
                    <button type="submit" class="w-full rounded-md bg-prime py-3 text-white shadow-md">REGISTER</button>
                </div>
            </form>
        </div>
    </div>
</main>
<?php $body = ob_get_clean(); ?>

<?php include __DIR__ . '/../main.php'; ?>