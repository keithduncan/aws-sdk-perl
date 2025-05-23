
package Paws::Personalize::CreateEventTracker;
  use Moose;
  has DatasetGroupArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'datasetGroupArn' , required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name' , required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::Personalize::Tag]', traits => ['NameInRequest'], request_name => 'tags' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateEventTracker');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Personalize::CreateEventTrackerResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Personalize::CreateEventTracker - Arguments for method CreateEventTracker on L<Paws::Personalize>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateEventTracker on the
L<Amazon Personalize|Paws::Personalize> service. Use the attributes of this class
as arguments to method CreateEventTracker.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateEventTracker.

=head1 SYNOPSIS

    my $personalize = Paws->service('Personalize');
    my $CreateEventTrackerResponse = $personalize->CreateEventTracker(
      DatasetGroupArn => 'MyArn',
      Name            => 'MyName',
      Tags            => [
        {
          TagKey   => 'MyTagKey',      # min: 1, max: 128
          TagValue => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $EventTrackerArn = $CreateEventTrackerResponse->EventTrackerArn;
    my $TrackingId      = $CreateEventTrackerResponse->TrackingId;

    # Returns a L<Paws::Personalize::CreateEventTrackerResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/personalize/CreateEventTracker>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DatasetGroupArn => Str

The Amazon Resource Name (ARN) of the dataset group that receives the
event data.



=head2 B<REQUIRED> Name => Str

The name for the event tracker.



=head2 Tags => ArrayRef[L<Paws::Personalize::Tag>]

A list of tags
(https://docs.aws.amazon.com/personalize/latest/dg/tagging-resources.html)
to apply to the event tracker.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateEventTracker in L<Paws::Personalize>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

