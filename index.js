import express from "express";
import bodyParser from "body-parser";

import * as url from "url";
const __dirname = url.fileURLToPath(new URL(".", import.meta.url));

import * as db from "./db.js";

const port = 8080;
const app = express();

app.use(express.json());
app.use(express.static(__dirname + "/public"));
app.use(bodyParser.urlencoded({ extended: false }));

app.get("/", (req, res) => {
  res.send("Hello world!");
});

app.get("/area", (req, res) => {
  res.sendFile(__dirname + "public/patio.html");
});

app.get("/detalheArea", (req, res) => {
  res.sendFile(__dirname + "public/detalheArea.html");
});

app.get("/venda", (req, res) => {
  res.sendFile(__dirname + "public/venda.html");
});

app.get("/api/area", async (req, res) => {
  const automoveis = await db.mostrarAreas();
  res.json(automoveis);
});

app.get("/api/concessionaria", async (req, res) => {
  const concessionarias = await db.mostrarConcessionarias();
  res.json(concessionarias);
});

app.get("/api/cliente", async (req, res) => {
  const clientes = await db.mostrarClientes();
  res.json(clientes);
});

app.get("/api/detalhesArea/:id", async (req, res) => {
  const detalhes = await db.mostrarDetalhes(req.params.id);
  res.json(detalhes);
});

app.post("/venda", async (req, res) => {
  await db.cadastrarVenda(req.body);
  res.redirect("/cadastrar_cliente");
});

app.listen(port, () =>
  console.log(`Server started on port http://localhost:${port}`)
);
