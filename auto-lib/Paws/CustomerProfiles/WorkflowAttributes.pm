# Generated by default/object.tt
package Paws::CustomerProfiles::WorkflowAttributes;
  use Moose;
  has AppflowIntegration => (is => 'ro', isa => 'Paws::CustomerProfiles::AppflowIntegrationWorkflowAttributes');

1;

### main pod documentation begin ###

=head1 NAME

Paws::CustomerProfiles::WorkflowAttributes

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CustomerProfiles::WorkflowAttributes object:

  $service_obj->Method(Att1 => { AppflowIntegration => $value, ..., AppflowIntegration => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CustomerProfiles::WorkflowAttributes object:

  $result = $service_obj->Method(...);
  $result->Att1->AppflowIntegration

=head1 DESCRIPTION

Structure to hold workflow attributes.

=head1 ATTRIBUTES


=head2 AppflowIntegration => L<Paws::CustomerProfiles::AppflowIntegrationWorkflowAttributes>

Workflow attributes specific to C<APPFLOW_INTEGRATION> workflow.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CustomerProfiles>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

