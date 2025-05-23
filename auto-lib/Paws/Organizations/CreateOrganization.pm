
package Paws::Organizations::CreateOrganization;
  use Moose;
  has FeatureSet => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateOrganization');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Organizations::CreateOrganizationResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Organizations::CreateOrganization - Arguments for method CreateOrganization on L<Paws::Organizations>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateOrganization on the
L<AWS Organizations|Paws::Organizations> service. Use the attributes of this class
as arguments to method CreateOrganization.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateOrganization.

=head1 SYNOPSIS

    my $organizations = Paws->service('Organizations');
 # To create a new organization with all features enabled
 # Bill wants to create an organization using credentials from account
 # 111111111111. The following example shows that the account becomes the master
 # account in the new organization. Because he does not specify a feature set,
 # the new organization defaults to all features enabled and service control
 # policies enabled on the root:

    my $CreateOrganizationResponse = $organizations->CreateOrganization();

    # Results:
    my $Organization = $CreateOrganizationResponse->Organization;

 # Returns a L<Paws::Organizations::CreateOrganizationResponse> object.
 # To create a new organization with consolidated billing features only
 # In the following example, Bill creates an organization using credentials from
 # account 111111111111, and configures the organization to support only the
 # consolidated billing feature set:

    my $CreateOrganizationResponse = $organizations->CreateOrganization(
      'FeatureSet' => 'CONSOLIDATED_BILLING' );

    # Results:
    my $Organization = $CreateOrganizationResponse->Organization;

    # Returns a L<Paws::Organizations::CreateOrganizationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/organizations/CreateOrganization>

=head1 ATTRIBUTES


=head2 FeatureSet => Str

Specifies the feature set supported by the new organization. Each
feature set supports different levels of functionality.

=over

=item *

C<CONSOLIDATED_BILLING>: All member accounts have their bills
consolidated to and paid by the management account. For more
information, see Consolidated billing
(https://docs.aws.amazon.com/organizations/latest/userguide/orgs_getting-started_concepts.html#feature-set-cb-only)
in the I<Organizations User Guide>.

The consolidated billing feature subset isn't available for
organizations in the Amazon Web Services GovCloud (US) Region.

=item *

C<ALL>: In addition to all the features supported by the consolidated
billing feature set, the management account can also apply any policy
type to any member account in the organization. For more information,
see All features
(https://docs.aws.amazon.com/organizations/latest/userguide/orgs_getting-started_concepts.html#feature-set-all)
in the I<Organizations User Guide>.

=back


Valid values are: C<"ALL">, C<"CONSOLIDATED_BILLING">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateOrganization in L<Paws::Organizations>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

