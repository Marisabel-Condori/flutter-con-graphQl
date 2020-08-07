import 'package:graphql/client.dart';


final HttpLink _httpLink = HttpLink(
    uri: 'https://tough-molly-56.hasura.app/v1/graphql',
    headers: {
      "x-hasura-admin-secret":"123456789"
    }
);

final Link _link = _httpLink;

final GraphQLClient _client = GraphQLClient(
        cache: InMemoryCache(),
        link: _link,
);

//**********************************/
const String readRepoHeroe = r'''
  query MyQuery {
  heroe {
    alias
    id
    imagenUrl
    nombre
    poderes
  }
}
''';

const String readRepoVillano = r'''
  query MyQuery {
  villano {
    alias
    id
    imagenUrl
    nombre
    poder
  }
}
''';

final QueryOptions optionsH = QueryOptions(
    documentNode: gql(readRepoHeroe),
);

final QueryOptions optionsV = QueryOptions(
    documentNode: gql(readRepoVillano),
);

class GraphQlBD{

  bdConsultasHeroe()async{
    final QueryResult result = await _client.query(optionsH);

    if (result.hasException) {
        print(result.exception.toString());
    }

    final repositoriesH = await result.data["heroe"];
   // print(repositoriesH);
    return repositoriesH;
  }

  bdConsultasVillano()async{
    final QueryResult result = await _client.query(optionsV);

    if (result.hasException) {
        print(result.exception.toString());
    }

    final repositoriesV = result.data["villano"];
  //  print(repositoriesV);
    return repositoriesV;
  }
  
}