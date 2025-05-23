# Generated by default/object.tt
package Paws::CloudWatchLogs::MoveKeys;
  use Moose;
  has Entries => (is => 'ro', isa => 'ArrayRef[Paws::CloudWatchLogs::MoveKeyEntry]', request_name => 'entries', traits => ['NameInRequest'], required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchLogs::MoveKeys

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudWatchLogs::MoveKeys object:

  $service_obj->Method(Att1 => { Entries => $value, ..., Entries => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudWatchLogs::MoveKeys object:

  $result = $service_obj->Method(...);
  $result->Att1->Entries

=head1 DESCRIPTION

This processor moves a key from one field to another. The original key
is deleted.

For more information about this processor including examples, see
moveKeys
(https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CloudWatch-Logs-Transformation.html#CloudWatch-Logs-Transformation-moveKeys)
in the I<CloudWatch Logs User Guide>.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Entries => ArrayRef[L<Paws::CloudWatchLogs::MoveKeyEntry>]

An array of objects, where each object contains the information about
one key to move.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudWatchLogs>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

