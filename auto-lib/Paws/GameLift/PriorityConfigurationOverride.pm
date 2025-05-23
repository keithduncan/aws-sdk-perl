# Generated by default/object.tt
package Paws::GameLift::PriorityConfigurationOverride;
  use Moose;
  has LocationOrder => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
  has PlacementFallbackStrategy => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::PriorityConfigurationOverride

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::GameLift::PriorityConfigurationOverride object:

  $service_obj->Method(Att1 => { LocationOrder => $value, ..., PlacementFallbackStrategy => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::GameLift::PriorityConfigurationOverride object:

  $result = $service_obj->Method(...);
  $result->Att1->LocationOrder

=head1 DESCRIPTION

An alternate list of prioritized locations for use with a game session
queue. When this property is included in a StartGameSessionPlacement
(https://docs.aws.amazon.com/gamelift/latest/apireference/API_StartGameSessionPlacement.html)
request, the alternate list overrides the queue's default location
priorities, as defined in the queue's PriorityConfiguration setting
(I<LocationOrder>). The override is valid for an individual placement
request only. Use this property only with queues that have a
C<PriorityConfiguration> setting that prioritizes C<LOCATION> first.

A priority configuration override list does not override a queue's
FilterConfiguration setting, if the queue has one. Filter
configurations are used to limit placements to a subset of the
locations in a queue's destinations. If the override list includes a
location that's not on in the C<FilterConfiguration> allowed list,
Amazon GameLift won't attempt to place a game session there.

=head1 ATTRIBUTES


=head2 B<REQUIRED> LocationOrder => ArrayRef[Str|Undef]

A prioritized list of hosting locations. The list can include Amazon
Web Services Regions (such as C<us-west-2>), local zones, and custom
locations (for Anywhere fleets). Each location must be listed only
once. For details, see Amazon GameLift service locations.
(https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-regions.html)


=head2 PlacementFallbackStrategy => Str

Instructions for how to proceed if placement fails in every location on
the priority override list. Valid strategies include:

=over

=item *

C<DEFAULT_AFTER_SINGLE_PASS> -- After attempting to place a new game
session in every location on the priority override list, try to place a
game session in queue's other locations. This is the default behavior.

=item *

C<NONE> -- Limit placements to locations on the priority override list
only.

=back




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::GameLift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

