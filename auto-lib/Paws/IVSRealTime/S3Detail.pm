# Generated by default/object.tt
package Paws::IVSRealTime::S3Detail;
  use Moose;
  has RecordingPrefix => (is => 'ro', isa => 'Str', request_name => 'recordingPrefix', traits => ['NameInRequest'], required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::IVSRealTime::S3Detail

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IVSRealTime::S3Detail object:

  $service_obj->Method(Att1 => { RecordingPrefix => $value, ..., RecordingPrefix => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IVSRealTime::S3Detail object:

  $result = $service_obj->Method(...);
  $result->Att1->RecordingPrefix

=head1 DESCRIPTION

Complex data type that defines S3Detail objects.

=head1 ATTRIBUTES


=head2 B<REQUIRED> RecordingPrefix => Str

The S3 bucket prefix under which the recording is stored.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IVSRealTime>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

