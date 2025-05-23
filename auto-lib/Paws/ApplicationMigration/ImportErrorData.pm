# Generated by default/object.tt
package Paws::ApplicationMigration::ImportErrorData;
  use Moose;
  has AccountID => (is => 'ro', isa => 'Str', request_name => 'accountID', traits => ['NameInRequest']);
  has ApplicationID => (is => 'ro', isa => 'Str', request_name => 'applicationID', traits => ['NameInRequest']);
  has Ec2LaunchTemplateID => (is => 'ro', isa => 'Str', request_name => 'ec2LaunchTemplateID', traits => ['NameInRequest']);
  has RawError => (is => 'ro', isa => 'Str', request_name => 'rawError', traits => ['NameInRequest']);
  has RowNumber => (is => 'ro', isa => 'Int', request_name => 'rowNumber', traits => ['NameInRequest']);
  has SourceServerID => (is => 'ro', isa => 'Str', request_name => 'sourceServerID', traits => ['NameInRequest']);
  has WaveID => (is => 'ro', isa => 'Str', request_name => 'waveID', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::ApplicationMigration::ImportErrorData

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ApplicationMigration::ImportErrorData object:

  $service_obj->Method(Att1 => { AccountID => $value, ..., WaveID => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ApplicationMigration::ImportErrorData object:

  $result = $service_obj->Method(...);
  $result->Att1->AccountID

=head1 DESCRIPTION

Import error data.

=head1 ATTRIBUTES


=head2 AccountID => Str

Import error data source account ID.


=head2 ApplicationID => Str

Import error data application ID.


=head2 Ec2LaunchTemplateID => Str

Import error data ec2 LaunchTemplate ID.


=head2 RawError => Str

Import error data raw error.


=head2 RowNumber => Int

Import error data row number.


=head2 SourceServerID => Str

Import error data source server ID.


=head2 WaveID => Str

Import error data wave id.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ApplicationMigration>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

