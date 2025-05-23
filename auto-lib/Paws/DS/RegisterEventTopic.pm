
package Paws::DS::RegisterEventTopic;
  use Moose;
  has DirectoryId => (is => 'ro', isa => 'Str', required => 1);
  has TopicName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RegisterEventTopic');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DS::RegisterEventTopicResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DS::RegisterEventTopic - Arguments for method RegisterEventTopic on L<Paws::DS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RegisterEventTopic on the
L<AWS Directory Service|Paws::DS> service. Use the attributes of this class
as arguments to method RegisterEventTopic.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RegisterEventTopic.

=head1 SYNOPSIS

    my $ds = Paws->service('DS');
    my $RegisterEventTopicResult = $ds->RegisterEventTopic(
      DirectoryId => 'MyDirectoryId',
      TopicName   => 'MyTopicName',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ds/RegisterEventTopic>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DirectoryId => Str

The Directory ID that will publish status messages to the Amazon SNS
topic.



=head2 B<REQUIRED> TopicName => Str

The Amazon SNS topic name to which the directory will publish status
messages. This Amazon SNS topic must be in the same region as the
specified Directory ID.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RegisterEventTopic in L<Paws::DS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

