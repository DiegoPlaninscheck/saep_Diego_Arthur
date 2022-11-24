async function pegarClientes() {
  const response = await fetch("/api/cliente");
  const clientes = await response.json();
  return clientes[0];
}

async function pegarConcessionaria() {
  const response = await fetch("/api/concessionaria");
  const concessionarias = await response.json();
  return concessionarias[0];
}

async function criarClientes() {
  const clientes = await pegarClientes();

  const containerCliente = document.getElementById("container-cliente");
  const selectCliente = document.getElementById("selectCliente");

  for (const cliente of clientes) {
    const op = document.createElement("option");
    op.id = cliente.idCliente;
    op.innerText = cliente.nome;

    selectCliente.appendChild(op);
  }
  containerCliente.appendChild(selectCliente);
}

async function criarConcessionaria() {
  const concessionarias = await pegarConcessionaria();

  const containerConcessionaria = document.getElementById(
    "container-concessionaria"
  );
  const selectConcessionaria = document.getElementById("selectConcessionaria");

  for (const concessionaria of concessionarias) {
    const op = document.createElement("option");
    op.id = concessionaria.idConcessionaria;
    op.innerText = concessionaria.concessionaria;

    selectConcessionaria.appendChild(op);
  }
  containerConcessionaria.appendChild(selectConcessionaria);
}

criarConcessionaria();
criarClientes();
