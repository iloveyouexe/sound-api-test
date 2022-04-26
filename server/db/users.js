import { Query } from "./index";

const all = async () => Query("select * from users");
const one = async (id) => Query("select * from users WHERE id = ?", [id]);
const insert = (name, email, password) =>
  Query("insert into Chirps(name, email, password) values(?,?,?)", [
    name,
    email,
    password,
  ]);
const destroy = (id) => Query("delete from users where id = ?", [id]);
const update = (id, name) =>
  Query("update users set name = ? where users.id = ?", [name, id]);

export default {
  all,
  one,
  insert,
  destroy,
  update,
};
