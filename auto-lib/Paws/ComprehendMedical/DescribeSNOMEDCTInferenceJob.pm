
package Paws::ComprehendMedical::DescribeSNOMEDCTInferenceJob;
  use Moose;
  has JobId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeSNOMEDCTInferenceJob');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ComprehendMedical::DescribeSNOMEDCTInferenceJobResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ComprehendMedical::DescribeSNOMEDCTInferenceJob - Arguments for method DescribeSNOMEDCTInferenceJob on L<Paws::ComprehendMedical>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeSNOMEDCTInferenceJob on the
L<AWS Comprehend Medical|Paws::ComprehendMedical> service. Use the attributes of this class
as arguments to method DescribeSNOMEDCTInferenceJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeSNOMEDCTInferenceJob.

=head1 SYNOPSIS

    my $comprehendmedical = Paws->service('ComprehendMedical');
    my $DescribeSNOMEDCTInferenceJobResponse =
      $comprehendmedical->DescribeSNOMEDCTInferenceJob(
      JobId => 'MyJobId',

      );

    # Results:
    my $ComprehendMedicalAsyncJobProperties =
      $DescribeSNOMEDCTInferenceJobResponse
      ->ComprehendMedicalAsyncJobProperties;

# Returns a L<Paws::ComprehendMedical::DescribeSNOMEDCTInferenceJobResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/comprehendmedical/DescribeSNOMEDCTInferenceJob>

=head1 ATTRIBUTES


=head2 B<REQUIRED> JobId => Str

The identifier that Amazon Comprehend Medical generated for the job.
The StartSNOMEDCTInferenceJob operation returns this identifier in its
response.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeSNOMEDCTInferenceJob in L<Paws::ComprehendMedical>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

