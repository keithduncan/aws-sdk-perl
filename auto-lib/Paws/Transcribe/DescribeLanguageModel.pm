
package Paws::Transcribe::DescribeLanguageModel;
  use Moose;
  has ModelName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeLanguageModel');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Transcribe::DescribeLanguageModelResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Transcribe::DescribeLanguageModel - Arguments for method DescribeLanguageModel on L<Paws::Transcribe>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeLanguageModel on the
L<Amazon Transcribe Service|Paws::Transcribe> service. Use the attributes of this class
as arguments to method DescribeLanguageModel.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeLanguageModel.

=head1 SYNOPSIS

    my $transcribe = Paws->service('Transcribe');
    my $DescribeLanguageModelResponse = $transcribe->DescribeLanguageModel(
      ModelName => 'MyModelName',

    );

    # Results:
    my $LanguageModel = $DescribeLanguageModelResponse->LanguageModel;

    # Returns a L<Paws::Transcribe::DescribeLanguageModelResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/transcribe/DescribeLanguageModel>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ModelName => Str

The name of the custom language model you want information about. Model
names are case sensitive.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeLanguageModel in L<Paws::Transcribe>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

