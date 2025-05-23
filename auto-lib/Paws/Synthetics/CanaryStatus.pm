# Generated by default/object.tt
package Paws::Synthetics::CanaryStatus;
  use Moose;
  has State => (is => 'ro', isa => 'Str');
  has StateReason => (is => 'ro', isa => 'Str');
  has StateReasonCode => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Synthetics::CanaryStatus

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Synthetics::CanaryStatus object:

  $service_obj->Method(Att1 => { State => $value, ..., StateReasonCode => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Synthetics::CanaryStatus object:

  $result = $service_obj->Method(...);
  $result->Att1->State

=head1 DESCRIPTION

A structure that contains the current state of the canary.

=head1 ATTRIBUTES


=head2 State => Str

The current state of the canary.


=head2 StateReason => Str

If the canary creation or update failed, this field provides details on
the failure.


=head2 StateReasonCode => Str

If the canary creation or update failed, this field displays the reason
code.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Synthetics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

