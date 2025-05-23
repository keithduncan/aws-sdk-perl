# Generated by default/object.tt
package Paws::RolesAnywhere::InstanceProperty;
  use Moose;
  has Failed => (is => 'ro', isa => 'Bool', request_name => 'failed', traits => ['NameInRequest']);
  has Properties => (is => 'ro', isa => 'Paws::RolesAnywhere::InstancePropertyMap', request_name => 'properties', traits => ['NameInRequest']);
  has SeenAt => (is => 'ro', isa => 'Str', request_name => 'seenAt', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::RolesAnywhere::InstanceProperty

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::RolesAnywhere::InstanceProperty object:

  $service_obj->Method(Att1 => { Failed => $value, ..., SeenAt => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::RolesAnywhere::InstanceProperty object:

  $result = $service_obj->Method(...);
  $result->Att1->Failed

=head1 DESCRIPTION

A key-value pair you set that identifies a property of the
authenticating instance.

=head1 ATTRIBUTES


=head2 Failed => Bool

Indicates whether the temporary credential request was successful.


=head2 Properties => L<Paws::RolesAnywhere::InstancePropertyMap>

A list of instanceProperty objects.


=head2 SeenAt => Str

The ISO-8601 time stamp of when the certificate was last used in a
temporary credential request.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::RolesAnywhere>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

