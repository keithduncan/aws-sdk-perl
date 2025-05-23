# Generated by default/object.tt
package Paws::BackupGateway::VmwareTag;
  use Moose;
  has VmwareCategory => (is => 'ro', isa => 'Str');
  has VmwareTagDescription => (is => 'ro', isa => 'Str');
  has VmwareTagName => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::BackupGateway::VmwareTag

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::BackupGateway::VmwareTag object:

  $service_obj->Method(Att1 => { VmwareCategory => $value, ..., VmwareTagName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::BackupGateway::VmwareTag object:

  $result = $service_obj->Method(...);
  $result->Att1->VmwareCategory

=head1 DESCRIPTION

A VMware tag is a tag attached to a specific virtual machine. A tag
(https://docs.aws.amazon.com/aws-backup/latest/devguide/API_BGW_Tag.html)
is a key-value pair you can use to manage, filter, and search for your
resources.

The content of VMware tags can be matched to Amazon Web Services tags.

=head1 ATTRIBUTES


=head2 VmwareCategory => Str

The is the category of VMware.


=head2 VmwareTagDescription => Str

This is a user-defined description of a VMware tag.


=head2 VmwareTagName => Str

This is the user-defined name of a VMware tag.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::BackupGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

