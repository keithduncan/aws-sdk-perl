# Generated by default/object.tt
package Paws::ControlTower::ControlOperationSummary;
  use Moose;
  has ControlIdentifier => (is => 'ro', isa => 'Str', request_name => 'controlIdentifier', traits => ['NameInRequest']);
  has EnabledControlIdentifier => (is => 'ro', isa => 'Str', request_name => 'enabledControlIdentifier', traits => ['NameInRequest']);
  has EndTime => (is => 'ro', isa => 'Str', request_name => 'endTime', traits => ['NameInRequest']);
  has OperationIdentifier => (is => 'ro', isa => 'Str', request_name => 'operationIdentifier', traits => ['NameInRequest']);
  has OperationType => (is => 'ro', isa => 'Str', request_name => 'operationType', traits => ['NameInRequest']);
  has StartTime => (is => 'ro', isa => 'Str', request_name => 'startTime', traits => ['NameInRequest']);
  has Status => (is => 'ro', isa => 'Str', request_name => 'status', traits => ['NameInRequest']);
  has StatusMessage => (is => 'ro', isa => 'Str', request_name => 'statusMessage', traits => ['NameInRequest']);
  has TargetIdentifier => (is => 'ro', isa => 'Str', request_name => 'targetIdentifier', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::ControlTower::ControlOperationSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ControlTower::ControlOperationSummary object:

  $service_obj->Method(Att1 => { ControlIdentifier => $value, ..., TargetIdentifier => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ControlTower::ControlOperationSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->ControlIdentifier

=head1 DESCRIPTION

A summary of information about the specified control operation.

=head1 ATTRIBUTES


=head2 ControlIdentifier => Str

The C<controlIdentifier> of a control.


=head2 EnabledControlIdentifier => Str

The C<controlIdentifier> of an enabled control.


=head2 EndTime => Str

The time at which the control operation was completed.


=head2 OperationIdentifier => Str

The unique identifier of a control operation.


=head2 OperationType => Str

The type of operation.


=head2 StartTime => Str

The time at which a control operation began.


=head2 Status => Str

The status of the specified control operation.


=head2 StatusMessage => Str

A speficic message displayed as part of the control status.


=head2 TargetIdentifier => Str

The unique identifier of the target of a control operation.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ControlTower>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

