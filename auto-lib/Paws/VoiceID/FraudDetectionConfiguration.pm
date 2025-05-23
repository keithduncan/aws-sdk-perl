# Generated by default/object.tt
package Paws::VoiceID::FraudDetectionConfiguration;
  use Moose;
  has RiskThreshold => (is => 'ro', isa => 'Int');
  has WatchlistId => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::VoiceID::FraudDetectionConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::VoiceID::FraudDetectionConfiguration object:

  $service_obj->Method(Att1 => { RiskThreshold => $value, ..., WatchlistId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::VoiceID::FraudDetectionConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->RiskThreshold

=head1 DESCRIPTION

The configuration used for performing fraud detection over a speaker
during a session.

=head1 ATTRIBUTES


=head2 RiskThreshold => Int

Threshold value for determining whether the speaker is a fraudster. If
the detected risk score calculated by Voice ID is higher than the
threshold, the speaker is considered a fraudster.


=head2 WatchlistId => Str

The identifier of the watchlist against which fraud detection is
performed.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::VoiceID>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

