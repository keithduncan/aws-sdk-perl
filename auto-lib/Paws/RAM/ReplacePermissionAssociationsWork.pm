# Generated by default/object.tt
package Paws::RAM::ReplacePermissionAssociationsWork;
  use Moose;
  has CreationTime => (is => 'ro', isa => 'Str', request_name => 'creationTime', traits => ['NameInRequest']);
  has FromPermissionArn => (is => 'ro', isa => 'Str', request_name => 'fromPermissionArn', traits => ['NameInRequest']);
  has FromPermissionVersion => (is => 'ro', isa => 'Str', request_name => 'fromPermissionVersion', traits => ['NameInRequest']);
  has Id => (is => 'ro', isa => 'Str', request_name => 'id', traits => ['NameInRequest']);
  has LastUpdatedTime => (is => 'ro', isa => 'Str', request_name => 'lastUpdatedTime', traits => ['NameInRequest']);
  has Status => (is => 'ro', isa => 'Str', request_name => 'status', traits => ['NameInRequest']);
  has StatusMessage => (is => 'ro', isa => 'Str', request_name => 'statusMessage', traits => ['NameInRequest']);
  has ToPermissionArn => (is => 'ro', isa => 'Str', request_name => 'toPermissionArn', traits => ['NameInRequest']);
  has ToPermissionVersion => (is => 'ro', isa => 'Str', request_name => 'toPermissionVersion', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::RAM::ReplacePermissionAssociationsWork

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::RAM::ReplacePermissionAssociationsWork object:

  $service_obj->Method(Att1 => { CreationTime => $value, ..., ToPermissionVersion => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::RAM::ReplacePermissionAssociationsWork object:

  $result = $service_obj->Method(...);
  $result->Att1->CreationTime

=head1 DESCRIPTION

A structure that represents the background work that RAM performs when
you invoke the ReplacePermissionAssociations operation.

=head1 ATTRIBUTES


=head2 CreationTime => Str

The date and time when this asynchronous background task was created.


=head2 FromPermissionArn => Str

The Amazon Resource Name (ARN)
(https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html)
of the managed permission that this background task is replacing.


=head2 FromPermissionVersion => Str

The version of the managed permission that this background task is
replacing.


=head2 Id => Str

The unique identifier for the background task associated with one
ReplacePermissionAssociations request.


=head2 LastUpdatedTime => Str

The date and time when the status of this background task was last
updated.


=head2 Status => Str

Specifies the current status of the background tasks for the specified
ID. The output is one of the following strings:

=over

=item *

C<IN_PROGRESS>

=item *

C<COMPLETED>

=item *

C<FAILED>

=back



=head2 StatusMessage => Str

Specifies the reason for a C<FAILED> status. This field is present only
when there C<status> is C<FAILED>.


=head2 ToPermissionArn => Str

The ARN of the managed permission that this background task is
associating with the resource shares in place of the managed permission
and version specified in C<fromPermissionArn> and
C<fromPermissionVersion>.


=head2 ToPermissionVersion => Str

The version of the managed permission that this background task is
associating with the resource shares. This is always the version that
is currently the default for this managed permission.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::RAM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

