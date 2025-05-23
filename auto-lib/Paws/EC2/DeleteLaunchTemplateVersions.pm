
package Paws::EC2::DeleteLaunchTemplateVersions;
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool');
  has LaunchTemplateId => (is => 'ro', isa => 'Str');
  has LaunchTemplateName => (is => 'ro', isa => 'Str');
  has Versions => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'LaunchTemplateVersion' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteLaunchTemplateVersions');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::DeleteLaunchTemplateVersionsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DeleteLaunchTemplateVersions - Arguments for method DeleteLaunchTemplateVersions on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteLaunchTemplateVersions on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method DeleteLaunchTemplateVersions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteLaunchTemplateVersions.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    # To delete a launch template version
    # This example deletes the specified launch template version.
    my $DeleteLaunchTemplateVersionsResult = $ec2->DeleteLaunchTemplateVersions(
      'LaunchTemplateId' => 'lt-0abcd290751193123',
      'Versions'         => [1]
    );

    # Results:
    my $SuccessfullyDeletedLaunchTemplateVersions =
      $DeleteLaunchTemplateVersionsResult
      ->SuccessfullyDeletedLaunchTemplateVersions;
    my $UnsuccessfullyDeletedLaunchTemplateVersions =
      $DeleteLaunchTemplateVersionsResult
      ->UnsuccessfullyDeletedLaunchTemplateVersions;

    # Returns a L<Paws::EC2::DeleteLaunchTemplateVersionsResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/DeleteLaunchTemplateVersions>

=head1 ATTRIBUTES


=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 LaunchTemplateId => Str

The ID of the launch template.

You must specify either the launch template ID or the launch template
name, but not both.



=head2 LaunchTemplateName => Str

The name of the launch template.

You must specify either the launch template ID or the launch template
name, but not both.



=head2 B<REQUIRED> Versions => ArrayRef[Str|Undef]

The version numbers of one or more launch template versions to delete.
You can specify up to 200 launch template version numbers.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteLaunchTemplateVersions in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

