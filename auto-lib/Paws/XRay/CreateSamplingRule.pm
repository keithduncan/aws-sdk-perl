
package Paws::XRay::CreateSamplingRule;
  use Moose;
  has SamplingRule => (is => 'ro', isa => 'Paws::XRay::SamplingRule', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::XRay::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateSamplingRule');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/CreateSamplingRule');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::XRay::CreateSamplingRuleResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::XRay::CreateSamplingRule - Arguments for method CreateSamplingRule on L<Paws::XRay>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateSamplingRule on the
L<AWS X-Ray|Paws::XRay> service. Use the attributes of this class
as arguments to method CreateSamplingRule.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateSamplingRule.

=head1 SYNOPSIS

    my $xray = Paws->service('XRay');
    my $CreateSamplingRuleResult = $xray->CreateSamplingRule(
      SamplingRule => {
        FixedRate     => 1,                  # max: 1
        HTTPMethod    => 'MyHTTPMethod',     # max: 10
        Host          => 'MyHost',           # max: 64
        Priority      => 1,                  # min: 1, max: 9999
        ReservoirSize => 1,
        ResourceARN   => 'MyResourceARN',    # max: 500
        ServiceName   => 'MyServiceName',    # max: 64
        ServiceType   => 'MyServiceType',    # max: 64
        URLPath       => 'MyURLPath',        # max: 128
        Version       => 1,                  # min: 1
        Attributes    => {
          'MyAttributeKey' =>
            'MyAttributeValue',   # key: min: 1, max: 32, value: min: 1, max: 32
        },    # max: 5; OPTIONAL
        RuleARN  => 'MyString',      # OPTIONAL
        RuleName => 'MyRuleName',    # min: 1, max: 32; OPTIONAL
      },
      Tags => [
        {
          Key   => 'MyTagKey',       # min: 1, max: 128
          Value => 'MyTagValue',     # max: 256

        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $SamplingRuleRecord = $CreateSamplingRuleResult->SamplingRuleRecord;

    # Returns a L<Paws::XRay::CreateSamplingRuleResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/xray/CreateSamplingRule>

=head1 ATTRIBUTES


=head2 B<REQUIRED> SamplingRule => L<Paws::XRay::SamplingRule>

The rule definition.



=head2 Tags => ArrayRef[L<Paws::XRay::Tag>]

A map that contains one or more tag keys and tag values to attach to an
X-Ray sampling rule. For more information about ways to use tags, see
Tagging Amazon Web Services resources
(https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html) in the
I<Amazon Web Services General Reference>.

The following restrictions apply to tags:

=over

=item *

Maximum number of user-applied tags per resource: 50

=item *

Maximum tag key length: 128 Unicode characters

=item *

Maximum tag value length: 256 Unicode characters

=item *

Valid values for key and value: a-z, A-Z, 0-9, space, and the following
characters: _ . : / = + - and @

=item *

Tag keys and values are case sensitive.

=item *

Don't use C<aws:> as a prefix for keys; it's reserved for Amazon Web
Services use.

=back





=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateSamplingRule in L<Paws::XRay>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

