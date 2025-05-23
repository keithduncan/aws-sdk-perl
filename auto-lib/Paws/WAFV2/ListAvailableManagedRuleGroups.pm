
package Paws::WAFV2::ListAvailableManagedRuleGroups;
  use Moose;
  has Limit => (is => 'ro', isa => 'Int');
  has NextMarker => (is => 'ro', isa => 'Str');
  has Scope => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListAvailableManagedRuleGroups');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WAFV2::ListAvailableManagedRuleGroupsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WAFV2::ListAvailableManagedRuleGroups - Arguments for method ListAvailableManagedRuleGroups on L<Paws::WAFV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListAvailableManagedRuleGroups on the
L<AWS WAFV2|Paws::WAFV2> service. Use the attributes of this class
as arguments to method ListAvailableManagedRuleGroups.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListAvailableManagedRuleGroups.

=head1 SYNOPSIS

    my $wafv2 = Paws->service('WAFV2');
    my $ListAvailableManagedRuleGroupsResponse =
      $wafv2->ListAvailableManagedRuleGroups(
      Scope      => 'CLOUDFRONT',
      Limit      => 1,                 # OPTIONAL
      NextMarker => 'MyNextMarker',    # OPTIONAL
      );

    # Results:
    my $ManagedRuleGroups =
      $ListAvailableManagedRuleGroupsResponse->ManagedRuleGroups;
    my $NextMarker = $ListAvailableManagedRuleGroupsResponse->NextMarker;

    # Returns a L<Paws::WAFV2::ListAvailableManagedRuleGroupsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/wafv2/ListAvailableManagedRuleGroups>

=head1 ATTRIBUTES


=head2 Limit => Int

The maximum number of objects that you want WAF to return for this
request. If more objects are available, in the response, WAF provides a
C<NextMarker> value that you can use in a subsequent call to get the
next batch of objects.



=head2 NextMarker => Str

When you request a list of objects with a C<Limit> setting, if the
number of objects that are still available for retrieval exceeds the
limit, WAF returns a C<NextMarker> value in the response. To retrieve
the next batch of objects, provide the marker from the prior call in
your next request.



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


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListAvailableManagedRuleGroups in L<Paws::WAFV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

