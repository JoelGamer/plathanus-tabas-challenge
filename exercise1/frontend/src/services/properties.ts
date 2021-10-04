import API from "./api";

class PropertiesService extends API {
  private endpoint = 'properties'

  async index() {
    const { data } = await this.axios.get<Property[]>(this.endpoint);
    return data;
  }

  async create(property: Property) {
    const { data } = await this.axios.post(this.endpoint, property);
    return data;
  }

  async show(id: number) {
    const { data } = await this.axios.get<Property>(`${this.endpoint}/${id}`);
    return data;
  }
}

export default new PropertiesService();
