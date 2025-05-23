# Generated by default/object.tt
package Paws::CloudWatchLogs::CopyValueEntry;
  use Moose;
  has OverwriteIfExists => (is => 'ro', isa => 'Bool', request_name => 'overwriteIfExists', traits => ['NameInRequest']);
  has Source => (is => 'ro', isa => 'Str', request_name => 'source', traits => ['NameInRequest'], required => 1);
  has Target => (is => 'ro', isa => 'Str', request_name => 'target', traits => ['NameInRequest'], required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchLogs::CopyValueEntry

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudWatchLogs::CopyValueEntry object:

  $service_obj->Method(Att1 => { OverwriteIfExists => $value, ..., Target => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudWatchLogs::CopyValueEntry object:

  $result = $service_obj->Method(...);
  $result->Att1->OverwriteIfExists

=head1 DESCRIPTION

This object defines one value to be copied with the copyValue
(https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CloudWatch-Logs-Transformation.html#CloudWatch-Logs-Transformation-copoyValue)
processor.

=head1 ATTRIBUTES


=head2 OverwriteIfExists => Bool

Specifies whether to overwrite the value if the destination key already
exists. If you omit this, the default is C<false>.


=head2 B<REQUIRED> Source => Str

The key to copy.


=head2 B<REQUIRED> Target => Str

The key of the field to copy the value to.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudWatchLogs>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

