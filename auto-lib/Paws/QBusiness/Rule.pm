# Generated by default/object.tt
package Paws::QBusiness::Rule;
  use Moose;
  has ExcludedUsersAndGroups => (is => 'ro', isa => 'Paws::QBusiness::UsersAndGroups', request_name => 'excludedUsersAndGroups', traits => ['NameInRequest']);
  has IncludedUsersAndGroups => (is => 'ro', isa => 'Paws::QBusiness::UsersAndGroups', request_name => 'includedUsersAndGroups', traits => ['NameInRequest']);
  has RuleConfiguration => (is => 'ro', isa => 'Paws::QBusiness::RuleConfiguration', request_name => 'ruleConfiguration', traits => ['NameInRequest']);
  has RuleType => (is => 'ro', isa => 'Str', request_name => 'ruleType', traits => ['NameInRequest'], required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::QBusiness::Rule

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::QBusiness::Rule object:

  $service_obj->Method(Att1 => { ExcludedUsersAndGroups => $value, ..., RuleType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::QBusiness::Rule object:

  $result = $service_obj->Method(...);
  $result->Att1->ExcludedUsersAndGroups

=head1 DESCRIPTION

Guardrail rules for an Amazon Q Business application. Amazon Q Business
supports only one rule at a time.

=head1 ATTRIBUTES


=head2 ExcludedUsersAndGroups => L<Paws::QBusiness::UsersAndGroups>

Users and groups to be excluded from a rule.


=head2 IncludedUsersAndGroups => L<Paws::QBusiness::UsersAndGroups>

Users and groups to be included in a rule.


=head2 RuleConfiguration => L<Paws::QBusiness::RuleConfiguration>

The configuration information for a rule.


=head2 B<REQUIRED> RuleType => Str

The type of rule.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::QBusiness>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

