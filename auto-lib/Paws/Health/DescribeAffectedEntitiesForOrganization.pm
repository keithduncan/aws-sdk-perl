
package Paws::Health::DescribeAffectedEntitiesForOrganization;
  use Moose;
  has Locale => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'locale' );
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has OrganizationEntityAccountFilters => (is => 'ro', isa => 'ArrayRef[Paws::Health::EntityAccountFilter]', traits => ['NameInRequest'], request_name => 'organizationEntityAccountFilters' );
  has OrganizationEntityFilters => (is => 'ro', isa => 'ArrayRef[Paws::Health::EventAccountFilter]', traits => ['NameInRequest'], request_name => 'organizationEntityFilters' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeAffectedEntitiesForOrganization');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Health::DescribeAffectedEntitiesForOrganizationResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Health::DescribeAffectedEntitiesForOrganization - Arguments for method DescribeAffectedEntitiesForOrganization on L<Paws::Health>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeAffectedEntitiesForOrganization on the
L<AWS Health APIs and Notifications|Paws::Health> service. Use the attributes of this class
as arguments to method DescribeAffectedEntitiesForOrganization.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeAffectedEntitiesForOrganization.

=head1 SYNOPSIS

    my $health = Paws->service('Health');
    my $DescribeAffectedEntitiesForOrganizationResponse =
      $health->DescribeAffectedEntitiesForOrganization(
      Locale                           => 'Mylocale',       # OPTIONAL
      MaxResults                       => 1,                # OPTIONAL
      NextToken                        => 'MynextToken',    # OPTIONAL
      OrganizationEntityAccountFilters => [
        {
          EventArn     => 'MyeventArn',     # max: 1600
          AwsAccountId => 'MyaccountId',    # max: 12; OPTIONAL
          StatusCodes  => [
            'IMPAIRED',
            ...    # values: IMPAIRED, UNIMPAIRED, UNKNOWN, PENDING, RESOLVED
          ],    # min: 1, max: 5; OPTIONAL
        },
        ...
      ],    # OPTIONAL
      OrganizationEntityFilters => [
        {
          EventArn     => 'MyeventArn',     # max: 1600
          AwsAccountId => 'MyaccountId',    # max: 12; OPTIONAL
        },
        ...
      ],    # OPTIONAL
      );

    # Results:
    my $Entities  = $DescribeAffectedEntitiesForOrganizationResponse->Entities;
    my $FailedSet = $DescribeAffectedEntitiesForOrganizationResponse->FailedSet;
    my $NextToken = $DescribeAffectedEntitiesForOrganizationResponse->NextToken;

# Returns a L<Paws::Health::DescribeAffectedEntitiesForOrganizationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/health/DescribeAffectedEntitiesForOrganization>

=head1 ATTRIBUTES


=head2 Locale => Str

The locale (language) to return information in. English (en) is the
default and the only supported value at this time.



=head2 MaxResults => Int

The maximum number of items to return in one batch, between 10 and 100,
inclusive.



=head2 NextToken => Str

If the results of a search are large, only a portion of the results are
returned, and a C<nextToken> pagination token is returned in the
response. To retrieve the next batch of results, reissue the search
request and include the returned token. When all results have been
returned, the response does not contain a pagination token value.



=head2 OrganizationEntityAccountFilters => ArrayRef[L<Paws::Health::EntityAccountFilter>]

A JSON set of elements including the C<awsAccountId>, C<eventArn> and a
set of C<statusCodes>.



=head2 OrganizationEntityFilters => ArrayRef[L<Paws::Health::EventAccountFilter>]

A JSON set of elements including the C<awsAccountId> and the
C<eventArn>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeAffectedEntitiesForOrganization in L<Paws::Health>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

