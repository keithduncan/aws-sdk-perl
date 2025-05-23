# Generated by default/object.tt
package Paws::CloudControl::ResourceDescription;
  use Moose;
  has Identifier => (is => 'ro', isa => 'Str');
  has Properties => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudControl::ResourceDescription

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudControl::ResourceDescription object:

  $service_obj->Method(Att1 => { Identifier => $value, ..., Properties => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudControl::ResourceDescription object:

  $result = $service_obj->Method(...);
  $result->Att1->Identifier

=head1 DESCRIPTION

Represents information about a provisioned resource.

=head1 ATTRIBUTES


=head2 Identifier => Str

The primary identifier for the resource.

For more information, see Identifying resources
(https://docs.aws.amazon.com/cloudcontrolapi/latest/userguide/resource-identifier.html)
in the I<Amazon Web Services Cloud Control API User Guide>.


=head2 Properties => Str

A list of the resource properties and their current values.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudControl>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

