# Generated by default/object.tt
package Paws::QBusiness::Attachment;
  use Moose;
  has AttachmentId => (is => 'ro', isa => 'Str', request_name => 'attachmentId', traits => ['NameInRequest']);
  has ConversationId => (is => 'ro', isa => 'Str', request_name => 'conversationId', traits => ['NameInRequest']);
  has CopyFrom => (is => 'ro', isa => 'Paws::QBusiness::CopyFromSource', request_name => 'copyFrom', traits => ['NameInRequest']);
  has CreatedAt => (is => 'ro', isa => 'Str', request_name => 'createdAt', traits => ['NameInRequest']);
  has Error => (is => 'ro', isa => 'Paws::QBusiness::ErrorDetail', request_name => 'error', traits => ['NameInRequest']);
  has FileSize => (is => 'ro', isa => 'Int', request_name => 'fileSize', traits => ['NameInRequest']);
  has FileType => (is => 'ro', isa => 'Str', request_name => 'fileType', traits => ['NameInRequest']);
  has Md5chksum => (is => 'ro', isa => 'Str', request_name => 'md5chksum', traits => ['NameInRequest']);
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest']);
  has Status => (is => 'ro', isa => 'Str', request_name => 'status', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::QBusiness::Attachment

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::QBusiness::Attachment object:

  $service_obj->Method(Att1 => { AttachmentId => $value, ..., Status => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::QBusiness::Attachment object:

  $result = $service_obj->Method(...);
  $result->Att1->AttachmentId

=head1 DESCRIPTION

An attachment in an Amazon Q Business conversation.

=head1 ATTRIBUTES


=head2 AttachmentId => Str

The identifier of the Amazon Q Business attachment.


=head2 ConversationId => Str

The identifier of the Amazon Q Business conversation the attachment is
associated with.


=head2 CopyFrom => L<Paws::QBusiness::CopyFromSource>

A CopyFromSource containing a reference to the original source of the
Amazon Q Business attachment.


=head2 CreatedAt => Str

The Unix timestamp when the Amazon Q Business attachment was created.


=head2 Error => L<Paws::QBusiness::ErrorDetail>

ErrorDetail providing information about a Amazon Q Business attachment
error.


=head2 FileSize => Int

Size in bytes of the Amazon Q Business attachment.


=head2 FileType => Str

Filetype of the Amazon Q Business attachment.


=head2 Md5chksum => Str

MD5 checksum of the Amazon Q Business attachment contents.


=head2 Name => Str

Filename of the Amazon Q Business attachment.


=head2 Status => Str

AttachmentStatus of the Amazon Q Business attachment.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::QBusiness>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

