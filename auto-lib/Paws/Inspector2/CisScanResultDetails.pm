# Generated by default/object.tt
package Paws::Inspector2::CisScanResultDetails;
  use Moose;
  has AccountId => (is => 'ro', isa => 'Str', request_name => 'accountId', traits => ['NameInRequest']);
  has CheckDescription => (is => 'ro', isa => 'Str', request_name => 'checkDescription', traits => ['NameInRequest']);
  has CheckId => (is => 'ro', isa => 'Str', request_name => 'checkId', traits => ['NameInRequest']);
  has FindingArn => (is => 'ro', isa => 'Str', request_name => 'findingArn', traits => ['NameInRequest']);
  has Level => (is => 'ro', isa => 'Str', request_name => 'level', traits => ['NameInRequest']);
  has Platform => (is => 'ro', isa => 'Str', request_name => 'platform', traits => ['NameInRequest']);
  has Remediation => (is => 'ro', isa => 'Str', request_name => 'remediation', traits => ['NameInRequest']);
  has ScanArn => (is => 'ro', isa => 'Str', request_name => 'scanArn', traits => ['NameInRequest'], required => 1);
  has Status => (is => 'ro', isa => 'Str', request_name => 'status', traits => ['NameInRequest']);
  has StatusReason => (is => 'ro', isa => 'Str', request_name => 'statusReason', traits => ['NameInRequest']);
  has TargetResourceId => (is => 'ro', isa => 'Str', request_name => 'targetResourceId', traits => ['NameInRequest']);
  has Title => (is => 'ro', isa => 'Str', request_name => 'title', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::Inspector2::CisScanResultDetails

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Inspector2::CisScanResultDetails object:

  $service_obj->Method(Att1 => { AccountId => $value, ..., Title => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Inspector2::CisScanResultDetails object:

  $result = $service_obj->Method(...);
  $result->Att1->AccountId

=head1 DESCRIPTION

The CIS scan result details.

=head1 ATTRIBUTES


=head2 AccountId => Str

The CIS scan result details' account ID.


=head2 CheckDescription => Str

The account ID that's associated with the CIS scan result details.


=head2 CheckId => Str

The CIS scan result details' check ID.


=head2 FindingArn => Str

The CIS scan result details' finding ARN.


=head2 Level => Str

The CIS scan result details' level.


=head2 Platform => Str

The CIS scan result details' platform.


=head2 Remediation => Str

The CIS scan result details' remediation.


=head2 B<REQUIRED> ScanArn => Str

The CIS scan result details' scan ARN.


=head2 Status => Str

The CIS scan result details' status.


=head2 StatusReason => Str

The CIS scan result details' status reason.


=head2 TargetResourceId => Str

The CIS scan result details' target resource ID.


=head2 Title => Str

The CIS scan result details' title.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Inspector2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

