import React from "react";
import { ApolloProvider } from "react-apollo";
import "./App.css";
import { createClient } from "./util/apollo";
import Users from "./components/Users";
//Fixes
function App() {
  const client = createClient();

  return (
    <ApolloProvider client={client}>
      <Users />
    </ApolloProvider>
  );
}

export default App;
