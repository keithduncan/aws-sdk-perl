# Generated by default/object.tt
package Paws::GuardDuty::ResourceData;
  use Moose;
  has AccessKey => (is => 'ro', isa => 'Paws::GuardDuty::AccessKey', request_name => 'accessKey', traits => ['NameInRequest']);
  has Ec2Instance => (is => 'ro', isa => 'Paws::GuardDuty::Ec2Instance', request_name => 'ec2Instance', traits => ['NameInRequest']);
  has Ec2NetworkInterface => (is => 'ro', isa => 'Paws::GuardDuty::Ec2NetworkInterface', request_name => 'ec2NetworkInterface', traits => ['NameInRequest']);
  has S3Bucket => (is => 'ro', isa => 'Paws::GuardDuty::S3Bucket', request_name => 's3Bucket', traits => ['NameInRequest']);
  has S3Object => (is => 'ro', isa => 'Paws::GuardDuty::S3Object', request_name => 's3Object', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::GuardDuty::ResourceData

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::GuardDuty::ResourceData object:

  $service_obj->Method(Att1 => { AccessKey => $value, ..., S3Object => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::GuardDuty::ResourceData object:

  $result = $service_obj->Method(...);
  $result->Att1->AccessKey

=head1 DESCRIPTION

Contains information about the Amazon Web Services resource that is
associated with the activity that prompted GuardDuty to generate a
finding.

=head1 ATTRIBUTES


=head2 AccessKey => L<Paws::GuardDuty::AccessKey>

Contains information about the IAM access key details of a user that
involved in the GuardDuty finding.


=head2 Ec2Instance => L<Paws::GuardDuty::Ec2Instance>

Contains information about the Amazon EC2 instance.


=head2 Ec2NetworkInterface => L<Paws::GuardDuty::Ec2NetworkInterface>

Contains information about the elastic network interface of the Amazon
EC2 instance.


=head2 S3Bucket => L<Paws::GuardDuty::S3Bucket>

Contains information about the Amazon S3 bucket.


=head2 S3Object => L<Paws::GuardDuty::S3Object>

Contains information about the Amazon S3 object.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::GuardDuty>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

