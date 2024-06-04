function toggleDropdownKamar(btn) {
    const dropdownKamar = document.getElementById('dropdown-kamar');
    if(dropdownKamar.classList.contains('hidden')) {
        dropdownKamar.classList.replace('hidden','flex');
        btn.classList.replace('rounded-md','rounded-t-md');
    } else {
        dropdownKamar.classList.replace('flex','hidden');
        btn.classList.replace('rounded-t-md','rounded-md');
    }
}

document.getElementById('dropdown-kamar-btn').addEventListener('click',(event) => {
    toggleDropdownKamar(event.target);
});

document.querySelectorAll('#dropdown-kamar li').forEach(element => {
    element.addEventListener('click',(event) => {
        const li = event.target;
        const btn = document.getElementById('dropdown-kamar-btn');
        btn.firstElementChild.innerText = li.innerText;
        toggleDropdownKamar(btn);
    });
});