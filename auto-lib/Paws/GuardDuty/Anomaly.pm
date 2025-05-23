# Generated by default/object.tt
package Paws::GuardDuty::Anomaly;
  use Moose;
  has Profiles => (is => 'ro', isa => 'Paws::GuardDuty::AnomalyProfiles', request_name => 'profiles', traits => ['NameInRequest']);
  has Unusual => (is => 'ro', isa => 'Paws::GuardDuty::AnomalyUnusual', request_name => 'unusual', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::GuardDuty::Anomaly

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::GuardDuty::Anomaly object:

  $service_obj->Method(Att1 => { Profiles => $value, ..., Unusual => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::GuardDuty::Anomaly object:

  $result = $service_obj->Method(...);
  $result->Att1->Profiles

=head1 DESCRIPTION

Contains information about the anomalies.

=head1 ATTRIBUTES


=head2 Profiles => L<Paws::GuardDuty::AnomalyProfiles>

Information about the types of profiles.


=head2 Unusual => L<Paws::GuardDuty::AnomalyUnusual>

Information about the behavior of the anomalies.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::GuardDuty>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

