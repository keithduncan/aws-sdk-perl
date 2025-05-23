# Generated by default/object.tt
package Paws::GuardDuty::OrganizationStatistics;
  use Moose;
  has ActiveAccountsCount => (is => 'ro', isa => 'Int', request_name => 'activeAccountsCount', traits => ['NameInRequest']);
  has CountByFeature => (is => 'ro', isa => 'ArrayRef[Paws::GuardDuty::OrganizationFeatureStatistics]', request_name => 'countByFeature', traits => ['NameInRequest']);
  has EnabledAccountsCount => (is => 'ro', isa => 'Int', request_name => 'enabledAccountsCount', traits => ['NameInRequest']);
  has MemberAccountsCount => (is => 'ro', isa => 'Int', request_name => 'memberAccountsCount', traits => ['NameInRequest']);
  has TotalAccountsCount => (is => 'ro', isa => 'Int', request_name => 'totalAccountsCount', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::GuardDuty::OrganizationStatistics

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::GuardDuty::OrganizationStatistics object:

  $service_obj->Method(Att1 => { ActiveAccountsCount => $value, ..., TotalAccountsCount => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::GuardDuty::OrganizationStatistics object:

  $result = $service_obj->Method(...);
  $result->Att1->ActiveAccountsCount

=head1 DESCRIPTION

Information about the coverage statistics of the features for the
entire Amazon Web Services organization.

When you create a new Amazon Web Services organization, it might take
up to 24 hours to generate the statistics summary for this
organization.

=head1 ATTRIBUTES


=head2 ActiveAccountsCount => Int

Total number of active accounts in your Amazon Web Services
organization that are associated with GuardDuty.


=head2 CountByFeature => ArrayRef[L<Paws::GuardDuty::OrganizationFeatureStatistics>]

Retrieves the coverage statistics for each feature.


=head2 EnabledAccountsCount => Int

Total number of accounts that have enabled GuardDuty.


=head2 MemberAccountsCount => Int

Total number of accounts in your Amazon Web Services organization that
are associated with GuardDuty.


=head2 TotalAccountsCount => Int

Total number of accounts in your Amazon Web Services organization.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::GuardDuty>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

