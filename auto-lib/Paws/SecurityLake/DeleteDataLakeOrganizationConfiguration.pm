
package Paws::SecurityLake::DeleteDataLakeOrganizationConfiguration;
  use Moose;
  has AutoEnableNewAccount => (is => 'ro', isa => 'ArrayRef[Paws::SecurityLake::DataLakeAutoEnableNewAccountConfiguration]', traits => ['NameInRequest'], request_name => 'autoEnableNewAccount');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteDataLakeOrganizationConfiguration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/datalake/organization/configuration/delete');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SecurityLake::DeleteDataLakeOrganizationConfigurationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityLake::DeleteDataLakeOrganizationConfiguration - Arguments for method DeleteDataLakeOrganizationConfiguration on L<Paws::SecurityLake>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteDataLakeOrganizationConfiguration on the
L<Amazon Security Lake|Paws::SecurityLake> service. Use the attributes of this class
as arguments to method DeleteDataLakeOrganizationConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteDataLakeOrganizationConfiguration.

=head1 SYNOPSIS

    my $securitylake = Paws->service('SecurityLake');
    my $DeleteDataLakeOrganizationConfigurationResponse =
      $securitylake->DeleteDataLakeOrganizationConfiguration(
      AutoEnableNewAccount => [
        {
          Region  => 'MyRegion',
          Sources => [
            {
              SourceName => 'ROUTE53'
              , # values: ROUTE53, VPC_FLOW, SH_FINDINGS, CLOUD_TRAIL_MGMT, LAMBDA_EXECUTION, S3_DATA, EKS_AUDIT, WAF; OPTIONAL
              SourceVersion => 'MyAwsLogSourceVersion',    # OPTIONAL
            },
            ...
          ],    # min: 1

        },
        ...
      ],    # OPTIONAL
      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/securitylake/DeleteDataLakeOrganizationConfiguration>

=head1 ATTRIBUTES


=head2 AutoEnableNewAccount => ArrayRef[L<Paws::SecurityLake::DataLakeAutoEnableNewAccountConfiguration>]

Turns off automatic enablement of Security Lake for member accounts
that are added to an organization.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteDataLakeOrganizationConfiguration in L<Paws::SecurityLake>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

