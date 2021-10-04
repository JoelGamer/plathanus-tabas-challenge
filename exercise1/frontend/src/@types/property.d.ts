interface Property {
  id: number;
  name: string;
  street: string;
  number: number;
  apartment: number;
  images: string[];
  description?: string;
  created_at: Date;
  updated_at: Date;
}