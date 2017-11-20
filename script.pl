use strict;
use Quote;

my $phrase = "Baz";
my $author = "Foo";

my $quote1 = Quote->new();
my $quote2 = Quote->new();
$quote1->set_phrase($phrase);
$quote1->set_author($author);
$quote2->set_phrase($author);
$quote2->set_author($phrase);

print STDOUT $quote1->get_phrase(), "\n";
print STDOUT $quote1->get_author(), "\n";
print STDOUT ($quote1->is_approved() ? "Is not approved" : "Is approved"), "\n", "\n";

print STDOUT $quote2->get_phrase(), "\n";
print STDOUT $quote2->get_author(), "\n";
print STDOUT ($quote2->is_approved() ? "Is approved" : "Is not approved"), "\n";

exit 0;