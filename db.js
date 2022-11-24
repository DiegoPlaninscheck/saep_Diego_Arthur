import mysql from "mysql2";

const conexao = mysql.createConnection({
  host: "localhost",
  user: "root",
  password: "root",
  database: "saep",
});

const novaConexao = conexao.promise();

export const mostrarAreas = () => {
  return novaConexao.query("select area from alocacao");
};

export const mostrarConcessionarias = () => {
  return novaConexao.query("select * from concessionaria");
};

export const mostrarClientes = () => {
  return novaConexao.query("select * from cliente");
};

export const mostrarDetalhes = (id) => {
  return novaConexao.query(`select modelo, preco from automovel join alocacao
  on automovel.idAutomovel = alocacao.idAutomovel and area = ${id}`);
};

export const cadastrarVenda = ({ quantidade, idAlocacao }) => {
  return novaConexao.query("update alocacao set quantidade = ? where id = ?", [
    quantidade - 1,
    idAlocacao,
  ]);
};
