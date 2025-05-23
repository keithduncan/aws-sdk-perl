
package Paws::AuditManager::RegisterOrganizationAdminAccount;
  use Moose;
  has AdminAccountId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'adminAccountId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RegisterOrganizationAdminAccount');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/account/registerOrganizationAdminAccount');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AuditManager::RegisterOrganizationAdminAccountResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AuditManager::RegisterOrganizationAdminAccount - Arguments for method RegisterOrganizationAdminAccount on L<Paws::AuditManager>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RegisterOrganizationAdminAccount on the
L<AWS Audit Manager|Paws::AuditManager> service. Use the attributes of this class
as arguments to method RegisterOrganizationAdminAccount.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RegisterOrganizationAdminAccount.

=head1 SYNOPSIS

    my $auditmanager = Paws->service('AuditManager');
    my $RegisterOrganizationAdminAccountResponse =
      $auditmanager->RegisterOrganizationAdminAccount(
      AdminAccountId => 'MyAccountId',

      );

    # Results:
    my $AdminAccountId =
      $RegisterOrganizationAdminAccountResponse->AdminAccountId;
    my $OrganizationId =
      $RegisterOrganizationAdminAccountResponse->OrganizationId;

# Returns a L<Paws::AuditManager::RegisterOrganizationAdminAccountResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/auditmanager/RegisterOrganizationAdminAccount>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AdminAccountId => Str

The identifier for the delegated administrator account.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RegisterOrganizationAdminAccount in L<Paws::AuditManager>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

