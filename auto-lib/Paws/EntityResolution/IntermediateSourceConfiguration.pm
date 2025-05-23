# Generated by default/object.tt
package Paws::EntityResolution::IntermediateSourceConfiguration;
  use Moose;
  has IntermediateS3Path => (is => 'ro', isa => 'Str', request_name => 'intermediateS3Path', traits => ['NameInRequest'], required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::EntityResolution::IntermediateSourceConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EntityResolution::IntermediateSourceConfiguration object:

  $service_obj->Method(Att1 => { IntermediateS3Path => $value, ..., IntermediateS3Path => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EntityResolution::IntermediateSourceConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->IntermediateS3Path

=head1 DESCRIPTION

The Amazon S3 location that temporarily stores your data while it
processes. Your information won't be saved permanently.

=head1 ATTRIBUTES


=head2 B<REQUIRED> IntermediateS3Path => Str

The Amazon S3 location (bucket and prefix). For example:
C<s3://provider_bucket/DOC-EXAMPLE-BUCKET>



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EntityResolution>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

