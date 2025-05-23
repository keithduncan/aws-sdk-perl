
package Paws::Athena::BatchGetNamedQuery;
  use Moose;
  has NamedQueryIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'BatchGetNamedQuery');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Athena::BatchGetNamedQueryOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Athena::BatchGetNamedQuery - Arguments for method BatchGetNamedQuery on L<Paws::Athena>

=head1 DESCRIPTION

This class represents the parameters used for calling the method BatchGetNamedQuery on the
L<Amazon Athena|Paws::Athena> service. Use the attributes of this class
as arguments to method BatchGetNamedQuery.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to BatchGetNamedQuery.

=head1 SYNOPSIS

    my $athena = Paws->service('Athena');
    my $BatchGetNamedQueryOutput = $athena->BatchGetNamedQuery(
      NamedQueryIds => [
        'MyNamedQueryId', ...    # min: 1, max: 128
      ],

    );

    # Results:
    my $NamedQueries = $BatchGetNamedQueryOutput->NamedQueries;
    my $UnprocessedNamedQueryIds =
      $BatchGetNamedQueryOutput->UnprocessedNamedQueryIds;

    # Returns a L<Paws::Athena::BatchGetNamedQueryOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/athena/BatchGetNamedQuery>

=head1 ATTRIBUTES


=head2 B<REQUIRED> NamedQueryIds => ArrayRef[Str|Undef]

An array of query IDs.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method BatchGetNamedQuery in L<Paws::Athena>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

