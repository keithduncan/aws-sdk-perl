
package Paws::Rekognition::GetTextDetection;
  use Moose;
  has JobId => (is => 'ro', isa => 'Str', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetTextDetection');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Rekognition::GetTextDetectionResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Rekognition::GetTextDetection - Arguments for method GetTextDetection on L<Paws::Rekognition>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetTextDetection on the
L<Amazon Rekognition|Paws::Rekognition> service. Use the attributes of this class
as arguments to method GetTextDetection.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetTextDetection.

=head1 SYNOPSIS

    my $rekognition = Paws->service('Rekognition');
    my $GetTextDetectionResponse = $rekognition->GetTextDetection(
      JobId      => 'MyJobId',
      MaxResults => 1,                      # OPTIONAL
      NextToken  => 'MyPaginationToken',    # OPTIONAL
    );

    # Results:
    my $JobId            = $GetTextDetectionResponse->JobId;
    my $JobStatus        = $GetTextDetectionResponse->JobStatus;
    my $JobTag           = $GetTextDetectionResponse->JobTag;
    my $NextToken        = $GetTextDetectionResponse->NextToken;
    my $StatusMessage    = $GetTextDetectionResponse->StatusMessage;
    my $TextDetections   = $GetTextDetectionResponse->TextDetections;
    my $TextModelVersion = $GetTextDetectionResponse->TextModelVersion;
    my $Video            = $GetTextDetectionResponse->Video;
    my $VideoMetadata    = $GetTextDetectionResponse->VideoMetadata;

    # Returns a L<Paws::Rekognition::GetTextDetectionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rekognition/GetTextDetection>

=head1 ATTRIBUTES


=head2 B<REQUIRED> JobId => Str

Job identifier for the text detection operation for which you want
results returned. You get the job identifer from an initial call to
C<StartTextDetection>.



=head2 MaxResults => Int

Maximum number of results to return per paginated call. The largest
value you can specify is 1000.



=head2 NextToken => Str

If the previous response was incomplete (because there are more labels
to retrieve), Amazon Rekognition Video returns a pagination token in
the response. You can use this pagination token to retrieve the next
set of text.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetTextDetection in L<Paws::Rekognition>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

