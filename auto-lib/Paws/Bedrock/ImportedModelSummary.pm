# Generated by default/object.tt
package Paws::Bedrock::ImportedModelSummary;
  use Moose;
  has CreationTime => (is => 'ro', isa => 'Str', request_name => 'creationTime', traits => ['NameInRequest'], required => 1);
  has InstructSupported => (is => 'ro', isa => 'Bool', request_name => 'instructSupported', traits => ['NameInRequest']);
  has ModelArchitecture => (is => 'ro', isa => 'Str', request_name => 'modelArchitecture', traits => ['NameInRequest']);
  has ModelArn => (is => 'ro', isa => 'Str', request_name => 'modelArn', traits => ['NameInRequest'], required => 1);
  has ModelName => (is => 'ro', isa => 'Str', request_name => 'modelName', traits => ['NameInRequest'], required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::Bedrock::ImportedModelSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Bedrock::ImportedModelSummary object:

  $service_obj->Method(Att1 => { CreationTime => $value, ..., ModelName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Bedrock::ImportedModelSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->CreationTime

=head1 DESCRIPTION

Information about the imported model.

=head1 ATTRIBUTES


=head2 B<REQUIRED> CreationTime => Str

Creation time of the imported model.


=head2 InstructSupported => Bool

Specifies if the imported model supports converse.


=head2 ModelArchitecture => Str

The architecture of the imported model.


=head2 B<REQUIRED> ModelArn => Str

The Amazon Resource Name (ARN) of the imported model.


=head2 B<REQUIRED> ModelName => Str

Name of the imported model.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Bedrock>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

