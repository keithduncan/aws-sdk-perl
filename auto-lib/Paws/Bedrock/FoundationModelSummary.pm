# Generated by default/object.tt
package Paws::Bedrock::FoundationModelSummary;
  use Moose;
  has CustomizationsSupported => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'customizationsSupported', traits => ['NameInRequest']);
  has InferenceTypesSupported => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'inferenceTypesSupported', traits => ['NameInRequest']);
  has InputModalities => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'inputModalities', traits => ['NameInRequest']);
  has ModelArn => (is => 'ro', isa => 'Str', request_name => 'modelArn', traits => ['NameInRequest'], required => 1);
  has ModelId => (is => 'ro', isa => 'Str', request_name => 'modelId', traits => ['NameInRequest'], required => 1);
  has ModelLifecycle => (is => 'ro', isa => 'Paws::Bedrock::FoundationModelLifecycle', request_name => 'modelLifecycle', traits => ['NameInRequest']);
  has ModelName => (is => 'ro', isa => 'Str', request_name => 'modelName', traits => ['NameInRequest']);
  has OutputModalities => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'outputModalities', traits => ['NameInRequest']);
  has ProviderName => (is => 'ro', isa => 'Str', request_name => 'providerName', traits => ['NameInRequest']);
  has ResponseStreamingSupported => (is => 'ro', isa => 'Bool', request_name => 'responseStreamingSupported', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::Bedrock::FoundationModelSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Bedrock::FoundationModelSummary object:

  $service_obj->Method(Att1 => { CustomizationsSupported => $value, ..., ResponseStreamingSupported => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Bedrock::FoundationModelSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->CustomizationsSupported

=head1 DESCRIPTION

Summary information for a foundation model.

=head1 ATTRIBUTES


=head2 CustomizationsSupported => ArrayRef[Str|Undef]

Whether the model supports fine-tuning or continual pre-training.


=head2 InferenceTypesSupported => ArrayRef[Str|Undef]

The inference types that the model supports.


=head2 InputModalities => ArrayRef[Str|Undef]

The input modalities that the model supports.


=head2 B<REQUIRED> ModelArn => Str

The Amazon Resource Name (ARN) of the foundation model.


=head2 B<REQUIRED> ModelId => Str

The model ID of the foundation model.


=head2 ModelLifecycle => L<Paws::Bedrock::FoundationModelLifecycle>

Contains details about whether a model version is available or
deprecated.


=head2 ModelName => Str

The name of the model.


=head2 OutputModalities => ArrayRef[Str|Undef]

The output modalities that the model supports.


=head2 ProviderName => Str

The model's provider name.


=head2 ResponseStreamingSupported => Bool

Indicates whether the model supports streaming.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Bedrock>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

