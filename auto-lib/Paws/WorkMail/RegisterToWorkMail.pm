
package Paws::WorkMail::RegisterToWorkMail;
  use Moose;
  has Email => (is => 'ro', isa => 'Str', required => 1);
  has EntityId => (is => 'ro', isa => 'Str', required => 1);
  has OrganizationId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RegisterToWorkMail');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WorkMail::RegisterToWorkMailResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkMail::RegisterToWorkMail - Arguments for method RegisterToWorkMail on L<Paws::WorkMail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RegisterToWorkMail on the
L<Amazon WorkMail|Paws::WorkMail> service. Use the attributes of this class
as arguments to method RegisterToWorkMail.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RegisterToWorkMail.

=head1 SYNOPSIS

    my $workmail = Paws->service('WorkMail');
    my $RegisterToWorkMailResponse = $workmail->RegisterToWorkMail(
      Email          => 'MyEmailAddress',
      EntityId       => 'MyEntityIdentifier',
      OrganizationId => 'MyOrganizationId',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/workmail/RegisterToWorkMail>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Email => Str

The email for the user, group, or resource to be updated.



=head2 B<REQUIRED> EntityId => Str

The identifier for the user, group, or resource to be updated.

The identifier can accept I<UserId, ResourceId, or GroupId>, or
I<Username, Resourcename, or Groupname>. The following identity formats
are available:

=over

=item *

Entity ID: 12345678-1234-1234-1234-123456789012,
r-0123456789a0123456789b0123456789, or
S-1-1-12-1234567890-123456789-123456789-1234

=item *

Entity name: entity

=back




=head2 B<REQUIRED> OrganizationId => Str

The identifier for the organization under which the user, group, or
resource exists.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RegisterToWorkMail in L<Paws::WorkMail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

