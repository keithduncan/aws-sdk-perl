# Generated by default/object.tt
package Paws::ChimeSDKVoice::VoiceProfileSummary;
  use Moose;
  has CreatedTimestamp => (is => 'ro', isa => 'Str');
  has ExpirationTimestamp => (is => 'ro', isa => 'Str');
  has UpdatedTimestamp => (is => 'ro', isa => 'Str');
  has VoiceProfileArn => (is => 'ro', isa => 'Str');
  has VoiceProfileDomainId => (is => 'ro', isa => 'Str');
  has VoiceProfileId => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::ChimeSDKVoice::VoiceProfileSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ChimeSDKVoice::VoiceProfileSummary object:

  $service_obj->Method(Att1 => { CreatedTimestamp => $value, ..., VoiceProfileId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ChimeSDKVoice::VoiceProfileSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->CreatedTimestamp

=head1 DESCRIPTION

A high-level summary of a voice profile.

=head1 ATTRIBUTES


=head2 CreatedTimestamp => Str

The time at which a voice profile summary was created.


=head2 ExpirationTimestamp => Str

Extends the life of the voice profile. You can use
C<UpdateVoiceProfile> to refresh an existing voice profile's voice
print and extend the life of the summary.


=head2 UpdatedTimestamp => Str

The time at which a voice profile summary was last updated.


=head2 VoiceProfileArn => Str

The ARN of the voice profile in a voice profile summary.


=head2 VoiceProfileDomainId => Str

The ID of the voice profile domain in a voice profile summary.


=head2 VoiceProfileId => Str

The ID of the voice profile in a voice profile summary.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ChimeSDKVoice>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

