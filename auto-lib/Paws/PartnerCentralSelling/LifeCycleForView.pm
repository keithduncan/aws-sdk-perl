# Generated by default/object.tt
package Paws::PartnerCentralSelling::LifeCycleForView;
  use Moose;
  has NextSteps => (is => 'ro', isa => 'Str');
  has ReviewStatus => (is => 'ro', isa => 'Str');
  has Stage => (is => 'ro', isa => 'Str');
  has TargetCloseDate => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::PartnerCentralSelling::LifeCycleForView

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::PartnerCentralSelling::LifeCycleForView object:

  $service_obj->Method(Att1 => { NextSteps => $value, ..., TargetCloseDate => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::PartnerCentralSelling::LifeCycleForView object:

  $result = $service_obj->Method(...);
  $result->Att1->NextSteps

=head1 DESCRIPTION

Provides the lifecycle view of an opportunity resource shared through a
snapshot.

=head1 ATTRIBUTES


=head2 NextSteps => Str

Describes the next steps for the opportunity shared through a snapshot.


=head2 ReviewStatus => Str

Defines the approval status of the opportunity shared through a
snapshot.


=head2 Stage => Str

Defines the current stage of the opportunity shared through a snapshot.


=head2 TargetCloseDate => Str

The projected launch date of the opportunity shared through a snapshot.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::PartnerCentralSelling>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

