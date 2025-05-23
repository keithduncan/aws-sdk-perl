
package Paws::WorkMail::UpdateResource;
  use Moose;
  has BookingOptions => (is => 'ro', isa => 'Paws::WorkMail::BookingOptions');
  has Description => (is => 'ro', isa => 'Str');
  has HiddenFromGlobalAddressList => (is => 'ro', isa => 'Bool');
  has Name => (is => 'ro', isa => 'Str');
  has OrganizationId => (is => 'ro', isa => 'Str', required => 1);
  has ResourceId => (is => 'ro', isa => 'Str', required => 1);
  has Type => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateResource');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WorkMail::UpdateResourceResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkMail::UpdateResource - Arguments for method UpdateResource on L<Paws::WorkMail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateResource on the
L<Amazon WorkMail|Paws::WorkMail> service. Use the attributes of this class
as arguments to method UpdateResource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateResource.

=head1 SYNOPSIS

    my $workmail = Paws->service('WorkMail');
    my $UpdateResourceResponse = $workmail->UpdateResource(
      OrganizationId => 'MyOrganizationId',
      ResourceId     => 'MyEntityIdentifier',
      BookingOptions => {
        AutoAcceptRequests             => 1,    # OPTIONAL
        AutoDeclineConflictingRequests => 1,    # OPTIONAL
        AutoDeclineRecurringRequests   => 1,    # OPTIONAL
      },    # OPTIONAL
      Description                 => 'MyNewResourceDescription',    # OPTIONAL
      HiddenFromGlobalAddressList => 1,                             # OPTIONAL
      Name                        => 'MyResourceName',              # OPTIONAL
      Type                        => 'ROOM',                        # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/workmail/UpdateResource>

=head1 ATTRIBUTES


=head2 BookingOptions => L<Paws::WorkMail::BookingOptions>

The resource's booking options to be updated.



=head2 Description => Str

Updates the resource description.



=head2 HiddenFromGlobalAddressList => Bool

If enabled, the resource is hidden from the global address list.



=head2 Name => Str

The name of the resource to be updated.



=head2 B<REQUIRED> OrganizationId => Str

The identifier associated with the organization for which the resource
is updated.



=head2 B<REQUIRED> ResourceId => Str

The identifier of the resource to be updated.

The identifier can accept I<ResourceId>, I<Resourcename>, or I<email>.
The following identity formats are available:

=over

=item *

Resource ID: r-0123456789a0123456789b0123456789

=item *

Email address: resource@domain.tld

=item *

Resource name: resource

=back




=head2 Type => Str

Updates the resource type.

Valid values are: C<"ROOM">, C<"EQUIPMENT">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateResource in L<Paws::WorkMail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

