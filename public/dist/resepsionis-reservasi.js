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

document.querySelectorAll('.verifikasi').forEach(element => {
    element.addEventListener('change',(e) => {
        const checkboxEl = e.target;
        ajaxVerifikasi(checkboxEl.previousElementSibling.value, checkboxEl.parentElement);
    })
});