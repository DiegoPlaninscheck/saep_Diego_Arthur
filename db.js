import mysql from "mysql2";

const conexao = mysql.createConnection({
  host: "localhost",
  user: "root",
  password: "root",
  database: "saep",
});

const novaConexao = conexao.promise();

export const mostrarAutomoveis = () => {
  return novaConexao.query("select * from automovel");
};

export const mostrarConcessionarias = () => {
  return novaConexao.query("select * from concessionaria");
};

export const mostrarClientes = () => {
  return novaConexao.query("select * from cliente");
};

export const cadastrarVenda = ({ quantidade, idAlocacao }) => {
  return novaConexao.query("update alocacao set quantidade = ? where id = ?", [
    quantidade - 1,
    idAlocacao,
  ]);
};
