const itemsPorPagina = 6; // Cambia esto según tu preferencia
const tabla = document.querySelector('.table');
const paginacion = document.querySelector('.pagination');
const filas = tabla.querySelectorAll('tbody tr');

function mostrarPagina(pagina) {
    const inicio = (pagina - 1) * itemsPorPagina;
    const fin = inicio + itemsPorPagina;

    filas.forEach((fila, index) => {
        fila.style.display = (index >= inicio && index < fin) ? 'table-row' : 'none';
    });
}

function actualizarPaginacion(paginaActual) {
    const numPaginas = Math.ceil(filas.length / itemsPorPagina);

    let paginacionHTML = `
        <li class="page-item ${paginaActual === 1 ? 'disabled' : ''}">
            <a class="page-link" href="#" tabindex="-1" aria-disabled="true">Anterior</a>
        </li>
    `;

    for (let i = 1; i <= numPaginas; i++) {
        paginacionHTML += `
            <li class="page-item ${i === paginaActual ? 'active' : ''}">
                <a class="page-link" href="#" data-pagina="${i}">${i}</a>
            </li>
        `;
    }

    paginacionHTML += `
        <li class="page-item ${paginaActual === numPaginas ? 'disabled' : ''}">
            <a class="page-link" href="#">Siguiente</a>
        </li>
    `;

    paginacion.innerHTML = paginacionHTML;

    const enlacesPagina = paginacion.querySelectorAll('.page-link');
    enlacesPagina.forEach(enlace => {
        enlace.addEventListener('click', e => {
            e.preventDefault();
            const nuevaPagina = parseInt(enlace.getAttribute('data-pagina'));
            mostrarPagina(nuevaPagina);
            actualizarPaginacion(nuevaPagina);
        });
    });
}

mostrarPagina(1);
actualizarPaginacion(1);