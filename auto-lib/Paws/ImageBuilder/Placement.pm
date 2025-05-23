# Generated by default/object.tt
package Paws::ImageBuilder::Placement;
  use Moose;
  has AvailabilityZone => (is => 'ro', isa => 'Str', request_name => 'availabilityZone', traits => ['NameInRequest']);
  has HostId => (is => 'ro', isa => 'Str', request_name => 'hostId', traits => ['NameInRequest']);
  has HostResourceGroupArn => (is => 'ro', isa => 'Str', request_name => 'hostResourceGroupArn', traits => ['NameInRequest']);
  has Tenancy => (is => 'ro', isa => 'Str', request_name => 'tenancy', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::ImageBuilder::Placement

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ImageBuilder::Placement object:

  $service_obj->Method(Att1 => { AvailabilityZone => $value, ..., Tenancy => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ImageBuilder::Placement object:

  $result = $service_obj->Method(...);
  $result->Att1->AvailabilityZone

=head1 DESCRIPTION

By default, EC2 instances run on shared tenancy hardware. This means
that multiple Amazon Web Services accounts might share the same
physical hardware. When you use dedicated hardware, the physical server
that hosts your instances is dedicated to your Amazon Web Services
account. Instance placement settings contain the details for the
physical hardware where instances that Image Builder launches during
image creation will run.

=head1 ATTRIBUTES


=head2 AvailabilityZone => Str

The Availability Zone where your build and test instances will launch.


=head2 HostId => Str

The ID of the Dedicated Host on which build and test instances run.
This only applies if C<tenancy> is C<host>. If you specify the host ID,
you must not specify the resource group ARN. If you specify both, Image
Builder returns an error.


=head2 HostResourceGroupArn => Str

The Amazon Resource Name (ARN) of the host resource group in which to
launch build and test instances. This only applies if C<tenancy> is
C<host>. If you specify the resource group ARN, you must not specify
the host ID. If you specify both, Image Builder returns an error.


=head2 Tenancy => Str

The tenancy of the instance. An instance with a tenancy of C<dedicated>
runs on single-tenant hardware. An instance with a tenancy of C<host>
runs on a Dedicated Host.

If tenancy is set to C<host>, then you can optionally specify one
target for placement E<ndash> either host ID or host resource group
ARN. If automatic placement is enabled for your host, and you don't
specify any placement target, Amazon EC2 will try to find an available
host for your build and test instances.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ImageBuilder>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

