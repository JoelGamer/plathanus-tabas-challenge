import { FC } from "react";
import Logo from '../../assets/images/logo.svg';

const Header: FC = () => {
  return (
    <header className="tb-bg-black header">
      <div className="side-left">
        <img src={Logo} width="110px" height="30px" alt="logo" />
      </div>
      <div className="side-center">
      <text className="tb-text-white tb-text-700 tb-text-size-5">Explore</text>
      <text className="tb-text-gold tb-text-700 tb-text-size-5"> São Paulo</text>
      </div>
      <div className="side-right">
        <div className="tb-mh-10">
          <text className="tb-text-white tb-text-400 tb-text-size-2">SUPORTE</text>
        </div>
        <div className="tb-mh-10">
          <text className="tb-text-white tb-text-400 tb-text-size-2">ENTRAR</text>
        </div>
        <div className="tb-mh-10">
          <text className="tb-text-gold tb-text-700 tb-text-size-2">REGISTRAR</text>
        </div>
      </div>
    </header>
  );
};

export default Header;
