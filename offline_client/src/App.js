import React from 'react';
import { BrowserRouter as Router, Route, Switch } from 'react-router-dom';
import './App.css';
import ShowHome from './apiV1/ShowHome.js';
import AssignedEvals from './apiV1/AssignedEvals';

function App() {
  return (
    <Router>
      <div className="App">
        <Switch>
          <Route path="/assignments" component={AssignedEvals} />
          <Route path="/" component={ShowHome} />
        </Switch>
      </div>
    </Router>
  );
}

export default App;
