
package Paws::WorkMail::ListResources;
  use Moose;
  has Filters => (is => 'ro', isa => 'Paws::WorkMail::ListResourcesFilters');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has OrganizationId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListResources');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WorkMail::ListResourcesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkMail::ListResources - Arguments for method ListResources on L<Paws::WorkMail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListResources on the
L<Amazon WorkMail|Paws::WorkMail> service. Use the attributes of this class
as arguments to method ListResources.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListResources.

=head1 SYNOPSIS

    my $workmail = Paws->service('WorkMail');
    my $ListResourcesResponse = $workmail->ListResources(
      OrganizationId => 'MyOrganizationId',
      Filters        => {
        NamePrefix         => 'MyString',    # max: 256; OPTIONAL
        PrimaryEmailPrefix => 'MyString',    # max: 256; OPTIONAL
        State => 'ENABLED',    # values: ENABLED, DISABLED, DELETED; OPTIONAL
      },    # OPTIONAL
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $NextToken = $ListResourcesResponse->NextToken;
    my $Resources = $ListResourcesResponse->Resources;

    # Returns a L<Paws::WorkMail::ListResourcesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/workmail/ListResources>

=head1 ATTRIBUTES


=head2 Filters => L<Paws::WorkMail::ListResourcesFilters>

Limit the resource search results based on the filter criteria. You can
only use one filter per request.



=head2 MaxResults => Int

The maximum number of results to return in a single call.



=head2 NextToken => Str

The token to use to retrieve the next page of results. The first call
does not contain any tokens.



=head2 B<REQUIRED> OrganizationId => Str

The identifier for the organization under which the resources exist.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListResources in L<Paws::WorkMail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

