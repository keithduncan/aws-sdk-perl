
package Paws::SageMaker::ListUserProfiles;
  use Moose;
  has DomainIdEquals => (is => 'ro', isa => 'Str');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has SortBy => (is => 'ro', isa => 'Str');
  has SortOrder => (is => 'ro', isa => 'Str');
  has UserProfileNameContains => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListUserProfiles');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::ListUserProfilesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::ListUserProfiles - Arguments for method ListUserProfiles on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListUserProfiles on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method ListUserProfiles.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListUserProfiles.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $ListUserProfilesResponse = $api . sagemaker->ListUserProfiles(
      DomainIdEquals          => 'MyDomainId',           # OPTIONAL
      MaxResults              => 1,                      # OPTIONAL
      NextToken               => 'MyNextToken',          # OPTIONAL
      SortBy                  => 'CreationTime',         # OPTIONAL
      SortOrder               => 'Ascending',            # OPTIONAL
      UserProfileNameContains => 'MyUserProfileName',    # OPTIONAL
    );

    # Results:
    my $NextToken    = $ListUserProfilesResponse->NextToken;
    my $UserProfiles = $ListUserProfilesResponse->UserProfiles;

    # Returns a L<Paws::SageMaker::ListUserProfilesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/ListUserProfiles>

=head1 ATTRIBUTES


=head2 DomainIdEquals => Str

A parameter by which to filter the results.



=head2 MaxResults => Int

This parameter defines the maximum number of results that can be return
in a single response. The C<MaxResults> parameter is an upper bound,
not a target. If there are more results available than the value
specified, a C<NextToken> is provided in the response. The C<NextToken>
indicates that the user should get the next set of results by providing
this token as a part of a subsequent call. The default value for
C<MaxResults> is 10.



=head2 NextToken => Str

If the previous response was truncated, you will receive this token.
Use it in your next request to receive the next set of results.



=head2 SortBy => Str

The parameter by which to sort the results. The default is
CreationTime.

Valid values are: C<"CreationTime">, C<"LastModifiedTime">

=head2 SortOrder => Str

The sort order for the results. The default is Ascending.

Valid values are: C<"Ascending">, C<"Descending">

=head2 UserProfileNameContains => Str

A parameter by which to filter the results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListUserProfiles in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

