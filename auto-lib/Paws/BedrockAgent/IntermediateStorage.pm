# Generated by default/object.tt
package Paws::BedrockAgent::IntermediateStorage;
  use Moose;
  has S3Location => (is => 'ro', isa => 'Paws::BedrockAgent::S3Location', request_name => 's3Location', traits => ['NameInRequest'], required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::BedrockAgent::IntermediateStorage

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::BedrockAgent::IntermediateStorage object:

  $service_obj->Method(Att1 => { S3Location => $value, ..., S3Location => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::BedrockAgent::IntermediateStorage object:

  $result = $service_obj->Method(...);
  $result->Att1->S3Location

=head1 DESCRIPTION

A location for storing content from data sources temporarily as it is
processed by custom components in the ingestion pipeline.

=head1 ATTRIBUTES


=head2 B<REQUIRED> S3Location => L<Paws::BedrockAgent::S3Location>

An S3 bucket path.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::BedrockAgent>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

