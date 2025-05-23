# Generated by default/object.tt
package Paws::GuardDuty::ScanResourceCriteria;
  use Moose;
  has Exclude => (is => 'ro', isa => 'Paws::GuardDuty::ScanCriterion', request_name => 'exclude', traits => ['NameInRequest']);
  has Include => (is => 'ro', isa => 'Paws::GuardDuty::ScanCriterion', request_name => 'include', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::GuardDuty::ScanResourceCriteria

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::GuardDuty::ScanResourceCriteria object:

  $service_obj->Method(Att1 => { Exclude => $value, ..., Include => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::GuardDuty::ScanResourceCriteria object:

  $result = $service_obj->Method(...);
  $result->Att1->Exclude

=head1 DESCRIPTION

Contains information about criteria used to filter resources before
triggering malware scan.

=head1 ATTRIBUTES


=head2 Exclude => L<Paws::GuardDuty::ScanCriterion>

Represents condition that when matched will prevent a malware scan for
a certain resource.


=head2 Include => L<Paws::GuardDuty::ScanCriterion>

Represents condition that when matched will allow a malware scan for a
certain resource.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::GuardDuty>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

