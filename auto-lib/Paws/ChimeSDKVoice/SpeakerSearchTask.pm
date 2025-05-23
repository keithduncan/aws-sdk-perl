# Generated by default/object.tt
package Paws::ChimeSDKVoice::SpeakerSearchTask;
  use Moose;
  has CallDetails => (is => 'ro', isa => 'Paws::ChimeSDKVoice::CallDetails');
  has CreatedTimestamp => (is => 'ro', isa => 'Str');
  has SpeakerSearchDetails => (is => 'ro', isa => 'Paws::ChimeSDKVoice::SpeakerSearchDetails');
  has SpeakerSearchTaskId => (is => 'ro', isa => 'Str');
  has SpeakerSearchTaskStatus => (is => 'ro', isa => 'Str');
  has StartedTimestamp => (is => 'ro', isa => 'Str');
  has StatusMessage => (is => 'ro', isa => 'Str');
  has UpdatedTimestamp => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::ChimeSDKVoice::SpeakerSearchTask

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ChimeSDKVoice::SpeakerSearchTask object:

  $service_obj->Method(Att1 => { CallDetails => $value, ..., UpdatedTimestamp => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ChimeSDKVoice::SpeakerSearchTask object:

  $result = $service_obj->Method(...);
  $result->Att1->CallDetails

=head1 DESCRIPTION

A representation of an asynchronous request to perform speaker search
analysis on a Voice Connector call.

=head1 ATTRIBUTES


=head2 CallDetails => L<Paws::ChimeSDKVoice::CallDetails>

The call details of a speaker search task.


=head2 CreatedTimestamp => Str

The time at which a speaker search task was created.


=head2 SpeakerSearchDetails => L<Paws::ChimeSDKVoice::SpeakerSearchDetails>

The details of a speaker search task.


=head2 SpeakerSearchTaskId => Str

The speaker search task ID.


=head2 SpeakerSearchTaskStatus => Str

The status of the speaker search task, C<IN_QUEUE>, C<IN_PROGRESS>,
C<PARTIAL_SUCCESS>, C<SUCCEEDED>, C<FAILED>, or C<STOPPED>.


=head2 StartedTimestamp => Str

The time at which the speaker search task began.


=head2 StatusMessage => Str

A detailed message about the status of a speaker search.


=head2 UpdatedTimestamp => Str

The time at which a speaker search task was updated.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ChimeSDKVoice>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

