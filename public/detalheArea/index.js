async function pegarArea() {
  const response = await fetch(`/api/detalhesArea/${1}`);
  const detalhes = await response.json();
  return detalhes[0];
}

async function criarDetalhes() {
  const detalhes = await pegarArea();

  console.log(detalhes);

  const h1 = document.getElementById("h1");
  h1.innerText = `Area ${1}`;

  const container = document.getElementById("container");
  for (const detalhe of detalhes) {
    const div = document.createElement("div");

    const spanModelo = document.createElement("span");
    const spanPreco = document.createElement("span");
    const botao = document.createElement("button");

    spanModelo.innerText = `Modelo ${detalhe.modelo}`;
    spanPreco.innerText = `Preço: R$ ${detalhe.preco}`;
    botao.innerText = "Vender";
    botao.id = "botao";

    div.style.width = "80%";
    div.style.display = "flex";
    div.style.justifyContent = "space-between";
    div.style.alignItems = "center";
    div.style.padding = "10px";
    div.style.borderRadius = "4px";
    div.style.backgroundColor = "#707070"

    div.appendChild(spanModelo);
    div.appendChild(spanPreco);
    div.appendChild(botao);

    container.appendChild(div);
  }
}

criarDetalhes();
