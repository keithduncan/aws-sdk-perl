
package Paws::SecurityIR::ListCases;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListCases');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/list-cases');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SecurityIR::ListCasesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityIR::ListCases - Arguments for method ListCases on L<Paws::SecurityIR>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListCases on the
L<Security Incident Response|Paws::SecurityIR> service. Use the attributes of this class
as arguments to method ListCases.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListCases.

=head1 SYNOPSIS

    my $security-ir = Paws->service('SecurityIR');
    my $ListCasesResponse = $security -ir->ListCases(
      MaxResults => 1,                                      # OPTIONAL
      NextToken  => 'MyListCasesRequestNextTokenString',    # OPTIONAL
    );

    # Results:
    my $Items     = $ListCasesResponse->Items;
    my $NextToken = $ListCasesResponse->NextToken;
    my $Total     = $ListCasesResponse->Total;

    # Returns a L<Paws::SecurityIR::ListCasesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/security-ir/ListCases>

=head1 ATTRIBUTES


=head2 MaxResults => Int

Optional element for ListCases to limit the number of responses.



=head2 NextToken => Str

Optional element.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListCases in L<Paws::SecurityIR>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

