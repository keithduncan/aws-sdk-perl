# Generated by default/object.tt
package Paws::BedrockAgent::S3Location;
  use Moose;
  has Uri => (is => 'ro', isa => 'Str', request_name => 'uri', traits => ['NameInRequest'], required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::BedrockAgent::S3Location

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::BedrockAgent::S3Location object:

  $service_obj->Method(Att1 => { Uri => $value, ..., Uri => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::BedrockAgent::S3Location object:

  $result = $service_obj->Method(...);
  $result->Att1->Uri

=head1 DESCRIPTION

An Amazon S3 location.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Uri => Str

The location's URI. For example, C<s3://my-bucket/chunk-processor/>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::BedrockAgent>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

