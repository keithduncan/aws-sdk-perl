# Generated by default/object.tt
package Paws::ChimeSDKVoice::VoiceToneAnalysisTask;
  use Moose;
  has CallDetails => (is => 'ro', isa => 'Paws::ChimeSDKVoice::CallDetails');
  has CreatedTimestamp => (is => 'ro', isa => 'Str');
  has StartedTimestamp => (is => 'ro', isa => 'Str');
  has StatusMessage => (is => 'ro', isa => 'Str');
  has UpdatedTimestamp => (is => 'ro', isa => 'Str');
  has VoiceToneAnalysisTaskId => (is => 'ro', isa => 'Str');
  has VoiceToneAnalysisTaskStatus => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::ChimeSDKVoice::VoiceToneAnalysisTask

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ChimeSDKVoice::VoiceToneAnalysisTask object:

  $service_obj->Method(Att1 => { CallDetails => $value, ..., VoiceToneAnalysisTaskStatus => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ChimeSDKVoice::VoiceToneAnalysisTask object:

  $result = $service_obj->Method(...);
  $result->Att1->CallDetails

=head1 DESCRIPTION

A representation of an asynchronous request to perform voice tone
analysis on a Voice Connector call.

=head1 ATTRIBUTES


=head2 CallDetails => L<Paws::ChimeSDKVoice::CallDetails>

The call details of a voice tone analysis task.


=head2 CreatedTimestamp => Str

The time at which a voice tone analysis task was created.


=head2 StartedTimestamp => Str

The time at which a voice tone analysis task started.


=head2 StatusMessage => Str

The status of a voice tone analysis task.


=head2 UpdatedTimestamp => Str

The time at which a voice tone analysis task was updated.


=head2 VoiceToneAnalysisTaskId => Str

The ID of the voice tone analysis task.


=head2 VoiceToneAnalysisTaskStatus => Str

The status of a voice tone analysis task, C<IN_QUEUE>, C<IN_PROGRESS>,
C<PARTIAL_SUCCESS>, C<SUCCEEDED>, C<FAILED>, or C<STOPPED>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ChimeSDKVoice>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

