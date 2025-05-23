
package Paws::Rekognition::DetectLabels;
  use Moose;
  has Features => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Image => (is => 'ro', isa => 'Paws::Rekognition::Image', required => 1);
  has MaxLabels => (is => 'ro', isa => 'Int');
  has MinConfidence => (is => 'ro', isa => 'Num');
  has Settings => (is => 'ro', isa => 'Paws::Rekognition::DetectLabelsSettings');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DetectLabels');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Rekognition::DetectLabelsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Rekognition::DetectLabels - Arguments for method DetectLabels on L<Paws::Rekognition>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DetectLabels on the
L<Amazon Rekognition|Paws::Rekognition> service. Use the attributes of this class
as arguments to method DetectLabels.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DetectLabels.

=head1 SYNOPSIS

    my $rekognition = Paws->service('Rekognition');
    # To detect labels
    # This operation detects labels in the supplied image
    my $DetectLabelsResponse = $rekognition->DetectLabels(
      'Image' => {
        'S3Object' => {
          'Bucket' => 'mybucket',
          'Name'   => 'myphoto'
        }
      },
      'MaxLabels'     => 123,
      'MinConfidence' => 70
    );

    # Results:
    my $Labels = $DetectLabelsResponse->Labels;

    # Returns a L<Paws::Rekognition::DetectLabelsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rekognition/DetectLabels>

=head1 ATTRIBUTES


=head2 Features => ArrayRef[Str|Undef]

A list of the types of analysis to perform. Specifying GENERAL_LABELS
uses the label detection feature, while specifying IMAGE_PROPERTIES
returns information regarding image color and quality. If no option is
specified GENERAL_LABELS is used by default.



=head2 B<REQUIRED> Image => L<Paws::Rekognition::Image>

The input image as base64-encoded bytes or an S3 object. If you use the
AWS CLI to call Amazon Rekognition operations, passing image bytes is
not supported. Images stored in an S3 Bucket do not need to be
base64-encoded.

If you are using an AWS SDK to call Amazon Rekognition, you might not
need to base64-encode image bytes passed using the C<Bytes> field. For
more information, see Images in the Amazon Rekognition developer guide.



=head2 MaxLabels => Int

Maximum number of labels you want the service to return in the
response. The service returns the specified number of highest
confidence labels. Only valid when GENERAL_LABELS is specified as a
feature type in the Feature input parameter.



=head2 MinConfidence => Num

Specifies the minimum confidence level for the labels to return. Amazon
Rekognition doesn't return any labels with confidence lower than this
specified value.

If C<MinConfidence> is not specified, the operation returns labels with
a confidence values greater than or equal to 55 percent. Only valid
when GENERAL_LABELS is specified as a feature type in the Feature input
parameter.



=head2 Settings => L<Paws::Rekognition::DetectLabelsSettings>

A list of the filters to be applied to returned detected labels and
image properties. Specified filters can be inclusive, exclusive, or a
combination of both. Filters can be used for individual labels or label
categories. The exact label names or label categories must be supplied.
For a full list of labels and label categories, see Detecting labels
(https://docs.aws.amazon.com/rekognition/latest/dg/labels.html).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DetectLabels in L<Paws::Rekognition>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

