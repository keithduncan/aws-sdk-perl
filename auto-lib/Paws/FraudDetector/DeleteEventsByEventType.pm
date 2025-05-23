
package Paws::FraudDetector::DeleteEventsByEventType;
  use Moose;
  has EventTypeName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'eventTypeName' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteEventsByEventType');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::FraudDetector::DeleteEventsByEventTypeResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::FraudDetector::DeleteEventsByEventType - Arguments for method DeleteEventsByEventType on L<Paws::FraudDetector>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteEventsByEventType on the
L<Amazon Fraud Detector|Paws::FraudDetector> service. Use the attributes of this class
as arguments to method DeleteEventsByEventType.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteEventsByEventType.

=head1 SYNOPSIS

    my $frauddetector = Paws->service('FraudDetector');
    my $DeleteEventsByEventTypeResult = $frauddetector->DeleteEventsByEventType(
      EventTypeName => 'Myidentifier',

    );

    # Results:
    my $EventTypeName = $DeleteEventsByEventTypeResult->EventTypeName;
    my $EventsDeletionStatus =
      $DeleteEventsByEventTypeResult->EventsDeletionStatus;

    # Returns a L<Paws::FraudDetector::DeleteEventsByEventTypeResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/frauddetector/DeleteEventsByEventType>

=head1 ATTRIBUTES


=head2 B<REQUIRED> EventTypeName => Str

The name of the event type.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteEventsByEventType in L<Paws::FraudDetector>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

