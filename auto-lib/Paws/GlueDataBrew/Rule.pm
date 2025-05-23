# Generated by default/object.tt
package Paws::GlueDataBrew::Rule;
  use Moose;
  has CheckExpression => (is => 'ro', isa => 'Str', required => 1);
  has ColumnSelectors => (is => 'ro', isa => 'ArrayRef[Paws::GlueDataBrew::ColumnSelector]');
  has Disabled => (is => 'ro', isa => 'Bool');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has SubstitutionMap => (is => 'ro', isa => 'Paws::GlueDataBrew::ValuesMap');
  has Threshold => (is => 'ro', isa => 'Paws::GlueDataBrew::Threshold');

1;

### main pod documentation begin ###

=head1 NAME

Paws::GlueDataBrew::Rule

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::GlueDataBrew::Rule object:

  $service_obj->Method(Att1 => { CheckExpression => $value, ..., Threshold => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::GlueDataBrew::Rule object:

  $result = $service_obj->Method(...);
  $result->Att1->CheckExpression

=head1 DESCRIPTION

Represents a single data quality requirement that should be validated
in the scope of this dataset.

=head1 ATTRIBUTES


=head2 B<REQUIRED> CheckExpression => Str

The expression which includes column references, condition names
followed by variable references, possibly grouped and combined with
other conditions. For example, C<(:col1 starts_with :prefix1 or :col1
starts_with :prefix2) and (:col1 ends_with :suffix1 or :col1 ends_with
:suffix2)>. Column and value references are substitution variables that
should start with the ':' symbol. Depending on the context,
substitution variables' values can be either an actual value or a
column name. These values are defined in the SubstitutionMap. If a
CheckExpression starts with a column reference, then ColumnSelectors in
the rule should be null. If ColumnSelectors has been defined, then
there should be no column reference in the left side of a condition,
for example, C<is_between :val1 and :val2>.

For more information, see Available checks
(https://docs.aws.amazon.com/databrew/latest/dg/profile.data-quality-available-checks.html)


=head2 ColumnSelectors => ArrayRef[L<Paws::GlueDataBrew::ColumnSelector>]

List of column selectors. Selectors can be used to select columns using
a name or regular expression from the dataset. Rule will be applied to
selected columns.


=head2 Disabled => Bool

A value that specifies whether the rule is disabled. Once a rule is
disabled, a profile job will not validate it during a job run. Default
value is false.


=head2 B<REQUIRED> Name => Str

The name of the rule.


=head2 SubstitutionMap => L<Paws::GlueDataBrew::ValuesMap>

The map of substitution variable names to their values used in a check
expression. Variable names should start with a ':' (colon). Variable
values can either be actual values or column names. To differentiate
between the two, column names should be enclosed in backticks, for
example, C<":col1": "`Column A`".>


=head2 Threshold => L<Paws::GlueDataBrew::Threshold>

The threshold used with a non-aggregate check expression. Non-aggregate
check expressions will be applied to each row in a specific column, and
the threshold will be used to determine whether the validation
succeeds.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::GlueDataBrew>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

