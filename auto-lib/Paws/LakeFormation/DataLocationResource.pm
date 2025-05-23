# Generated by default/object.tt
package Paws::LakeFormation::DataLocationResource;
  use Moose;
  has CatalogId => (is => 'ro', isa => 'Str');
  has ResourceArn => (is => 'ro', isa => 'Str', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::LakeFormation::DataLocationResource

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::LakeFormation::DataLocationResource object:

  $service_obj->Method(Att1 => { CatalogId => $value, ..., ResourceArn => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::LakeFormation::DataLocationResource object:

  $result = $service_obj->Method(...);
  $result->Att1->CatalogId

=head1 DESCRIPTION

A structure for a data location object where permissions are granted or
revoked.

=head1 ATTRIBUTES


=head2 CatalogId => Str

The identifier for the Data Catalog where the location is registered
with Lake Formation. By default, it is the account ID of the caller.


=head2 B<REQUIRED> ResourceArn => Str

The Amazon Resource Name (ARN) that uniquely identifies the data
location resource.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::LakeFormation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

