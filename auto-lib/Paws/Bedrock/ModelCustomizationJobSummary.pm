# Generated by default/object.tt
package Paws::Bedrock::ModelCustomizationJobSummary;
  use Moose;
  has BaseModelArn => (is => 'ro', isa => 'Str', request_name => 'baseModelArn', traits => ['NameInRequest'], required => 1);
  has CreationTime => (is => 'ro', isa => 'Str', request_name => 'creationTime', traits => ['NameInRequest'], required => 1);
  has CustomizationType => (is => 'ro', isa => 'Str', request_name => 'customizationType', traits => ['NameInRequest']);
  has CustomModelArn => (is => 'ro', isa => 'Str', request_name => 'customModelArn', traits => ['NameInRequest']);
  has CustomModelName => (is => 'ro', isa => 'Str', request_name => 'customModelName', traits => ['NameInRequest']);
  has EndTime => (is => 'ro', isa => 'Str', request_name => 'endTime', traits => ['NameInRequest']);
  has JobArn => (is => 'ro', isa => 'Str', request_name => 'jobArn', traits => ['NameInRequest'], required => 1);
  has JobName => (is => 'ro', isa => 'Str', request_name => 'jobName', traits => ['NameInRequest'], required => 1);
  has LastModifiedTime => (is => 'ro', isa => 'Str', request_name => 'lastModifiedTime', traits => ['NameInRequest']);
  has Status => (is => 'ro', isa => 'Str', request_name => 'status', traits => ['NameInRequest'], required => 1);
  has StatusDetails => (is => 'ro', isa => 'Paws::Bedrock::StatusDetails', request_name => 'statusDetails', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::Bedrock::ModelCustomizationJobSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Bedrock::ModelCustomizationJobSummary object:

  $service_obj->Method(Att1 => { BaseModelArn => $value, ..., StatusDetails => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Bedrock::ModelCustomizationJobSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->BaseModelArn

=head1 DESCRIPTION

Information about one customization job

=head1 ATTRIBUTES


=head2 B<REQUIRED> BaseModelArn => Str

Amazon Resource Name (ARN) of the base model.


=head2 B<REQUIRED> CreationTime => Str

Creation time of the custom model.


=head2 CustomizationType => Str

Specifies whether to carry out continued pre-training of a model or
whether to fine-tune it. For more information, see Custom models
(https://docs.aws.amazon.com/bedrock/latest/userguide/custom-models.html).


=head2 CustomModelArn => Str

Amazon Resource Name (ARN) of the custom model.


=head2 CustomModelName => Str

Name of the custom model.


=head2 EndTime => Str

Time that the customization job ended.


=head2 B<REQUIRED> JobArn => Str

Amazon Resource Name (ARN) of the customization job.


=head2 B<REQUIRED> JobName => Str

Name of the customization job.


=head2 LastModifiedTime => Str

Time that the customization job was last modified.


=head2 B<REQUIRED> Status => Str

Status of the customization job.


=head2 StatusDetails => L<Paws::Bedrock::StatusDetails>

Details about the status of the data processing sub-task of the job.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Bedrock>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

