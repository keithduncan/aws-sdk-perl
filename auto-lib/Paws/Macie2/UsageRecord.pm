# Generated by default/object.tt
package Paws::Macie2::UsageRecord;
  use Moose;
  has AccountId => (is => 'ro', isa => 'Str', request_name => 'accountId', traits => ['NameInRequest']);
  has AutomatedDiscoveryFreeTrialStartDate => (is => 'ro', isa => 'Str', request_name => 'automatedDiscoveryFreeTrialStartDate', traits => ['NameInRequest']);
  has FreeTrialStartDate => (is => 'ro', isa => 'Str', request_name => 'freeTrialStartDate', traits => ['NameInRequest']);
  has Usage => (is => 'ro', isa => 'ArrayRef[Paws::Macie2::UsageByAccount]', request_name => 'usage', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::Macie2::UsageRecord

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Macie2::UsageRecord object:

  $service_obj->Method(Att1 => { AccountId => $value, ..., Usage => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Macie2::UsageRecord object:

  $result = $service_obj->Method(...);
  $result->Att1->AccountId

=head1 DESCRIPTION

Provides quota and aggregated usage data for an Amazon Macie account.

=head1 ATTRIBUTES


=head2 AccountId => Str

The unique identifier for the Amazon Web Services account that the data
applies to.


=head2 AutomatedDiscoveryFreeTrialStartDate => Str

The date and time, in UTC and extended ISO 8601 format, when the free
trial of automated sensitive data discovery started for the account.
This value is null if automated sensitive data discovery hasn't been
enabled for the account.


=head2 FreeTrialStartDate => Str

The date and time, in UTC and extended ISO 8601 format, when the Amazon
Macie free trial started for the account.


=head2 Usage => ArrayRef[L<Paws::Macie2::UsageByAccount>]

An array of objects that contains usage data and quotas for the
account. Each object contains the data for a specific usage metric and
the corresponding quota.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Macie2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

