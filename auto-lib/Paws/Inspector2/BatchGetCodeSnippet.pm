
package Paws::Inspector2::BatchGetCodeSnippet;
  use Moose;
  has FindingArns => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'findingArns', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'BatchGetCodeSnippet');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/codesnippet/batchget');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Inspector2::BatchGetCodeSnippetResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Inspector2::BatchGetCodeSnippet - Arguments for method BatchGetCodeSnippet on L<Paws::Inspector2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method BatchGetCodeSnippet on the
L<Inspector2|Paws::Inspector2> service. Use the attributes of this class
as arguments to method BatchGetCodeSnippet.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to BatchGetCodeSnippet.

=head1 SYNOPSIS

    my $inspector2 = Paws->service('Inspector2');
    my $BatchGetCodeSnippetResponse = $inspector2->BatchGetCodeSnippet(
      FindingArns => [
        'MyFindingArn', ...    # min: 1, max: 100
      ],

    );

    # Results:
    my $CodeSnippetResults = $BatchGetCodeSnippetResponse->CodeSnippetResults;
    my $Errors             = $BatchGetCodeSnippetResponse->Errors;

    # Returns a L<Paws::Inspector2::BatchGetCodeSnippetResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/inspector2/BatchGetCodeSnippet>

=head1 ATTRIBUTES


=head2 B<REQUIRED> FindingArns => ArrayRef[Str|Undef]

An array of finding ARNs for the findings you want to retrieve code
snippets from.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method BatchGetCodeSnippet in L<Paws::Inspector2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

