import { GoogleMap, withGoogleMap, withScriptjs } from "react-google-maps";

const TabasMaps = withScriptjs(withGoogleMap((props) => {
  return (
    <GoogleMap
      defaultZoom={8}
      defaultCenter={{ lat: -34.397, lng: 150.644 }}
    />
  );
}));

export default TabasMaps;
