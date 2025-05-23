# Generated by default/object.tt
package Paws::GuardDuty::AccountStatistics;
  use Moose;
  has AccountId => (is => 'ro', isa => 'Str', request_name => 'accountId', traits => ['NameInRequest']);
  has LastGeneratedAt => (is => 'ro', isa => 'Str', request_name => 'lastGeneratedAt', traits => ['NameInRequest']);
  has TotalFindings => (is => 'ro', isa => 'Int', request_name => 'totalFindings', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::GuardDuty::AccountStatistics

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::GuardDuty::AccountStatistics object:

  $service_obj->Method(Att1 => { AccountId => $value, ..., TotalFindings => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::GuardDuty::AccountStatistics object:

  $result = $service_obj->Method(...);
  $result->Att1->AccountId

=head1 DESCRIPTION

Represents a list of map of accounts with the number of findings
associated with each account.

=head1 ATTRIBUTES


=head2 AccountId => Str

The ID of the Amazon Web Services account.


=head2 LastGeneratedAt => Str

The timestamp at which the finding for this account was last generated.


=head2 TotalFindings => Int

The total number of findings associated with an account.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::GuardDuty>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

