import React from "react";
import ReactDOM from "react-dom";

import Login from "./Components/Main";

import {  
  BrowserRouter,  
  Route,
} from "react-router-dom";


ReactDOM.render(
  
    <BrowserRouter>
      <React.Fragment>
        <Route exact path="/">
          <Login />
        </Route>

        <Route exact path="/Home/:User">
          <Home />
        </Route>
      </React.Fragment>
    </BrowserRouter>
  ,
  document.getElementById("root")
);
