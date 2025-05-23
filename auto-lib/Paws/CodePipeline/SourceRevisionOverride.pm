# Generated by default/object.tt
package Paws::CodePipeline::SourceRevisionOverride;
  use Moose;
  has ActionName => (is => 'ro', isa => 'Str', request_name => 'actionName', traits => ['NameInRequest'], required => 1);
  has RevisionType => (is => 'ro', isa => 'Str', request_name => 'revisionType', traits => ['NameInRequest'], required => 1);
  has RevisionValue => (is => 'ro', isa => 'Str', request_name => 'revisionValue', traits => ['NameInRequest'], required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::CodePipeline::SourceRevisionOverride

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodePipeline::SourceRevisionOverride object:

  $service_obj->Method(Att1 => { ActionName => $value, ..., RevisionValue => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodePipeline::SourceRevisionOverride object:

  $result = $service_obj->Method(...);
  $result->Att1->ActionName

=head1 DESCRIPTION

A list that allows you to specify, or override, the source revision for
a pipeline execution that's being started. A source revision is the
version with all the changes to your application code, or source
artifact, for the pipeline execution.

For the C<S3_OBJECT_VERSION_ID> and C<S3_OBJECT_KEY> types of source
revisions, either of the types can be used independently, or they can
be used together to override the source with a specific ObjectKey and
VersionID.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ActionName => Str

The name of the action where the override will be applied.


=head2 B<REQUIRED> RevisionType => Str

The type of source revision, based on the source provider. For example,
the revision type for the CodeCommit action provider is the commit ID.


=head2 B<REQUIRED> RevisionValue => Str

The source revision, or version of your source artifact, with the
changes that you want to run in the pipeline execution.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodePipeline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

