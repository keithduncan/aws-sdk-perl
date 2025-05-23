# Generated by default/object.tt
package Paws::IoTFleetWise::ConditionBasedCollectionScheme;
  use Moose;
  has ConditionLanguageVersion => (is => 'ro', isa => 'Int', request_name => 'conditionLanguageVersion', traits => ['NameInRequest']);
  has Expression => (is => 'ro', isa => 'Str', request_name => 'expression', traits => ['NameInRequest'], required => 1);
  has MinimumTriggerIntervalMs => (is => 'ro', isa => 'Int', request_name => 'minimumTriggerIntervalMs', traits => ['NameInRequest']);
  has TriggerMode => (is => 'ro', isa => 'Str', request_name => 'triggerMode', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTFleetWise::ConditionBasedCollectionScheme

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoTFleetWise::ConditionBasedCollectionScheme object:

  $service_obj->Method(Att1 => { ConditionLanguageVersion => $value, ..., TriggerMode => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoTFleetWise::ConditionBasedCollectionScheme object:

  $result = $service_obj->Method(...);
  $result->Att1->ConditionLanguageVersion

=head1 DESCRIPTION

Information about a collection scheme that uses a simple logical
expression to recognize what data to collect.

=head1 ATTRIBUTES


=head2 ConditionLanguageVersion => Int

Specifies the version of the conditional expression language.


=head2 B<REQUIRED> Expression => Str

The logical expression used to recognize what data to collect. For
example, C<$variable.`Vehicle.OutsideAirTemperature` E<gt>= 105.0>.


=head2 MinimumTriggerIntervalMs => Int

The minimum duration of time between two triggering events to collect
data, in milliseconds.

If a signal changes often, you might want to collect data at a slower
rate.


=head2 TriggerMode => Str

Whether to collect data for all triggering events (C<ALWAYS>). Specify
(C<RISING_EDGE>), or specify only when the condition first evaluates to
false. For example, triggering on "AirbagDeployed"; Users aren't
interested on triggering when the airbag is already exploded; they only
care about the change from not deployed =E<gt> deployed.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoTFleetWise>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

