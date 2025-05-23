# Generated by default/object.tt
package Paws::Transfer::ListedWorkflow;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has WorkflowId => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Transfer::ListedWorkflow

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Transfer::ListedWorkflow object:

  $service_obj->Method(Att1 => { Arn => $value, ..., WorkflowId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Transfer::ListedWorkflow object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

Contains the identifier, text description, and Amazon Resource Name
(ARN) for the workflow.

=head1 ATTRIBUTES


=head2 Arn => Str

Specifies the unique Amazon Resource Name (ARN) for the workflow.


=head2 Description => Str

Specifies the text description for the workflow.


=head2 WorkflowId => Str

A unique identifier for the workflow.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Transfer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

