import axios, { AxiosInstance } from "axios";
import { inDevMode } from "../utilities/constants";

const baseURL = inDevMode ? 'http://localhost:3000/' : '';

class API {
  protected axios: AxiosInstance;

  constructor() {
    this.axios = axios.create({ baseURL })
  }
}

export default API;