
package Paws::RAM::DeleteResourceShare;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'clientToken');
  has ResourceShareArn => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'resourceShareArn', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteResourceShare');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/deleteresourceshare');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RAM::DeleteResourceShareResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RAM::DeleteResourceShare - Arguments for method DeleteResourceShare on L<Paws::RAM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteResourceShare on the
L<AWS Resource Access Manager|Paws::RAM> service. Use the attributes of this class
as arguments to method DeleteResourceShare.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteResourceShare.

=head1 SYNOPSIS

    my $ram = Paws->service('RAM');
    my $DeleteResourceShareResponse = $ram->DeleteResourceShare(
      ResourceShareArn => 'MyString',
      ClientToken      => 'MyString',    # OPTIONAL
    );

    # Results:
    my $ClientToken = $DeleteResourceShareResponse->ClientToken;
    my $ReturnValue = $DeleteResourceShareResponse->ReturnValue;

    # Returns a L<Paws::RAM::DeleteResourceShareResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ram/DeleteResourceShare>

=head1 ATTRIBUTES


=head2 ClientToken => Str

Specifies a unique, case-sensitive identifier that you provide to
ensure the idempotency of the request. This lets you safely retry the
request without accidentally performing the same operation a second
time. Passing the same value to a later call to an operation requires
that you also pass the same value for all other parameters. We
recommend that you use a UUID type of value.
(https://wikipedia.org/wiki/Universally_unique_identifier).

If you don't provide this value, then Amazon Web Services generates a
random one for you.

If you retry the operation with the same C<ClientToken>, but with
different parameters, the retry fails with an
C<IdempotentParameterMismatch> error.



=head2 B<REQUIRED> ResourceShareArn => Str

Specifies the Amazon Resource Name (ARN)
(https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html)
of the resource share to delete.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteResourceShare in L<Paws::RAM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

