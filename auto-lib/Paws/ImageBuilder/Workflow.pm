# Generated by default/object.tt
package Paws::ImageBuilder::Workflow;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', request_name => 'arn', traits => ['NameInRequest']);
  has ChangeDescription => (is => 'ro', isa => 'Str', request_name => 'changeDescription', traits => ['NameInRequest']);
  has Data => (is => 'ro', isa => 'Str', request_name => 'data', traits => ['NameInRequest']);
  has DateCreated => (is => 'ro', isa => 'Str', request_name => 'dateCreated', traits => ['NameInRequest']);
  has Description => (is => 'ro', isa => 'Str', request_name => 'description', traits => ['NameInRequest']);
  has KmsKeyId => (is => 'ro', isa => 'Str', request_name => 'kmsKeyId', traits => ['NameInRequest']);
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest']);
  has Owner => (is => 'ro', isa => 'Str', request_name => 'owner', traits => ['NameInRequest']);
  has Parameters => (is => 'ro', isa => 'ArrayRef[Paws::ImageBuilder::WorkflowParameterDetail]', request_name => 'parameters', traits => ['NameInRequest']);
  has State => (is => 'ro', isa => 'Paws::ImageBuilder::WorkflowState', request_name => 'state', traits => ['NameInRequest']);
  has Tags => (is => 'ro', isa => 'Paws::ImageBuilder::TagMap', request_name => 'tags', traits => ['NameInRequest']);
  has Type => (is => 'ro', isa => 'Str', request_name => 'type', traits => ['NameInRequest']);
  has Version => (is => 'ro', isa => 'Str', request_name => 'version', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::ImageBuilder::Workflow

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ImageBuilder::Workflow object:

  $service_obj->Method(Att1 => { Arn => $value, ..., Version => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ImageBuilder::Workflow object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

Defines a process that Image Builder uses to build and test images
during the image creation process.

=head1 ATTRIBUTES


=head2 Arn => Str

The Amazon Resource Name (ARN) of the workflow resource.


=head2 ChangeDescription => Str

Describes what change has been made in this version of the workflow, or
what makes this version different from other versions of the workflow.


=head2 Data => Str

Contains the YAML document content for the workflow.


=head2 DateCreated => Str

The timestamp when Image Builder created the workflow resource.


=head2 Description => Str

The description of the workflow.


=head2 KmsKeyId => Str

The KMS key identifier used to encrypt the workflow resource.


=head2 Name => Str

The name of the workflow resource.


=head2 Owner => Str

The owner of the workflow resource.


=head2 Parameters => ArrayRef[L<Paws::ImageBuilder::WorkflowParameterDetail>]

An array of input parameters that that the image workflow uses to
control actions or configure settings.


=head2 State => L<Paws::ImageBuilder::WorkflowState>

Describes the current status of the workflow and the reason for that
status.


=head2 Tags => L<Paws::ImageBuilder::TagMap>

The tags that apply to the workflow resource


=head2 Type => Str

Specifies the image creation stage that the workflow applies to. Image
Builder currently supports build and test workflows.


=head2 Version => Str

The workflow resource version. Workflow resources are immutable. To
make a change, you can clone a workflow or create a new version.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ImageBuilder>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

