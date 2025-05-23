# Generated by default/object.tt
package Paws::Inspector2::CisScan;
  use Moose;
  has FailedChecks => (is => 'ro', isa => 'Int', request_name => 'failedChecks', traits => ['NameInRequest']);
  has ScanArn => (is => 'ro', isa => 'Str', request_name => 'scanArn', traits => ['NameInRequest'], required => 1);
  has ScanConfigurationArn => (is => 'ro', isa => 'Str', request_name => 'scanConfigurationArn', traits => ['NameInRequest'], required => 1);
  has ScanDate => (is => 'ro', isa => 'Str', request_name => 'scanDate', traits => ['NameInRequest']);
  has ScanName => (is => 'ro', isa => 'Str', request_name => 'scanName', traits => ['NameInRequest']);
  has ScheduledBy => (is => 'ro', isa => 'Str', request_name => 'scheduledBy', traits => ['NameInRequest']);
  has SecurityLevel => (is => 'ro', isa => 'Str', request_name => 'securityLevel', traits => ['NameInRequest']);
  has Status => (is => 'ro', isa => 'Str', request_name => 'status', traits => ['NameInRequest']);
  has Targets => (is => 'ro', isa => 'Paws::Inspector2::CisTargets', request_name => 'targets', traits => ['NameInRequest']);
  has TotalChecks => (is => 'ro', isa => 'Int', request_name => 'totalChecks', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::Inspector2::CisScan

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Inspector2::CisScan object:

  $service_obj->Method(Att1 => { FailedChecks => $value, ..., TotalChecks => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Inspector2::CisScan object:

  $result = $service_obj->Method(...);
  $result->Att1->FailedChecks

=head1 DESCRIPTION

The CIS scan.

=head1 ATTRIBUTES


=head2 FailedChecks => Int

The CIS scan's failed checks.


=head2 B<REQUIRED> ScanArn => Str

The CIS scan's ARN.


=head2 B<REQUIRED> ScanConfigurationArn => Str

The CIS scan's configuration ARN.


=head2 ScanDate => Str

The CIS scan's date.


=head2 ScanName => Str

The the name of the scan configuration that's associated with this
scan.


=head2 ScheduledBy => Str

The account or organization that schedules the CIS scan.


=head2 SecurityLevel => Str

The security level for the CIS scan. Security level refers to the
Benchmark levels that CIS assigns to a profile.


=head2 Status => Str

The CIS scan's status.


=head2 Targets => L<Paws::Inspector2::CisTargets>

The CIS scan's targets.


=head2 TotalChecks => Int

The CIS scan's total checks.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Inspector2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

