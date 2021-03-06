import React from 'react';
import { Route, IndexRoute, Router, browserHistory } from 'react-router';
import MixForm from './MixForm';
import VibeForm from './VibeForm';
import VibeShowPage from '../containers/VibeShowPage'
import LandingPage from '../containers/LandingPage'

const App = (props) => {
  return (
    <div>
      <Router history={browserHistory}>
        <Route path='/' >
          <IndexRoute component={LandingPage} />
          <Route path='vibes/new' component={VibeForm} />
          <Route path='vibes/:id' component={VibeShowPage} />
          <Route path='vibes/:id/mixes/new' component={MixForm} />
        </Route>
      </Router>
    </div>
  );
}

export default App;
