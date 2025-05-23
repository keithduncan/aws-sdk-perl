# Generated by default/object.tt
package Paws::Connect::ContactConfiguration;
  use Moose;
  has ContactId => (is => 'ro', isa => 'Str', required => 1);
  has IncludeRawMessage => (is => 'ro', isa => 'Bool');
  has ParticipantRole => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::ContactConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Connect::ContactConfiguration object:

  $service_obj->Method(Att1 => { ContactId => $value, ..., ParticipantRole => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Connect::ContactConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->ContactId

=head1 DESCRIPTION

The contact configuration for push notification registration.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ContactId => Str

The identifier of the contact within the Amazon Connect instance.


=head2 IncludeRawMessage => Bool

Whether to include raw connect message in the push notification
payload. Default is C<False>.


=head2 ParticipantRole => Str

The role of the participant in the chat conversation.

Only C<CUSTOMER> is currently supported. Any other values other than
C<CUSTOMER> will result in an exception (4xx error).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Connect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

