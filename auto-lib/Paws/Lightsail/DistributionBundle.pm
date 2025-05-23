# Generated by default/object.tt
package Paws::Lightsail::DistributionBundle;
  use Moose;
  has BundleId => (is => 'ro', isa => 'Str', request_name => 'bundleId', traits => ['NameInRequest']);
  has IsActive => (is => 'ro', isa => 'Bool', request_name => 'isActive', traits => ['NameInRequest']);
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest']);
  has Price => (is => 'ro', isa => 'Num', request_name => 'price', traits => ['NameInRequest']);
  has TransferPerMonthInGb => (is => 'ro', isa => 'Int', request_name => 'transferPerMonthInGb', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::DistributionBundle

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Lightsail::DistributionBundle object:

  $service_obj->Method(Att1 => { BundleId => $value, ..., TransferPerMonthInGb => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Lightsail::DistributionBundle object:

  $result = $service_obj->Method(...);
  $result->Att1->BundleId

=head1 DESCRIPTION

Describes the specifications of a distribution bundle.

=head1 ATTRIBUTES


=head2 BundleId => Str

The ID of the bundle.


=head2 IsActive => Bool

Indicates whether the bundle is active, and can be specified for a new
or existing distribution.


=head2 Name => Str

The name of the distribution bundle.


=head2 Price => Num

The monthly price, in US dollars, of the bundle.


=head2 TransferPerMonthInGb => Int

The monthly network transfer quota of the bundle.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Lightsail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

