
package Paws::IAM::TagPolicy;
  use Moose;
  has PolicyArn => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::IAM::Tag]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'TagPolicy');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::TagPolicy - Arguments for method TagPolicy on L<Paws::IAM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method TagPolicy on the
L<AWS Identity and Access Management|Paws::IAM> service. Use the attributes of this class
as arguments to method TagPolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to TagPolicy.

=head1 SYNOPSIS

    my $iam = Paws->service('IAM');
    $iam->TagPolicy(
      PolicyArn => 'MyarnType',
      Tags      => [
        {
          Key   => 'MytagKeyType',      # min: 1, max: 128
          Value => 'MytagValueType',    # max: 256

        },
        ...
      ],

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iam/TagPolicy>

=head1 ATTRIBUTES


=head2 B<REQUIRED> PolicyArn => Str

The ARN of the IAM customer managed policy to which you want to add
tags.

This parameter allows (through its regex pattern
(http://wikipedia.org/wiki/regex)) a string of characters consisting of
upper and lowercase alphanumeric characters with no spaces. You can
also include any of the following characters: _+=,.@-



=head2 B<REQUIRED> Tags => ArrayRef[L<Paws::IAM::Tag>]

The list of tags that you want to attach to the IAM customer managed
policy. Each tag consists of a key name and an associated value.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method TagPolicy in L<Paws::IAM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

