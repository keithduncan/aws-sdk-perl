# Generated by default/object.tt
package Paws::CustomerProfiles::AppflowIntegrationWorkflowAttributes;
  use Moose;
  has ConnectorProfileName => (is => 'ro', isa => 'Str', required => 1);
  has RoleArn => (is => 'ro', isa => 'Str');
  has SourceConnectorType => (is => 'ro', isa => 'Str', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::CustomerProfiles::AppflowIntegrationWorkflowAttributes

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CustomerProfiles::AppflowIntegrationWorkflowAttributes object:

  $service_obj->Method(Att1 => { ConnectorProfileName => $value, ..., SourceConnectorType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CustomerProfiles::AppflowIntegrationWorkflowAttributes object:

  $result = $service_obj->Method(...);
  $result->Att1->ConnectorProfileName

=head1 DESCRIPTION

Structure holding all C<APPFLOW_INTEGRATION> specific workflow
attributes.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConnectorProfileName => Str

The name of the AppFlow connector profile used for ingestion.


=head2 RoleArn => Str

The Amazon Resource Name (ARN) of the IAM role. Customer Profiles
assumes this role to create resources on your behalf as part of
workflow execution.


=head2 B<REQUIRED> SourceConnectorType => Str

Specifies the source connector type, such as Salesforce, ServiceNow,
and Marketo. Indicates source of ingestion.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CustomerProfiles>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

