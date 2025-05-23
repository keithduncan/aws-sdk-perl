# Generated by default/object.tt
package Paws::CleanRoomsML::TrainedModelInferenceJobSummary;
  use Moose;
  has CollaborationIdentifier => (is => 'ro', isa => 'Str', request_name => 'collaborationIdentifier', traits => ['NameInRequest'], required => 1);
  has ConfiguredModelAlgorithmAssociationArn => (is => 'ro', isa => 'Str', request_name => 'configuredModelAlgorithmAssociationArn', traits => ['NameInRequest']);
  has CreateTime => (is => 'ro', isa => 'Str', request_name => 'createTime', traits => ['NameInRequest'], required => 1);
  has Description => (is => 'ro', isa => 'Str', request_name => 'description', traits => ['NameInRequest']);
  has LogsStatus => (is => 'ro', isa => 'Str', request_name => 'logsStatus', traits => ['NameInRequest']);
  has LogsStatusDetails => (is => 'ro', isa => 'Str', request_name => 'logsStatusDetails', traits => ['NameInRequest']);
  has MembershipIdentifier => (is => 'ro', isa => 'Str', request_name => 'membershipIdentifier', traits => ['NameInRequest'], required => 1);
  has MetricsStatus => (is => 'ro', isa => 'Str', request_name => 'metricsStatus', traits => ['NameInRequest']);
  has MetricsStatusDetails => (is => 'ro', isa => 'Str', request_name => 'metricsStatusDetails', traits => ['NameInRequest']);
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest'], required => 1);
  has OutputConfiguration => (is => 'ro', isa => 'Paws::CleanRoomsML::InferenceOutputConfiguration', request_name => 'outputConfiguration', traits => ['NameInRequest'], required => 1);
  has Status => (is => 'ro', isa => 'Str', request_name => 'status', traits => ['NameInRequest'], required => 1);
  has TrainedModelArn => (is => 'ro', isa => 'Str', request_name => 'trainedModelArn', traits => ['NameInRequest'], required => 1);
  has TrainedModelInferenceJobArn => (is => 'ro', isa => 'Str', request_name => 'trainedModelInferenceJobArn', traits => ['NameInRequest'], required => 1);
  has UpdateTime => (is => 'ro', isa => 'Str', request_name => 'updateTime', traits => ['NameInRequest'], required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::CleanRoomsML::TrainedModelInferenceJobSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CleanRoomsML::TrainedModelInferenceJobSummary object:

  $service_obj->Method(Att1 => { CollaborationIdentifier => $value, ..., UpdateTime => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CleanRoomsML::TrainedModelInferenceJobSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->CollaborationIdentifier

=head1 DESCRIPTION

Provides information about the trained model inference job.

=head1 ATTRIBUTES


=head2 B<REQUIRED> CollaborationIdentifier => Str

The collaboration ID of the collaboration that contains the trained
model inference job.


=head2 ConfiguredModelAlgorithmAssociationArn => Str

The Amazon Resource Name (ARN) of the configured model algorithm
association that is used for the trained model inference job.


=head2 B<REQUIRED> CreateTime => Str

The time at which the trained model inference job was created.


=head2 Description => Str

The description of the trained model inference job.


=head2 LogsStatus => Str

The log status of the trained model inference job.


=head2 LogsStatusDetails => Str

Details about the log status for the trained model inference job.


=head2 B<REQUIRED> MembershipIdentifier => Str

The membership ID of the membership that contains the trained model
inference job.


=head2 MetricsStatus => Str

The metric status of the trained model inference job.


=head2 MetricsStatusDetails => Str

Details about the metrics status for the trained model inference job.


=head2 B<REQUIRED> Name => Str

The name of the trained model inference job.


=head2 B<REQUIRED> OutputConfiguration => L<Paws::CleanRoomsML::InferenceOutputConfiguration>

The output configuration information of the trained model job.


=head2 B<REQUIRED> Status => Str

The status of the trained model inference job.


=head2 B<REQUIRED> TrainedModelArn => Str

The Amazon Resource Name (ARN) of the trained model that is used for
the trained model inference job.


=head2 B<REQUIRED> TrainedModelInferenceJobArn => Str

The Amazon Resource Name (ARN) of the trained model inference job.


=head2 B<REQUIRED> UpdateTime => Str

The most recent time at which the trained model inference job was
updated.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CleanRoomsML>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

