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
        <div class="w-full h-screen flex justify-center items-center text-xs">
            <div class="w-[60%]">
                <div class="mb-3">
                    <p class="mb-2">Login sebagai</p>
                    <div class="flex justify-between w-full">
                        <a href="<?=$baseurl?>manager-login" class="border-border-gray relative border-[0.05rem] flex flex-col justify-center items-center w-[6rem] h-[4rem]">
                            <img src="public/img/manager.png" class="w-[2rem] h-[2rem]" alt="">
                            <p>Manager</p>
                        </a>
                        <a href="#" class="border-border-gray relative border-[0.05rem] flex flex-col justify-center items-center w-[6rem] h-[4rem] is-role-checked">
                            <img src="public/img/resepsionis.png" class="w-[2rem] h-[2rem]" alt="">
                            <p>Resepsionis</p>
                            <img src="public/img/role-checked.png" class="absolute bottom-[-0.7rem]" alt="">
                        </a>
                        <a href="<?=$baseurl?>tamu-login" class="border-border-gray relative border-[0.05rem] flex flex-col justify-center items-center w-[6rem] h-[4rem]">
                            <img src="public/img/tamu.png" class="w-[2rem] h-[2rem]" alt="">
                            <p>Tamu</p>
                        </a>
                    </div>
                </div>
                <div class="mb-3">
                    <label for="username" class="mb-2">Username</label>
                    <input type="text" name="username" class="border-border-gray border-[0.05rem] w-full h-[3rem] p-2 rounded-md" name="" id="">
                </div>
                <div class="mb-3">
                    <label for="password" class="mb-2">Password</label>
                    <input type="password" name="password" class="border-border-gray border-[0.05rem] w-full h-[3rem] p-2 rounded-md" name="" id="">
                </div>
                <div class="mb-3 flex gap-2 ">
                    <input type="checkbox" class=" w-4 bg-blue-500" name="rememberme" id="">
                    <p>Ingatkan saya</p>
                </div>
                <div class="w-full">
                    <button class="w-full rounded-md bg-prime py-3 text-white shadow-md">LOGIN</button>
                </div>
            </div>
        </div>
    </div>
</main>
<?php $body = ob_get_clean(); ?>

<?php include __DIR__ . '/../main.php'; ?>