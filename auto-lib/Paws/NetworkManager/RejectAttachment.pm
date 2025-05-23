
package Paws::NetworkManager::RejectAttachment;
  use Moose;
  has AttachmentId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'attachmentId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RejectAttachment');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/attachments/{attachmentId}/reject');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::NetworkManager::RejectAttachmentResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NetworkManager::RejectAttachment - Arguments for method RejectAttachment on L<Paws::NetworkManager>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RejectAttachment on the
L<AWS Network Manager|Paws::NetworkManager> service. Use the attributes of this class
as arguments to method RejectAttachment.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RejectAttachment.

=head1 SYNOPSIS

    my $networkmanager = Paws->service('NetworkManager');
    my $RejectAttachmentResponse = $networkmanager->RejectAttachment(
      AttachmentId => 'MyAttachmentId',

    );

    # Results:
    my $Attachment = $RejectAttachmentResponse->Attachment;

    # Returns a L<Paws::NetworkManager::RejectAttachmentResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/networkmanager/RejectAttachment>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AttachmentId => Str

The ID of the attachment.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RejectAttachment in L<Paws::NetworkManager>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

