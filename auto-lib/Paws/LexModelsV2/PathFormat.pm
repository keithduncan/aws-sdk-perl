# Generated by default/object.tt
package Paws::LexModelsV2::PathFormat;
  use Moose;
  has ObjectPrefixes => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'objectPrefixes', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModelsV2::PathFormat

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::LexModelsV2::PathFormat object:

  $service_obj->Method(Att1 => { ObjectPrefixes => $value, ..., ObjectPrefixes => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::LexModelsV2::PathFormat object:

  $result = $service_obj->Method(...);
  $result->Att1->ObjectPrefixes

=head1 DESCRIPTION

The object that contains a path format that will be applied when Amazon
Lex reads the transcript file in the bucket you provide. Specify this
object if you only want Lex to read a subset of files in your Amazon S3
bucket.

=head1 ATTRIBUTES


=head2 ObjectPrefixes => ArrayRef[Str|Undef]

A list of Amazon S3 prefixes that points to sub-folders in the Amazon
S3 bucket. Specify this list if you only want Lex to read the files
under this set of sub-folders.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::LexModelsV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

