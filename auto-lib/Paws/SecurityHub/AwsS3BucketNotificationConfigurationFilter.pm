# Generated by default/object.tt
package Paws::SecurityHub::AwsS3BucketNotificationConfigurationFilter;
  use Moose;
  has S3KeyFilter => (is => 'ro', isa => 'Paws::SecurityHub::AwsS3BucketNotificationConfigurationS3KeyFilter');

1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::AwsS3BucketNotificationConfigurationFilter

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SecurityHub::AwsS3BucketNotificationConfigurationFilter object:

  $service_obj->Method(Att1 => { S3KeyFilter => $value, ..., S3KeyFilter => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SecurityHub::AwsS3BucketNotificationConfigurationFilter object:

  $result = $service_obj->Method(...);
  $result->Att1->S3KeyFilter

=head1 DESCRIPTION

Filtering information for the notifications. The filtering is based on
Amazon S3 key names.

=head1 ATTRIBUTES


=head2 S3KeyFilter => L<Paws::SecurityHub::AwsS3BucketNotificationConfigurationS3KeyFilter>

Details for an Amazon S3 filter.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SecurityHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

