
package Paws::ApplicationMigration::UpdateWave;
  use Moose;
  has AccountID => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'accountID');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name');
  has WaveID => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'waveID', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateWave');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/UpdateWave');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ApplicationMigration::Wave');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApplicationMigration::UpdateWave - Arguments for method UpdateWave on L<Paws::ApplicationMigration>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateWave on the
L<Application Migration Service|Paws::ApplicationMigration> service. Use the attributes of this class
as arguments to method UpdateWave.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateWave.

=head1 SYNOPSIS

    my $mgn = Paws->service('ApplicationMigration');
    my $Wave = $mgn->UpdateWave(
      WaveID      => 'MyWaveID',
      AccountID   => 'MyAccountID',          # OPTIONAL
      Description => 'MyWaveDescription',    # OPTIONAL
      Name        => 'MyWaveName',           # OPTIONAL
    );

    # Results:
    my $Arn                  = $Wave->Arn;
    my $CreationDateTime     = $Wave->CreationDateTime;
    my $Description          = $Wave->Description;
    my $IsArchived           = $Wave->IsArchived;
    my $LastModifiedDateTime = $Wave->LastModifiedDateTime;
    my $Name                 = $Wave->Name;
    my $Tags                 = $Wave->Tags;
    my $WaveAggregatedStatus = $Wave->WaveAggregatedStatus;
    my $WaveID               = $Wave->WaveID;

    # Returns a L<Paws::ApplicationMigration::Wave> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mgn/UpdateWave>

=head1 ATTRIBUTES


=head2 AccountID => Str

Account ID.



=head2 Description => Str

Wave description.



=head2 Name => Str

Wave name.



=head2 B<REQUIRED> WaveID => Str

Wave ID.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateWave in L<Paws::ApplicationMigration>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

