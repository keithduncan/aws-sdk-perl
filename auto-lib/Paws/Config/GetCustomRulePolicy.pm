
package Paws::Config::GetCustomRulePolicy;
  use Moose;
  has ConfigRuleName => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetCustomRulePolicy');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Config::GetCustomRulePolicyResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Config::GetCustomRulePolicy - Arguments for method GetCustomRulePolicy on L<Paws::Config>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetCustomRulePolicy on the
L<AWS Config|Paws::Config> service. Use the attributes of this class
as arguments to method GetCustomRulePolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetCustomRulePolicy.

=head1 SYNOPSIS

    my $config = Paws->service('Config');
    my $GetCustomRulePolicyResponse = $config->GetCustomRulePolicy(
      ConfigRuleName => 'MyConfigRuleName',    # OPTIONAL
    );

    # Results:
    my $PolicyText = $GetCustomRulePolicyResponse->PolicyText;

    # Returns a L<Paws::Config::GetCustomRulePolicyResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/config/GetCustomRulePolicy>

=head1 ATTRIBUTES


=head2 ConfigRuleName => Str

The name of your Config Custom Policy rule.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetCustomRulePolicy in L<Paws::Config>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

