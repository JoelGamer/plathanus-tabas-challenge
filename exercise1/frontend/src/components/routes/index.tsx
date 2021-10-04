import { FC } from "react";
import { Redirect, Route, RouteProps } from 'react-router-dom';
import Properties from "../../features/properties";

const pages: RouteProps[] = [{
  path: '/apartments', component: Properties
}]

const Routes: FC = () => {
  return (
    <>
      {pages.map((page) => <Route {...page} />)}
      <Route exact path="/">
        <Redirect to="/apartments" />
      </Route>
    </>
  )
}

export default Routes;
