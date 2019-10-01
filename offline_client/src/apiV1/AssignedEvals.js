import React, { Component } from 'react';

const API = 'http://offline.parloproject.org'; //'http://localhost:3000';
// having trouble getting test data from server
// initially had cors errors, then tried using mode:no-cors option with
// fetch and then just wasn't getting anything

export class AssignedEvals extends Component {
  constructor(props) {
    super(props);
    this.state = {
      // api_name: null,
      // version: null,
      isLoading: false,
      errors: [],
      // online: null,

      assigned_evals : []
    };
  }
  componentDidMount() {
    this.setState({ isLoading: true });
    fetch(API + '/groups_users/by_evaluator/1.json', {mode: 'no-cors'})
      .then(resp => {
        if (resp.ok) {
          return resp.json();
        } else {
          console.log({resp})
          throw new Error("response from 3000 not ok");
        }
      })
      .then(data => {
        console.log({data})
        this.setState({
          // api_name: data.api_name,
          // version: data.version,
          assigned_evals: data.data,
          errors: data.errors,
          isLoading: false,
          // online: true,
        });
      })
      .catch(error => this.setState({
        error: error.message,
        isLoading: false,
        // online: null,
      })
    );
  }
  render() {
    const { isLoading, error, errors, assigned_evals } = this.state;
    if (isLoading) {
      return <p>Loading ...</p>;
    } else if (error) {
      console.log(error)
      return (
        <div>
          <p>Error :(</p>
          <p>{error.message}</p>
        </div>
      );
    } else {
      return (
        <div>
          <p>AssignedEvals</p>
        </div>
      );
    }
  }
}

export default AssignedEvals;
