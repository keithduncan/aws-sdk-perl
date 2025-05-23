# Generated by default/object.tt
package Paws::BedrockDataAutomationRuntime::TimestampSegment;
  use Moose;
  has EndTimeMillis => (is => 'ro', isa => 'Int', request_name => 'endTimeMillis', traits => ['NameInRequest'], required => 1);
  has StartTimeMillis => (is => 'ro', isa => 'Int', request_name => 'startTimeMillis', traits => ['NameInRequest'], required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::BedrockDataAutomationRuntime::TimestampSegment

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::BedrockDataAutomationRuntime::TimestampSegment object:

  $service_obj->Method(Att1 => { EndTimeMillis => $value, ..., StartTimeMillis => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::BedrockDataAutomationRuntime::TimestampSegment object:

  $result = $service_obj->Method(...);
  $result->Att1->EndTimeMillis

=head1 DESCRIPTION

Timestamp segment

=head1 ATTRIBUTES


=head2 B<REQUIRED> EndTimeMillis => Int

End timestamp in milliseconds


=head2 B<REQUIRED> StartTimeMillis => Int

Start timestamp in milliseconds



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::BedrockDataAutomationRuntime>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

