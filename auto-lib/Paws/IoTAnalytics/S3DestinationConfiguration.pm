# Generated by default/object.tt
package Paws::IoTAnalytics::S3DestinationConfiguration;
  use Moose;
  has Bucket => (is => 'ro', isa => 'Str', request_name => 'bucket', traits => ['NameInRequest'], required => 1);
  has GlueConfiguration => (is => 'ro', isa => 'Paws::IoTAnalytics::GlueConfiguration', request_name => 'glueConfiguration', traits => ['NameInRequest']);
  has Key => (is => 'ro', isa => 'Str', request_name => 'key', traits => ['NameInRequest'], required => 1);
  has RoleArn => (is => 'ro', isa => 'Str', request_name => 'roleArn', traits => ['NameInRequest'], required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTAnalytics::S3DestinationConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoTAnalytics::S3DestinationConfiguration object:

  $service_obj->Method(Att1 => { Bucket => $value, ..., RoleArn => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoTAnalytics::S3DestinationConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->Bucket

=head1 DESCRIPTION

Configuration information for delivery of dataset contents to Amazon
Simple Storage Service (Amazon S3).

=head1 ATTRIBUTES


=head2 B<REQUIRED> Bucket => Str

The name of the S3 bucket to which dataset contents are delivered.


=head2 GlueConfiguration => L<Paws::IoTAnalytics::GlueConfiguration>

Configuration information for coordination with Glue, a fully managed
extract, transform and load (ETL) service.


=head2 B<REQUIRED> Key => Str

The key of the dataset contents object in an S3 bucket. Each object has
a key that is a unique identifier. Each object has exactly one key.

You can create a unique key with the following options:

=over

=item *

Use C<!{iotanalytics:scheduleTime}> to insert the time of a scheduled
SQL query run.

=item *

Use C<!{iotanalytics:versionId}> to insert a unique hash that
identifies a dataset content.

=item *

Use C<!{iotanalytics:creationTime}> to insert the creation time of a
dataset content.

=back

The following example creates a unique key for a CSV file:
C<dataset/mydataset/!{iotanalytics:scheduleTime}/!{iotanalytics:versionId}.csv>

If you don't use C<!{iotanalytics:versionId}> to specify the key, you
might get duplicate keys. For example, you might have two dataset
contents with the same C<scheduleTime> but different C<versionId>s.
This means that one dataset content overwrites the other.


=head2 B<REQUIRED> RoleArn => Str

The ARN of the role that grants IoT Analytics permission to interact
with your Amazon S3 and Glue resources.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoTAnalytics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

