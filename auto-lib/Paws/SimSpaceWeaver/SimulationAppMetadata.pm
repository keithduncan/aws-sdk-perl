# Generated by default/object.tt
package Paws::SimSpaceWeaver::SimulationAppMetadata;
  use Moose;
  has Domain => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has Simulation => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has TargetStatus => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::SimSpaceWeaver::SimulationAppMetadata

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SimSpaceWeaver::SimulationAppMetadata object:

  $service_obj->Method(Att1 => { Domain => $value, ..., TargetStatus => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SimSpaceWeaver::SimulationAppMetadata object:

  $result = $service_obj->Method(...);
  $result->Att1->Domain

=head1 DESCRIPTION

A collection of metadata about the app.

=head1 ATTRIBUTES


=head2 Domain => Str

The domain of the app. For more information about domains, see Key
concepts: Domains
(https://docs.aws.amazon.com/simspaceweaver/latest/userguide/what-is_key-concepts.html#what-is_key-concepts_domains)
in the I<SimSpace Weaver User Guide>.


=head2 Name => Str

The name of the app.


=head2 Simulation => Str

The name of the simulation of the app.


=head2 Status => Str

The current status of the app.


=head2 TargetStatus => Str

The desired status of the app.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SimSpaceWeaver>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

