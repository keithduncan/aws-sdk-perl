
package Paws::Glue::ListConnectionTypes;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListConnectionTypes');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Glue::ListConnectionTypesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::ListConnectionTypes - Arguments for method ListConnectionTypes on L<Paws::Glue>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListConnectionTypes on the
L<AWS Glue|Paws::Glue> service. Use the attributes of this class
as arguments to method ListConnectionTypes.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListConnectionTypes.

=head1 SYNOPSIS

    my $glue = Paws->service('Glue');
    my $ListConnectionTypesResponse = $glue->ListConnectionTypes(
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $ConnectionTypes = $ListConnectionTypesResponse->ConnectionTypes;
    my $NextToken       = $ListConnectionTypesResponse->NextToken;

    # Returns a L<Paws::Glue::ListConnectionTypesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/glue/ListConnectionTypes>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of results to return.



=head2 NextToken => Str

A continuation token, if this is a continuation call.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListConnectionTypes in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

