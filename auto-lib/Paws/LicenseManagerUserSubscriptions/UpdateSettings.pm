# Generated by default/object.tt
package Paws::LicenseManagerUserSubscriptions::UpdateSettings;
  use Moose;
  has AddSubnets => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
  has RemoveSubnets => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
  has SecurityGroupId => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::LicenseManagerUserSubscriptions::UpdateSettings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::LicenseManagerUserSubscriptions::UpdateSettings object:

  $service_obj->Method(Att1 => { AddSubnets => $value, ..., SecurityGroupId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::LicenseManagerUserSubscriptions::UpdateSettings object:

  $result = $service_obj->Method(...);
  $result->Att1->AddSubnets

=head1 DESCRIPTION

Updates the registered identity providerE<rsquo>s product related
configuration settings such as the subnets to provision VPC endpoints.

=head1 ATTRIBUTES


=head2 B<REQUIRED> AddSubnets => ArrayRef[Str|Undef]

The ID of one or more subnets in which License Manager will create a
VPC endpoint for products that require connectivity to activation
servers.


=head2 B<REQUIRED> RemoveSubnets => ArrayRef[Str|Undef]

The ID of one or more subnets to remove.


=head2 SecurityGroupId => Str

A security group ID that allows inbound TCP port 1688 communication
between resources in your VPC and the VPC endpoints for activation
servers.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::LicenseManagerUserSubscriptions>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

