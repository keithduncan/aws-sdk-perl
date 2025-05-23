# Generated by default/object.tt
package Paws::Route53RecoveryReadiness::Message;
  use Moose;
  has MessageText => (is => 'ro', isa => 'Str', request_name => 'messageText', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53RecoveryReadiness::Message

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Route53RecoveryReadiness::Message object:

  $service_obj->Method(Att1 => { MessageText => $value, ..., MessageText => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Route53RecoveryReadiness::Message object:

  $result = $service_obj->Method(...);
  $result->Att1->MessageText

=head1 DESCRIPTION

Information relating to readiness check status.

=head1 ATTRIBUTES


=head2 MessageText => Str

The text of a readiness check message.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Route53RecoveryReadiness>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

