
package Paws::WorkMail::DeleteEmailMonitoringConfiguration;
  use Moose;
  has OrganizationId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteEmailMonitoringConfiguration');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WorkMail::DeleteEmailMonitoringConfigurationResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkMail::DeleteEmailMonitoringConfiguration - Arguments for method DeleteEmailMonitoringConfiguration on L<Paws::WorkMail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteEmailMonitoringConfiguration on the
L<Amazon WorkMail|Paws::WorkMail> service. Use the attributes of this class
as arguments to method DeleteEmailMonitoringConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteEmailMonitoringConfiguration.

=head1 SYNOPSIS

    my $workmail = Paws->service('WorkMail');
    my $DeleteEmailMonitoringConfigurationResponse =
      $workmail->DeleteEmailMonitoringConfiguration(
      OrganizationId => 'MyOrganizationId',

      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/workmail/DeleteEmailMonitoringConfiguration>

=head1 ATTRIBUTES


=head2 B<REQUIRED> OrganizationId => Str

The ID of the organization from which the email monitoring
configuration is deleted.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteEmailMonitoringConfiguration in L<Paws::WorkMail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

