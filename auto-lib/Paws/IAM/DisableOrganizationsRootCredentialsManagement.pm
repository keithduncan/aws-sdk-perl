
package Paws::IAM::DisableOrganizationsRootCredentialsManagement;
  use Moose;

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DisableOrganizationsRootCredentialsManagement');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IAM::DisableOrganizationsRootCredentialsManagementResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DisableOrganizationsRootCredentialsManagementResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::DisableOrganizationsRootCredentialsManagement - Arguments for method DisableOrganizationsRootCredentialsManagement on L<Paws::IAM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DisableOrganizationsRootCredentialsManagement on the
L<AWS Identity and Access Management|Paws::IAM> service. Use the attributes of this class
as arguments to method DisableOrganizationsRootCredentialsManagement.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DisableOrganizationsRootCredentialsManagement.

=head1 SYNOPSIS

    my $iam = Paws->service('IAM');
    my $DisableOrganizationsRootCredentialsManagementResponse =
      $iam->DisableOrganizationsRootCredentialsManagement();

    # Results:
    my $EnabledFeatures =
      $DisableOrganizationsRootCredentialsManagementResponse->EnabledFeatures;
    my $OrganizationId =
      $DisableOrganizationsRootCredentialsManagementResponse->OrganizationId;

# Returns a L<Paws::IAM::DisableOrganizationsRootCredentialsManagementResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iam/DisableOrganizationsRootCredentialsManagement>

=head1 ATTRIBUTES



=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DisableOrganizationsRootCredentialsManagement in L<Paws::IAM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

