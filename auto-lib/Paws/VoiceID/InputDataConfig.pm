# Generated by default/object.tt
package Paws::VoiceID::InputDataConfig;
  use Moose;
  has S3Uri => (is => 'ro', isa => 'Str', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::VoiceID::InputDataConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::VoiceID::InputDataConfig object:

  $service_obj->Method(Att1 => { S3Uri => $value, ..., S3Uri => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::VoiceID::InputDataConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->S3Uri

=head1 DESCRIPTION

The configuration containing input file information for a batch job.

=head1 ATTRIBUTES


=head2 B<REQUIRED> S3Uri => Str

The S3 location for the input manifest file that contains the list of
individual enrollment or registration job requests.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::VoiceID>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

