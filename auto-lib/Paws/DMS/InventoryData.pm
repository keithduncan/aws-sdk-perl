# Generated by default/object.tt
package Paws::DMS::InventoryData;
  use Moose;
  has NumberOfDatabases => (is => 'ro', isa => 'Int');
  has NumberOfSchemas => (is => 'ro', isa => 'Int');

1;

### main pod documentation begin ###

=head1 NAME

Paws::DMS::InventoryData

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DMS::InventoryData object:

  $service_obj->Method(Att1 => { NumberOfDatabases => $value, ..., NumberOfSchemas => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DMS::InventoryData object:

  $result = $service_obj->Method(...);
  $result->Att1->NumberOfDatabases

=head1 DESCRIPTION

Describes a Fleet Advisor collector inventory.

=head1 ATTRIBUTES


=head2 NumberOfDatabases => Int

The number of databases in the Fleet Advisor collector inventory.


=head2 NumberOfSchemas => Int

The number of schemas in the Fleet Advisor collector inventory.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

