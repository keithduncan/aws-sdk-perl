
package Paws::Support::DescribeServices;
  use Moose;
  has Language => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'language' );
  has ServiceCodeList => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'serviceCodeList' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeServices');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Support::DescribeServicesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Support::DescribeServices - Arguments for method DescribeServices on L<Paws::Support>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeServices on the
L<AWS Support|Paws::Support> service. Use the attributes of this class
as arguments to method DescribeServices.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeServices.

=head1 SYNOPSIS

    my $support = Paws->service('Support');
    my $DescribeServicesResponse = $support->DescribeServices(
      Language        => 'MyLanguage',                # OPTIONAL
      ServiceCodeList => [ 'MyServiceCode', ... ],    # OPTIONAL
    );

    # Results:
    my $Services = $DescribeServicesResponse->Services;

    # Returns a L<Paws::Support::DescribeServicesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/support/DescribeServices>

=head1 ATTRIBUTES


=head2 Language => Str

The language in which Amazon Web Services Support handles the case.
Amazon Web Services Support currently supports Chinese
(E<ldquo>zhE<rdquo>), English ("en"), Japanese ("ja") and Korean
(E<ldquo>koE<rdquo>). You must specify the ISO 639-1 code for the
C<language> parameter if you want support in that language.



=head2 ServiceCodeList => ArrayRef[Str|Undef]

A JSON-formatted list of service codes available for Amazon Web
Services services.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeServices in L<Paws::Support>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

