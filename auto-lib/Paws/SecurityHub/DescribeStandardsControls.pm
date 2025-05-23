
package Paws::SecurityHub::DescribeStandardsControls;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'MaxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'NextToken');
  has StandardsSubscriptionArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'StandardsSubscriptionArn', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeStandardsControls');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/standards/controls/{StandardsSubscriptionArn+}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SecurityHub::DescribeStandardsControlsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::DescribeStandardsControls - Arguments for method DescribeStandardsControls on L<Paws::SecurityHub>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeStandardsControls on the
L<AWS SecurityHub|Paws::SecurityHub> service. Use the attributes of this class
as arguments to method DescribeStandardsControls.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeStandardsControls.

=head1 SYNOPSIS

    my $securityhub = Paws->service('SecurityHub');
    my $DescribeStandardsControlsResponse =
      $securityhub->DescribeStandardsControls(
      StandardsSubscriptionArn => 'MyNonEmptyString',
      MaxResults               => 1,                    # OPTIONAL
      NextToken                => 'MyNextToken',        # OPTIONAL
      );

    # Results:
    my $Controls  = $DescribeStandardsControlsResponse->Controls;
    my $NextToken = $DescribeStandardsControlsResponse->NextToken;

    # Returns a L<Paws::SecurityHub::DescribeStandardsControlsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/securityhub/DescribeStandardsControls>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of security standard controls to return.



=head2 NextToken => Str

The token that is required for pagination. On your first call to the
C<DescribeStandardsControls> operation, set the value of this parameter
to C<NULL>.

For subsequent calls to the operation, to continue listing data, set
the value of this parameter to the value returned from the previous
response.



=head2 B<REQUIRED> StandardsSubscriptionArn => Str

The ARN of a resource that represents your subscription to a supported
standard. To get the subscription ARNs of the standards you have
enabled, use the C<GetEnabledStandards> operation.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeStandardsControls in L<Paws::SecurityHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

