
package Paws::RAM::ListPendingInvitationResources;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has ResourceRegionScope => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'resourceRegionScope');
  has ResourceShareInvitationArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'resourceShareInvitationArn', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListPendingInvitationResources');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/listpendinginvitationresources');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RAM::ListPendingInvitationResourcesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RAM::ListPendingInvitationResources - Arguments for method ListPendingInvitationResources on L<Paws::RAM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListPendingInvitationResources on the
L<AWS Resource Access Manager|Paws::RAM> service. Use the attributes of this class
as arguments to method ListPendingInvitationResources.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListPendingInvitationResources.

=head1 SYNOPSIS

    my $ram = Paws->service('RAM');
    my $ListPendingInvitationResourcesResponse =
      $ram->ListPendingInvitationResources(
      ResourceShareInvitationArn => 'MyString',
      MaxResults                 => 1,             # OPTIONAL
      NextToken                  => 'MyString',    # OPTIONAL
      ResourceRegionScope        => 'ALL',         # OPTIONAL
      );

    # Results:
    my $NextToken = $ListPendingInvitationResourcesResponse->NextToken;
    my $Resources = $ListPendingInvitationResourcesResponse->Resources;

    # Returns a L<Paws::RAM::ListPendingInvitationResourcesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ram/ListPendingInvitationResources>

=head1 ATTRIBUTES


=head2 MaxResults => Int

Specifies the total number of results that you want included on each
page of the response. If you do not include this parameter, it defaults
to a value that is specific to the operation. If additional items exist
beyond the number you specify, the C<NextToken> response element is
returned with a value (not null). Include the specified value as the
C<NextToken> request parameter in the next call to the operation to get
the next part of the results. Note that the service might return fewer
results than the maximum even when there are more results available.
You should check C<NextToken> after every operation to ensure that you
receive all of the results.



=head2 NextToken => Str

Specifies that you want to receive the next page of results. Valid only
if you received a C<NextToken> response in the previous request. If you
did, it indicates that more output is available. Set this parameter to
the value provided by the previous call's C<NextToken> response to
request the next page of results.



=head2 ResourceRegionScope => Str

Specifies that you want the results to include only resources that have
the specified scope.

=over

=item *

C<ALL> E<ndash> the results include both global and regional resources
or resource types.

=item *

C<GLOBAL> E<ndash> the results include only global resources or
resource types.

=item *

C<REGIONAL> E<ndash> the results include only regional resources or
resource types.

=back

The default value is C<ALL>.

Valid values are: C<"ALL">, C<"REGIONAL">, C<"GLOBAL">

=head2 B<REQUIRED> ResourceShareInvitationArn => Str

Specifies the Amazon Resource Name (ARN)
(https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html)
of the invitation. You can use GetResourceShareInvitations to find the
ARN of the invitation.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListPendingInvitationResources in L<Paws::RAM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

