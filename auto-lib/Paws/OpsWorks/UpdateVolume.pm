
package Paws::OpsWorks::UpdateVolume;
  use Moose;
  has MountPoint => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has VolumeId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateVolume');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OpsWorks::UpdateVolume - Arguments for method UpdateVolume on L<Paws::OpsWorks>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateVolume on the
L<AWS OpsWorks|Paws::OpsWorks> service. Use the attributes of this class
as arguments to method UpdateVolume.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateVolume.

=head1 SYNOPSIS

    my $opsworks = Paws->service('OpsWorks');
    $opsworks->UpdateVolume(
      VolumeId   => 'MyString',
      MountPoint => 'MyString',    # OPTIONAL
      Name       => 'MyString',    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/opsworks/UpdateVolume>

=head1 ATTRIBUTES


=head2 MountPoint => Str

The new mount point.



=head2 Name => Str

The new name. Volume names can be a maximum of 128 characters.



=head2 B<REQUIRED> VolumeId => Str

The volume ID.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateVolume in L<Paws::OpsWorks>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

