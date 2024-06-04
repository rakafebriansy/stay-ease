function ajaxVerifikasi(id_reservasi,parent) {
    fetch('/stay-ease/resepsionis-verifikasi', {
        method: 'POST',
        body: new URLSearchParams('id='+id_reservasi)
    }).then(res => res.text())
      .then(res => {
        parent.innerHTML = '<p>Telah diverifikasi</p>';
      })
      .catch(e => console.error('Error'+e));
}

function toggleVerifikasi(checkboxEl = null) {
    const dropdownVerifikasi = document.getElementById('dropdownVerifikasi');
    const verifikasiBtn = document.getElementById('verifikasiBtn');
    if(dropdownVerifikasi.classList.contains('hidden')) {
        verifikasiBtn.dataset.id = checkboxEl.previousElementSibling.value;
        dropdownVerifikasi.classList.replace('hidden','flex');
    } else {
        document.getElementById('verifikasi-check-' + verifikasiBtn.dataset.id).checked = false;
        dropdownVerifikasi.classList.replace('flex','hidden');
    }
}

function submitVerifikasi(btn) {
    const checkboxEl = document.getElementById('verifikasi-check-' + verifikasiBtn.dataset.id);
    ajaxVerifikasi(btn.dataset.id, checkboxEl.parentElement);
    dropdownVerifikasi.classList.replace('flex','hidden');
}

document.querySelectorAll('.verifikasi').forEach(element => {
    element.addEventListener('change',(e) => {
        const checkboxEl = e.target;
        toggleVerifikasi(checkboxEl);
    })
});