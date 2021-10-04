import { BrowserRouter as Router } from 'react-router-dom';
import './styles/styles.scss';
import "react-responsive-carousel/lib/styles/carousel.min.css"; 
import { Header, Routes } from './components';

function App() {
  return (
    <div className="App">
      <Router basename='/' >
        <Header />
        <Routes />
      </Router>
    </div>
  );
}

export default App;
