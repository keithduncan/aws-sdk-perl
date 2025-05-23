
package Paws::AppSync::ListGraphqlApis;
  use Moose;
  has ApiType => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'apiType');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');
  has Owner => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'owner');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListGraphqlApis');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/apis');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AppSync::ListGraphqlApisResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppSync::ListGraphqlApis - Arguments for method ListGraphqlApis on L<Paws::AppSync>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListGraphqlApis on the
L<AWS AppSync|Paws::AppSync> service. Use the attributes of this class
as arguments to method ListGraphqlApis.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListGraphqlApis.

=head1 SYNOPSIS

    my $appsync = Paws->service('AppSync');
    my $ListGraphqlApisResponse = $appsync->ListGraphqlApis(
      ApiType    => 'GRAPHQL',              # OPTIONAL
      MaxResults => 1,                      # OPTIONAL
      NextToken  => 'MyPaginationToken',    # OPTIONAL
      Owner      => 'CURRENT_ACCOUNT',      # OPTIONAL
    );

    # Results:
    my $GraphqlApis = $ListGraphqlApisResponse->GraphqlApis;
    my $NextToken   = $ListGraphqlApisResponse->NextToken;

    # Returns a L<Paws::AppSync::ListGraphqlApisResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/appsync/ListGraphqlApis>

=head1 ATTRIBUTES


=head2 ApiType => Str

The value that indicates whether the GraphQL API is a standard API
(C<GRAPHQL>) or merged API (C<MERGED>).

Valid values are: C<"GRAPHQL">, C<"MERGED">

=head2 MaxResults => Int

The maximum number of results that you want the request to return.



=head2 NextToken => Str

An identifier that was returned from the previous call to this
operation, which you can use to return the next set of items in the
list.



=head2 Owner => Str

The account owner of the GraphQL API.

Valid values are: C<"CURRENT_ACCOUNT">, C<"OTHER_ACCOUNTS">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListGraphqlApis in L<Paws::AppSync>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

