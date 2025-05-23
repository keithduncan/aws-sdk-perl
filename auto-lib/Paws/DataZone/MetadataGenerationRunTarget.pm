# Generated by default/object.tt
package Paws::DataZone::MetadataGenerationRunTarget;
  use Moose;
  has Identifier => (is => 'ro', isa => 'Str', request_name => 'identifier', traits => ['NameInRequest'], required => 1);
  has Revision => (is => 'ro', isa => 'Str', request_name => 'revision', traits => ['NameInRequest']);
  has Type => (is => 'ro', isa => 'Str', request_name => 'type', traits => ['NameInRequest'], required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::DataZone::MetadataGenerationRunTarget

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DataZone::MetadataGenerationRunTarget object:

  $service_obj->Method(Att1 => { Identifier => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DataZone::MetadataGenerationRunTarget object:

  $result = $service_obj->Method(...);
  $result->Att1->Identifier

=head1 DESCRIPTION

The asset for which metadata was generated.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Identifier => Str

The ID of the metadata generation run's target.


=head2 Revision => Str

The revision of the asset for which metadata was generated.


=head2 B<REQUIRED> Type => Str

The type of the asset for which metadata was generated.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DataZone>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

