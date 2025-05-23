# Generated by default/object.tt
package Paws::AppIntegrations::DataIntegrationAssociationSummary;
  use Moose;
  has ClientId => (is => 'ro', isa => 'Str');
  has DataIntegrationArn => (is => 'ro', isa => 'Str');
  has DataIntegrationAssociationArn => (is => 'ro', isa => 'Str');
  has DestinationURI => (is => 'ro', isa => 'Str');
  has ExecutionConfiguration => (is => 'ro', isa => 'Paws::AppIntegrations::ExecutionConfiguration');
  has LastExecutionStatus => (is => 'ro', isa => 'Paws::AppIntegrations::LastExecutionStatus');

1;

### main pod documentation begin ###

=head1 NAME

Paws::AppIntegrations::DataIntegrationAssociationSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AppIntegrations::DataIntegrationAssociationSummary object:

  $service_obj->Method(Att1 => { ClientId => $value, ..., LastExecutionStatus => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AppIntegrations::DataIntegrationAssociationSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->ClientId

=head1 DESCRIPTION

Summary information about the DataIntegration association.

=head1 ATTRIBUTES


=head2 ClientId => Str

The identifier for the client that is associated with the
DataIntegration association.


=head2 DataIntegrationArn => Str

The Amazon Resource Name (ARN) of the DataIntegration.


=head2 DataIntegrationAssociationArn => Str

The Amazon Resource Name (ARN) of the DataIntegration association.


=head2 DestinationURI => Str

The URI of the data destination.


=head2 ExecutionConfiguration => L<Paws::AppIntegrations::ExecutionConfiguration>




=head2 LastExecutionStatus => L<Paws::AppIntegrations::LastExecutionStatus>

The execution status of the last job.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AppIntegrations>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

