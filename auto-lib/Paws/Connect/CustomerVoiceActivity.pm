# Generated by default/object.tt
package Paws::Connect::CustomerVoiceActivity;
  use Moose;
  has GreetingEndTimestamp => (is => 'ro', isa => 'Str');
  has GreetingStartTimestamp => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::CustomerVoiceActivity

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Connect::CustomerVoiceActivity object:

  $service_obj->Method(Att1 => { GreetingEndTimestamp => $value, ..., GreetingStartTimestamp => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Connect::CustomerVoiceActivity object:

  $result = $service_obj->Method(...);
  $result->Att1->GreetingEndTimestamp

=head1 DESCRIPTION

Information about customerE<rsquo>s voice activity.

=head1 ATTRIBUTES


=head2 GreetingEndTimestamp => Str

Timestamp that measures the end of the customer greeting from an
outbound voice call.


=head2 GreetingStartTimestamp => Str

Timestamp that measures the beginning of the customer greeting from an
outbound voice call.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Connect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

