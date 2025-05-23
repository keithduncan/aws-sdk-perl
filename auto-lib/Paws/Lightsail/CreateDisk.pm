
package Paws::Lightsail::CreateDisk;
  use Moose;
  has AddOns => (is => 'ro', isa => 'ArrayRef[Paws::Lightsail::AddOnRequest]', traits => ['NameInRequest'], request_name => 'addOns' );
  has AvailabilityZone => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'availabilityZone' , required => 1);
  has DiskName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'diskName' , required => 1);
  has SizeInGb => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'sizeInGb' , required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::Lightsail::Tag]', traits => ['NameInRequest'], request_name => 'tags' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateDisk');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Lightsail::CreateDiskResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::CreateDisk - Arguments for method CreateDisk on L<Paws::Lightsail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateDisk on the
L<Amazon Lightsail|Paws::Lightsail> service. Use the attributes of this class
as arguments to method CreateDisk.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateDisk.

=head1 SYNOPSIS

    my $lightsail = Paws->service('Lightsail');
    my $CreateDiskResult = $lightsail->CreateDisk(
      AvailabilityZone => 'MyNonEmptyString',
      DiskName         => 'MyResourceName',
      SizeInGb         => 1,
      AddOns           => [
        {
          AddOnType =>
            'AutoSnapshot',    # values: AutoSnapshot, StopInstanceOnIdle
          AutoSnapshotAddOnRequest => {
            SnapshotTimeOfDay => 'MyTimeOfDay',    # OPTIONAL
          },    # OPTIONAL
          StopInstanceOnIdleRequest => {
            Duration  => 'Mystring',    # OPTIONAL
            Threshold => 'Mystring',    # OPTIONAL
          },    # OPTIONAL
        },
        ...
      ],    # OPTIONAL
      Tags => [
        {
          Key   => 'MyTagKey',      # OPTIONAL
          Value => 'MyTagValue',    # OPTIONAL
        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $Operations = $CreateDiskResult->Operations;

    # Returns a L<Paws::Lightsail::CreateDiskResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lightsail/CreateDisk>

=head1 ATTRIBUTES


=head2 AddOns => ArrayRef[L<Paws::Lightsail::AddOnRequest>]

An array of objects that represent the add-ons to enable for the new
disk.



=head2 B<REQUIRED> AvailabilityZone => Str

The Availability Zone where you want to create the disk
(C<us-east-2a>). Use the same Availability Zone as the Lightsail
instance to which you want to attach the disk.

Use the C<get regions> operation to list the Availability Zones where
Lightsail is currently available.



=head2 B<REQUIRED> DiskName => Str

The unique Lightsail disk name (C<my-disk>).



=head2 B<REQUIRED> SizeInGb => Int

The size of the disk in GB (C<32>).



=head2 Tags => ArrayRef[L<Paws::Lightsail::Tag>]

The tag keys and optional values to add to the resource during create.

Use the C<TagResource> action to tag a resource after it's created.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateDisk in L<Paws::Lightsail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

