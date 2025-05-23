
package Paws::IoT::SearchIndex;
  use Moose;
  has IndexName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'indexName');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has QueryString => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'queryString', required => 1);
  has QueryVersion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'queryVersion');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SearchIndex');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/indices/search');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoT::SearchIndexResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::SearchIndex - Arguments for method SearchIndex on L<Paws::IoT>

=head1 DESCRIPTION

This class represents the parameters used for calling the method SearchIndex on the
L<AWS IoT|Paws::IoT> service. Use the attributes of this class
as arguments to method SearchIndex.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SearchIndex.

=head1 SYNOPSIS

    my $iot = Paws->service('IoT');
    my $SearchIndexResponse = $iot->SearchIndex(
      QueryString  => 'MyQueryString',
      IndexName    => 'MyIndexName',       # OPTIONAL
      MaxResults   => 1,                   # OPTIONAL
      NextToken    => 'MyNextToken',       # OPTIONAL
      QueryVersion => 'MyQueryVersion',    # OPTIONAL
    );

    # Results:
    my $NextToken   = $SearchIndexResponse->NextToken;
    my $ThingGroups = $SearchIndexResponse->ThingGroups;
    my $Things      = $SearchIndexResponse->Things;

    # Returns a L<Paws::IoT::SearchIndexResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iot/SearchIndex>

=head1 ATTRIBUTES


=head2 IndexName => Str

The search index name.



=head2 MaxResults => Int

The maximum number of results to return per page at one time. This
maximum number cannot exceed 100. The response might contain fewer
results but will never contain more. You can use C<nextToken>
(https://docs.aws.amazon.com/iot/latest/apireference/API_SearchIndex.html#iot-SearchIndex-request-nextToken)
to retrieve the next set of results until C<nextToken> returns C<NULL>.



=head2 NextToken => Str

The token used to get the next set of results, or C<null> if there are
no additional results.



=head2 B<REQUIRED> QueryString => Str

The search query string. For more information about the search query
syntax, see Query syntax
(https://docs.aws.amazon.com/iot/latest/developerguide/query-syntax.html).



=head2 QueryVersion => Str

The query version.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SearchIndex in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

