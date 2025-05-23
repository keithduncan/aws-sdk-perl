
package Paws::WAFV2::GetRateBasedStatementManagedKeys;
  use Moose;
  has RuleGroupRuleName => (is => 'ro', isa => 'Str');
  has RuleName => (is => 'ro', isa => 'Str', required => 1);
  has Scope => (is => 'ro', isa => 'Str', required => 1);
  has WebACLId => (is => 'ro', isa => 'Str', required => 1);
  has WebACLName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetRateBasedStatementManagedKeys');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WAFV2::GetRateBasedStatementManagedKeysResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WAFV2::GetRateBasedStatementManagedKeys - Arguments for method GetRateBasedStatementManagedKeys on L<Paws::WAFV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetRateBasedStatementManagedKeys on the
L<AWS WAFV2|Paws::WAFV2> service. Use the attributes of this class
as arguments to method GetRateBasedStatementManagedKeys.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetRateBasedStatementManagedKeys.

=head1 SYNOPSIS

    my $wafv2 = Paws->service('WAFV2');
    my $GetRateBasedStatementManagedKeysResponse =
      $wafv2->GetRateBasedStatementManagedKeys(
      RuleName          => 'MyEntityName',
      Scope             => 'CLOUDFRONT',
      WebACLId          => 'MyEntityId',
      WebACLName        => 'MyEntityName',
      RuleGroupRuleName => 'MyEntityName',    # OPTIONAL
      );

    # Results:
    my $ManagedKeysIPV4 =
      $GetRateBasedStatementManagedKeysResponse->ManagedKeysIPV4;
    my $ManagedKeysIPV6 =
      $GetRateBasedStatementManagedKeysResponse->ManagedKeysIPV6;

    # Returns a L<Paws::WAFV2::GetRateBasedStatementManagedKeysResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/wafv2/GetRateBasedStatementManagedKeys>

=head1 ATTRIBUTES


=head2 RuleGroupRuleName => Str

The name of the rule group reference statement in your web ACL. This is
required only when you have the rate-based rule nested inside a rule
group.



=head2 B<REQUIRED> RuleName => Str

The name of the rate-based rule to get the keys for. If you have the
rule defined inside a rule group that you're using in your web ACL,
also provide the name of the rule group reference statement in the
request parameter C<RuleGroupRuleName>.



=head2 B<REQUIRED> Scope => Str

Specifies whether this is for a global resource type, such as a Amazon
CloudFront distribution. For an Amplify application, use C<CLOUDFRONT>.

To work with CloudFront, you must also specify the Region US East (N.
Virginia) as follows:

=over

=item *

CLI - Specify the Region when you use the CloudFront scope:
C<--scope=CLOUDFRONT --region=us-east-1>.

=item *

API and SDKs - For all calls, use the Region endpoint us-east-1.

=back


Valid values are: C<"CLOUDFRONT">, C<"REGIONAL">

=head2 B<REQUIRED> WebACLId => Str

The unique identifier for the web ACL. This ID is returned in the
responses to create and list commands. You provide it to operations
like update and delete.



=head2 B<REQUIRED> WebACLName => Str

The name of the web ACL. You cannot change the name of a web ACL after
you create it.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetRateBasedStatementManagedKeys in L<Paws::WAFV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

