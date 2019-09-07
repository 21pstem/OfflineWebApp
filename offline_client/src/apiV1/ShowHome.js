import React, { Component } from 'react';

const API = ''; //'http://localhost:3000';

export class ShowHome extends Component {
  constructor(props) {
    super(props);
    this.state = {
      api_name: null,
      version: null,
      isLoading: null,
      error: null,
      online: null,
    };
  }
  componentDidMount() {
    this.setState({ isLoading: true });
    //, {mode: 'no-cors'})
    fetch(API + '/home/index')
      //.then(response => response.json())
      .then(resp => {
        if (resp.ok) {
          return resp.json();
        } else {
          throw new Error("response from 3000 not ok");
          // return resp.json();
        }
      })
      .then(data => {
        this.setState({
          api_name: data.api_name,
          version: data.version,
          error: null,
          isLoading: false,
          online: true,
        });
      })
      .catch(error => this.setState({
        error: error.message,
        isLoading: false,
        online: null,
      })
    );
  }
  render() {
    const { api_name, version, isLoading, error, online } = this.state;
    if (isLoading) {
      return <p>Loading ...</p>;
    } else if (!!error) {
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
          <p>Online Yay!!!!</p>
          <p>API Name: {api_name}</p>
          <p>Version: {version}</p>
        </div>
      );
    }
  }
}

export default ShowHome;
