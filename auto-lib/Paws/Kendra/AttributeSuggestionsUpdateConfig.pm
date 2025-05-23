# Generated by default/object.tt
package Paws::Kendra::AttributeSuggestionsUpdateConfig;
  use Moose;
  has AttributeSuggestionsMode => (is => 'ro', isa => 'Str');
  has SuggestableConfigList => (is => 'ro', isa => 'ArrayRef[Paws::Kendra::SuggestableConfig]');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Kendra::AttributeSuggestionsUpdateConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Kendra::AttributeSuggestionsUpdateConfig object:

  $service_obj->Method(Att1 => { AttributeSuggestionsMode => $value, ..., SuggestableConfigList => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Kendra::AttributeSuggestionsUpdateConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->AttributeSuggestionsMode

=head1 DESCRIPTION

Updates the configuration information for the document
fields/attributes that you want to base query suggestions on.

To deactivate using documents fields for query suggestions, set the
mode to C<INACTIVE>. You must also set C<SuggestionTypes> as either
C<QUERY> or C<DOCUMENT_ATTRIBUTES> and then call GetQuerySuggestions
(https://docs.aws.amazon.com/kendra/latest/dg/API_GetQuerySuggestions.html).
If you set to C<QUERY>, then Amazon Kendra uses the query history to
base suggestions on. If you set to C<DOCUMENT_ATTRIBUTES>, then Amazon
Kendra uses the contents of document fields to base suggestions on.

=head1 ATTRIBUTES


=head2 AttributeSuggestionsMode => Str

You can set the mode to C<ACTIVE> or C<INACTIVE>. You must also set
C<SuggestionTypes> as either C<QUERY> or C<DOCUMENT_ATTRIBUTES> and
then call GetQuerySuggestions
(https://docs.aws.amazon.com/kendra/latest/dg/API_GetQuerySuggestions.html).
If C<Mode> to use query history is set to C<ENABLED> when calling
UpdateQuerySuggestionsConfig
(https://docs.aws.amazon.com/kendra/latest/dg/API_UpdateQuerySuggestionsConfig.html)
and C<AttributeSuggestionsMode> to use fields/attributes is set to
C<ACTIVE>, and you haven't set your C<SuggestionTypes> preference to
C<DOCUMENT_ATTRIBUTES>, then Amazon Kendra uses the query history.


=head2 SuggestableConfigList => ArrayRef[L<Paws::Kendra::SuggestableConfig>]

The list of fields/attributes that you want to set as suggestible for
query suggestions.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Kendra>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

