# Generated by default/object.tt
package Paws::Transfer::WorkflowStep;
  use Moose;
  has CopyStepDetails => (is => 'ro', isa => 'Paws::Transfer::CopyStepDetails');
  has CustomStepDetails => (is => 'ro', isa => 'Paws::Transfer::CustomStepDetails');
  has DecryptStepDetails => (is => 'ro', isa => 'Paws::Transfer::DecryptStepDetails');
  has DeleteStepDetails => (is => 'ro', isa => 'Paws::Transfer::DeleteStepDetails');
  has TagStepDetails => (is => 'ro', isa => 'Paws::Transfer::TagStepDetails');
  has Type => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Transfer::WorkflowStep

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Transfer::WorkflowStep object:

  $service_obj->Method(Att1 => { CopyStepDetails => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Transfer::WorkflowStep object:

  $result = $service_obj->Method(...);
  $result->Att1->CopyStepDetails

=head1 DESCRIPTION

The basic building block of a workflow.

=head1 ATTRIBUTES


=head2 CopyStepDetails => L<Paws::Transfer::CopyStepDetails>

Details for a step that performs a file copy.

Consists of the following values:

=over

=item *

A description

=item *

An Amazon S3 location for the destination of the file copy.

=item *

A flag that indicates whether to overwrite an existing file of the same
name. The default is C<FALSE>.

=back



=head2 CustomStepDetails => L<Paws::Transfer::CustomStepDetails>

Details for a step that invokes an Lambda function.

Consists of the Lambda function's name, target, and timeout (in
seconds).


=head2 DecryptStepDetails => L<Paws::Transfer::DecryptStepDetails>

Details for a step that decrypts an encrypted file.

Consists of the following values:

=over

=item *

A descriptive name

=item *

An Amazon S3 or Amazon Elastic File System (Amazon EFS) location for
the source file to decrypt.

=item *

An S3 or Amazon EFS location for the destination of the file
decryption.

=item *

A flag that indicates whether to overwrite an existing file of the same
name. The default is C<FALSE>.

=item *

The type of encryption that's used. Currently, only PGP encryption is
supported.

=back



=head2 DeleteStepDetails => L<Paws::Transfer::DeleteStepDetails>

Details for a step that deletes the file.


=head2 TagStepDetails => L<Paws::Transfer::TagStepDetails>

Details for a step that creates one or more tags.

You specify one or more tags. Each tag contains a key-value pair.


=head2 Type => Str

Currently, the following step types are supported.

=over

=item *

B<C<COPY> > - Copy the file to another location.

=item *

B<C<CUSTOM> > - Perform a custom step with an Lambda function target.

=item *

B<C<DECRYPT> > - Decrypt a file that was encrypted before it was
uploaded.

=item *

B<C<DELETE> > - Delete the file.

=item *

B<C<TAG> > - Add a tag to the file.

=back




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Transfer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

