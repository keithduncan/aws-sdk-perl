
package Paws::Kinesis::RemoveTagsFromStream;
  use Moose;
  has StreamARN => (is => 'ro', isa => 'Str');
  has StreamName => (is => 'ro', isa => 'Str');
  has TagKeys => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RemoveTagsFromStream');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Kinesis::RemoveTagsFromStream - Arguments for method RemoveTagsFromStream on L<Paws::Kinesis>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RemoveTagsFromStream on the
L<Amazon Kinesis|Paws::Kinesis> service. Use the attributes of this class
as arguments to method RemoveTagsFromStream.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RemoveTagsFromStream.

=head1 SYNOPSIS

    my $kinesis = Paws->service('Kinesis');
    $kinesis->RemoveTagsFromStream(
      TagKeys => [
        'MyTagKey', ...    # min: 1, max: 128
      ],
      StreamARN  => 'MyStreamARN',     # OPTIONAL
      StreamName => 'MyStreamName',    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kinesis/RemoveTagsFromStream>

=head1 ATTRIBUTES


=head2 StreamARN => Str

The ARN of the stream.



=head2 StreamName => Str

The name of the stream.



=head2 B<REQUIRED> TagKeys => ArrayRef[Str|Undef]

A list of tag keys. Each corresponding tag is removed from the stream.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RemoveTagsFromStream in L<Paws::Kinesis>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

