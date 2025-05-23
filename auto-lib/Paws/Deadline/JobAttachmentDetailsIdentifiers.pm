# Generated by default/object.tt
package Paws::Deadline::JobAttachmentDetailsIdentifiers;
  use Moose;
  has JobId => (is => 'ro', isa => 'Str', request_name => 'jobId', traits => ['NameInRequest'], required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::Deadline::JobAttachmentDetailsIdentifiers

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Deadline::JobAttachmentDetailsIdentifiers object:

  $service_obj->Method(Att1 => { JobId => $value, ..., JobId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Deadline::JobAttachmentDetailsIdentifiers object:

  $result = $service_obj->Method(...);
  $result->Att1->JobId

=head1 DESCRIPTION

Identifier details for job attachments.

=head1 ATTRIBUTES


=head2 B<REQUIRED> JobId => Str

The job ID.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Deadline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

