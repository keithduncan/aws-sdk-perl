# Generated by default/object.tt
package Paws::LookoutEquipment::DatasetSchema;
  use Moose;
  has InlineDataSchema => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::LookoutEquipment::DatasetSchema

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::LookoutEquipment::DatasetSchema object:

  $service_obj->Method(Att1 => { InlineDataSchema => $value, ..., InlineDataSchema => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::LookoutEquipment::DatasetSchema object:

  $result = $service_obj->Method(...);
  $result->Att1->InlineDataSchema

=head1 DESCRIPTION

Provides information about the data schema used with the given dataset.

=head1 ATTRIBUTES


=head2 InlineDataSchema => Str

The data schema used within the given dataset.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::LookoutEquipment>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

