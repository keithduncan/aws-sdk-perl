
package Paws::CloudWatch::PutManagedInsightRules;
  use Moose;
  has ManagedRules => (is => 'ro', isa => 'ArrayRef[Paws::CloudWatch::ManagedRule]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutManagedInsightRules');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudWatch::PutManagedInsightRulesOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'PutManagedInsightRulesResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatch::PutManagedInsightRules - Arguments for method PutManagedInsightRules on L<Paws::CloudWatch>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutManagedInsightRules on the
L<Amazon CloudWatch|Paws::CloudWatch> service. Use the attributes of this class
as arguments to method PutManagedInsightRules.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutManagedInsightRules.

=head1 SYNOPSIS

    my $monitoring = Paws->service('CloudWatch');
    my $PutManagedInsightRulesOutput = $monitoring->PutManagedInsightRules(
      ManagedRules => [
        {
          ResourceARN  => 'MyAmazonResourceName',    # min: 1, max: 1024
          TemplateName => 'MyTemplateName',          # min: 1, max: 128
          Tags         => [
            {
              Key   => 'MyTagKey',      # min: 1, max: 128
              Value => 'MyTagValue',    # max: 256

            },
            ...
          ],    # OPTIONAL
        },
        ...
      ],

    );

    # Results:
    my $Failures = $PutManagedInsightRulesOutput->Failures;

    # Returns a L<Paws::CloudWatch::PutManagedInsightRulesOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/monitoring/PutManagedInsightRules>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ManagedRules => ArrayRef[L<Paws::CloudWatch::ManagedRule>]

A list of C<ManagedRules> to enable.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutManagedInsightRules in L<Paws::CloudWatch>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

