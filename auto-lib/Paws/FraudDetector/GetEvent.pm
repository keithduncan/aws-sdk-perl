
package Paws::FraudDetector::GetEvent;
  use Moose;
  has EventId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'eventId' , required => 1);
  has EventTypeName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'eventTypeName' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetEvent');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::FraudDetector::GetEventResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::FraudDetector::GetEvent - Arguments for method GetEvent on L<Paws::FraudDetector>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetEvent on the
L<Amazon Fraud Detector|Paws::FraudDetector> service. Use the attributes of this class
as arguments to method GetEvent.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetEvent.

=head1 SYNOPSIS

    my $frauddetector = Paws->service('FraudDetector');
    my $GetEventResult = $frauddetector->GetEvent(
      EventId       => 'Mystring',
      EventTypeName => 'Mystring',

    );

    # Results:
    my $Event = $GetEventResult->Event;

    # Returns a L<Paws::FraudDetector::GetEventResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/frauddetector/GetEvent>

=head1 ATTRIBUTES


=head2 B<REQUIRED> EventId => Str

The ID of the event to retrieve.



=head2 B<REQUIRED> EventTypeName => Str

The event type of the event to retrieve.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetEvent in L<Paws::FraudDetector>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

