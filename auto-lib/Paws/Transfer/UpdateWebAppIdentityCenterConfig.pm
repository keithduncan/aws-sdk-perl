# Generated by default/object.tt
package Paws::Transfer::UpdateWebAppIdentityCenterConfig;
  use Moose;
  has Role => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Transfer::UpdateWebAppIdentityCenterConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Transfer::UpdateWebAppIdentityCenterConfig object:

  $service_obj->Method(Att1 => { Role => $value, ..., Role => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Transfer::UpdateWebAppIdentityCenterConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->Role

=head1 DESCRIPTION

A structure that describes the values to use for the IAM Identity
Center settings when you update a web app.

=head1 ATTRIBUTES


=head2 Role => Str

The IAM role used to access IAM Identity Center.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Transfer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

