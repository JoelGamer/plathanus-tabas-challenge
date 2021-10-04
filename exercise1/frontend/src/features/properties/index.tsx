import { FC, useEffect, useState } from "react";
import { TabasMaps } from "../../components";
import PropertyCard from "../../components/property-card";
import { PropertiesService } from "../../services";

const Properties: FC = () => {
  const [properties, setProperties] = useState<Property[]>([]);

  useEffect(() => {
    const loadProperties = async () => {
      setProperties(await PropertiesService.index())
    }

    loadProperties();
  }, []);

  return (
    <div className="properties">
      <div className="properties-cards">
        {properties.map((property) =>
          <PropertyCard key={property.id} property={property} />
        )}
      </div>
      <TabasMaps
        googleMapURL="https://maps.googleapis.com/maps/api/js?key=AIzaSyAbLcuRHZOzI-3AscE1dYrkIhyZoYP62Cs&callback=initMap"
        loadingElement={<div style={{ height: `100%` }} />}
        containerElement={<div className="properties-maps-container" />}
        mapElement={<div className="properties-maps-element" />}
      />
    </div>
  )
};

export default Properties;