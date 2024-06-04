<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <title><?= $title ?? 'STAY EASE'; ?></title>
    <link rel="stylesheet" href="<?= $css ?? 'public/dist/output.css'; ?>">
</head>
<body class="relative font-rubik">
    <?php if(isset($_SESSION['errors'])): ?>
        <div class="absolute top-20 w-fit z-50 left-1/2 -translate-x-1/2 -translate-y-1/2 mt-2 bg-red-100 border border-red-200 text-sm text-red-800 rounded-lg p-4 dark:bg-red-800/10 dark:border-red-900 dark:text-red-500" role="alert">
            <span class="font-bold"><?= $_SESSION['errors'];?></span>
        </div>
    <?php unset($_SESSION['errors']); endif; ?>
    <?php if(isset($_SESSION['success'])): ?>
        <div class="absolute top-20 w-fit z-50 left-1/2 -translate-x-1/2 -translate-y-1/2 mt-2 bg-blue-100 border border-blue-200 text-sm text-blue-800 rounded-lg p-4 dark:bg-blue-800/10 dark:border-blue-900 dark:text-blue-500" role="alert">
            <span class="font-bold"><?= $_SESSION['success'];?></span>
        </div>
    <?php unset($_SESSION['success']); endif; ?>
    <?= $body ?? ''; ?>
    <script src="../public/dist/script.js"></script>
    <!-- <script src="<?=$js ?? 'public/dist/script.js'?>"></script> -->
</body>
</html>