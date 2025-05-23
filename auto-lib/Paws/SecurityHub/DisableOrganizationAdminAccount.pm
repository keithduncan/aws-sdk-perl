
package Paws::SecurityHub::DisableOrganizationAdminAccount;
  use Moose;
  has AdminAccountId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DisableOrganizationAdminAccount');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/organization/admin/disable');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SecurityHub::DisableOrganizationAdminAccountResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::DisableOrganizationAdminAccount - Arguments for method DisableOrganizationAdminAccount on L<Paws::SecurityHub>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DisableOrganizationAdminAccount on the
L<AWS SecurityHub|Paws::SecurityHub> service. Use the attributes of this class
as arguments to method DisableOrganizationAdminAccount.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DisableOrganizationAdminAccount.

=head1 SYNOPSIS

    my $securityhub = Paws->service('SecurityHub');
    my $DisableOrganizationAdminAccountResponse =
      $securityhub->DisableOrganizationAdminAccount(
      AdminAccountId => 'MyNonEmptyString',

      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/securityhub/DisableOrganizationAdminAccount>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AdminAccountId => Str

The Amazon Web Services account identifier of the Security Hub
administrator account.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DisableOrganizationAdminAccount in L<Paws::SecurityHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

