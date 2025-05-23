# Generated by default/object.tt
package Paws::QBusiness::NativeIndexConfiguration;
  use Moose;
  has BoostingOverride => (is => 'ro', isa => 'Paws::QBusiness::DocumentAttributeBoostingOverrideMap', request_name => 'boostingOverride', traits => ['NameInRequest']);
  has IndexId => (is => 'ro', isa => 'Str', request_name => 'indexId', traits => ['NameInRequest'], required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::QBusiness::NativeIndexConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::QBusiness::NativeIndexConfiguration object:

  $service_obj->Method(Att1 => { BoostingOverride => $value, ..., IndexId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::QBusiness::NativeIndexConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->BoostingOverride

=head1 DESCRIPTION

Configuration information for an Amazon Q Business index.

=head1 ATTRIBUTES


=head2 BoostingOverride => L<Paws::QBusiness::DocumentAttributeBoostingOverrideMap>

Overrides the default boosts applied by Amazon Q Business to supported
document attribute data types.


=head2 B<REQUIRED> IndexId => Str

The identifier for the Amazon Q Business index.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::QBusiness>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

