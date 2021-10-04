import { FC, useEffect, useState } from "react";
import { Carousel } from "react-responsive-carousel";

const PropertyCard: FC<PropertyCardProps> = (props) => {
  const [images, setImages] = useState<string[]>([]);

  useEffect(() => {
    const cover = props.property.images.splice(2, 1)[0];
    setImages([cover, ...props.property.images])
  }, [props.property.images]);

  return (
    <div className="property-card">
      <div className="property-card-image">
        <Carousel infiniteLoop showStatus={false} showThumbs={false}>
          {images.map((image) => (
            <div className="property-card-container">
              <div className="property-card-image-text">
                <text>{props.property.id}</text>
              </div>
              <img src={image} alt="property-img" />
            </div>
          ))}
        </Carousel>
      </div>
      <div className="property-card-info">
        <text className="tb-text-gray tb-text-700 tb-text-size-5">{props.property.name}</text>
      </div>
    </div>
  );
};

export default PropertyCard;

interface PropertyCardProps {
  property: Property;
}
