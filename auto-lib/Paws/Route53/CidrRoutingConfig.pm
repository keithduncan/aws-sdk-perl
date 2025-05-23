# Generated by default/object.tt
package Paws::Route53::CidrRoutingConfig;
  use Moose;
  has CollectionId => (is => 'ro', isa => 'Str', required => 1);
  has LocationName => (is => 'ro', isa => 'Str', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53::CidrRoutingConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Route53::CidrRoutingConfig object:

  $service_obj->Method(Att1 => { CollectionId => $value, ..., LocationName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Route53::CidrRoutingConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->CollectionId

=head1 DESCRIPTION

The object that is specified in resource record set object when you are
linking a resource record set to a CIDR location.

A C<LocationName> with an asterisk E<ldquo>*E<rdquo> can be used to
create a default CIDR record. C<CollectionId> is still required for
default record.

=head1 ATTRIBUTES


=head2 B<REQUIRED> CollectionId => Str

The CIDR collection ID.


=head2 B<REQUIRED> LocationName => Str

The CIDR collection location name.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Route53>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

