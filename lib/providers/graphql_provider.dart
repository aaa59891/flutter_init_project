import 'package:flutter/material.dart';
import 'package:graphql/client.dart';

class GraphqlProvider with ChangeNotifier {
  GraphQLClient _client;
  GraphqlProvider() {
    final HttpLink httpLink = HttpLink(uri: "http://localhost:3030/graphql");
    final Link link = httpLink;
    this._client = GraphQLClient(
      cache: InMemoryCache(),
      link: link,
    );
  }

  GraphQLClient getClient() {
    return this._client;
  }
}
