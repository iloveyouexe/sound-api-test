import * as express from "express";
import usersRouter from "./chirps";
const router = express.Router();

// localhost:3000/api/users/
router.use("/users", usersRouter);

export default router;
