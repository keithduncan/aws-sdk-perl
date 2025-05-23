# Generated by default/object.tt
package Paws::ControlTower::Region;
  use Moose;
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::ControlTower::Region

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ControlTower::Region object:

  $service_obj->Method(Att1 => { Name => $value, ..., Name => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ControlTower::Region object:

  $result = $service_obj->Method(...);
  $result->Att1->Name

=head1 DESCRIPTION

An Amazon Web Services Region in which Amazon Web Services Control
Tower expects to find the control deployed.

The expected Regions are based on the Regions that are governed by the
landing zone. In certain cases, a control is not actually enabled in
the Region as expected, such as during drift, or mixed governance
(https://docs.aws.amazon.com/controltower/latest/userguide/region-how.html#mixed-governance).

=head1 ATTRIBUTES


=head2 Name => Str

The Amazon Web Services Region name.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ControlTower>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

