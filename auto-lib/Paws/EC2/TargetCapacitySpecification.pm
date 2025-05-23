package Paws::EC2::TargetCapacitySpecification;
  use Moose;
  has DefaultTargetCapacityType => (is => 'ro', isa => 'Str', request_name => 'defaultTargetCapacityType', traits => ['NameInRequest']);
  has OnDemandTargetCapacity => (is => 'ro', isa => 'Int', request_name => 'onDemandTargetCapacity', traits => ['NameInRequest']);
  has SpotTargetCapacity => (is => 'ro', isa => 'Int', request_name => 'spotTargetCapacity', traits => ['NameInRequest']);
  has TargetCapacityUnitType => (is => 'ro', isa => 'Str', request_name => 'targetCapacityUnitType', traits => ['NameInRequest']);
  has TotalTargetCapacity => (is => 'ro', isa => 'Int', request_name => 'totalTargetCapacity', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::TargetCapacitySpecification

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::TargetCapacitySpecification object:

  $service_obj->Method(Att1 => { DefaultTargetCapacityType => $value, ..., TotalTargetCapacity => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::TargetCapacitySpecification object:

  $result = $service_obj->Method(...);
  $result->Att1->DefaultTargetCapacityType

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 DefaultTargetCapacityType => Str

The default target capacity type.


=head2 OnDemandTargetCapacity => Int

The number of On-Demand units to request. If you specify a target
capacity for Spot units, you cannot specify a target capacity for
On-Demand units.


=head2 SpotTargetCapacity => Int

The maximum number of Spot units to launch. If you specify a target
capacity for On-Demand units, you cannot specify a target capacity for
Spot units.


=head2 TargetCapacityUnitType => Str

The unit for the target capacity.


=head2 TotalTargetCapacity => Int

The number of units to request, filled the default target capacity
type.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
