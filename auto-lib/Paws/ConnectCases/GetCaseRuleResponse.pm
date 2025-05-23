# Generated by default/object.tt
package Paws::ConnectCases::GetCaseRuleResponse;
  use Moose;
  has CaseRuleArn => (is => 'ro', isa => 'Str', request_name => 'caseRuleArn', traits => ['NameInRequest'], required => 1);
  has CaseRuleId => (is => 'ro', isa => 'Str', request_name => 'caseRuleId', traits => ['NameInRequest'], required => 1);
  has CreatedTime => (is => 'ro', isa => 'Str', request_name => 'createdTime', traits => ['NameInRequest']);
  has Deleted => (is => 'ro', isa => 'Bool', request_name => 'deleted', traits => ['NameInRequest']);
  has Description => (is => 'ro', isa => 'Str', request_name => 'description', traits => ['NameInRequest']);
  has LastModifiedTime => (is => 'ro', isa => 'Str', request_name => 'lastModifiedTime', traits => ['NameInRequest']);
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest'], required => 1);
  has Rule => (is => 'ro', isa => 'Paws::ConnectCases::CaseRuleDetails', request_name => 'rule', traits => ['NameInRequest'], required => 1);
  has Tags => (is => 'ro', isa => 'Paws::ConnectCases::Tags', request_name => 'tags', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::ConnectCases::GetCaseRuleResponse

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ConnectCases::GetCaseRuleResponse object:

  $service_obj->Method(Att1 => { CaseRuleArn => $value, ..., Tags => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ConnectCases::GetCaseRuleResponse object:

  $result = $service_obj->Method(...);
  $result->Att1->CaseRuleArn

=head1 DESCRIPTION

Detailed case rule information. In the Amazon Connect admin website,
case rules are known as I<case field conditions>. For more information
about case field conditions, see Add case field conditions to a case
template
(https://docs.aws.amazon.com/connect/latest/adminguide/case-field-conditions.html).

=head1 ATTRIBUTES


=head2 B<REQUIRED> CaseRuleArn => Str

The Amazon Resource Name (ARN) of the case rule.


=head2 B<REQUIRED> CaseRuleId => Str

Unique identifier of a case rule.


=head2 CreatedTime => Str

Timestamp when the resource was created.


=head2 Deleted => Bool

Indicates whether the resource has been deleted.


=head2 Description => Str

Description of a case rule.


=head2 LastModifiedTime => Str

Timestamp when the resource was created or last modified.


=head2 B<REQUIRED> Name => Str

Name of the case rule.


=head2 B<REQUIRED> Rule => L<Paws::ConnectCases::CaseRuleDetails>

Represents what rule type should take place, under what conditions.


=head2 Tags => L<Paws::ConnectCases::Tags>

A map of of key-value pairs that represent tags on a resource. Tags are
used to organize, track, or control access for this resource.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ConnectCases>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

