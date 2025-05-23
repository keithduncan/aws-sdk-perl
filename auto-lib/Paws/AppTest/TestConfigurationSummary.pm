# Generated by default/object.tt
package Paws::AppTest::TestConfigurationSummary;
  use Moose;
  has CreationTime => (is => 'ro', isa => 'Str', request_name => 'creationTime', traits => ['NameInRequest'], required => 1);
  has LastUpdateTime => (is => 'ro', isa => 'Str', request_name => 'lastUpdateTime', traits => ['NameInRequest'], required => 1);
  has LatestVersion => (is => 'ro', isa => 'Int', request_name => 'latestVersion', traits => ['NameInRequest'], required => 1);
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest'], required => 1);
  has Status => (is => 'ro', isa => 'Str', request_name => 'status', traits => ['NameInRequest'], required => 1);
  has StatusReason => (is => 'ro', isa => 'Str', request_name => 'statusReason', traits => ['NameInRequest']);
  has TestConfigurationArn => (is => 'ro', isa => 'Str', request_name => 'testConfigurationArn', traits => ['NameInRequest'], required => 1);
  has TestConfigurationId => (is => 'ro', isa => 'Str', request_name => 'testConfigurationId', traits => ['NameInRequest'], required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::AppTest::TestConfigurationSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AppTest::TestConfigurationSummary object:

  $service_obj->Method(Att1 => { CreationTime => $value, ..., TestConfigurationId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AppTest::TestConfigurationSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->CreationTime

=head1 DESCRIPTION

Specifies a test configuration summary.

=head1 ATTRIBUTES


=head2 B<REQUIRED> CreationTime => Str

The creation time of the test configuration summary.


=head2 B<REQUIRED> LastUpdateTime => Str

The last update time of the test configuration summary.


=head2 B<REQUIRED> LatestVersion => Int

The latest version of the test configuration summary.


=head2 B<REQUIRED> Name => Str

The name of the test configuration summary.


=head2 B<REQUIRED> Status => Str

The status of the test configuration summary.


=head2 StatusReason => Str

The status reason of the test configuration summary.


=head2 B<REQUIRED> TestConfigurationArn => Str

The test configuration ARN of the test configuration summary.


=head2 B<REQUIRED> TestConfigurationId => Str

The test configuration ID of the test configuration summary.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AppTest>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

