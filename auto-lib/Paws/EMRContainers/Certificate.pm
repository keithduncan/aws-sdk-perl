# Generated by default/object.tt
package Paws::EMRContainers::Certificate;
  use Moose;
  has CertificateArn => (is => 'ro', isa => 'Str', request_name => 'certificateArn', traits => ['NameInRequest']);
  has CertificateData => (is => 'ro', isa => 'Str', request_name => 'certificateData', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::EMRContainers::Certificate

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EMRContainers::Certificate object:

  $service_obj->Method(Att1 => { CertificateArn => $value, ..., CertificateData => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EMRContainers::Certificate object:

  $result = $service_obj->Method(...);
  $result->Att1->CertificateArn

=head1 DESCRIPTION

The entity representing certificate data generated for managed
endpoint.

=head1 ATTRIBUTES


=head2 CertificateArn => Str

The ARN of the certificate generated for managed endpoint.


=head2 CertificateData => Str

The base64 encoded PEM certificate data generated for managed endpoint.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EMRContainers>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

