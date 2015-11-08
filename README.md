# MeSH-pl
### Uczestnicy:
Maciej Kaczor, 106617, maciej.kaczor92@gmail.com

Agnieszka Szulc, 106526, agnieszka.szulc@student.put.poznan.pl

### Opis projektu:

Aplikacja MeSH-pl jest aplikacją desktopową. Jej głównym zadaniem jest indeksowanie i wyszukiwanie w tekście pojęć ze słownika MeSH.pl  Użytkownik może wprowadzić do aplikacji adres URL strony którą chce zaindeksować. Program przeszukuje tekst zawarty na stronie www po czym indeksuje witrynę razem ze znalezionymi słowami kluczowymi. Użytkownik może też wprowadzać własne słowa kluczowe do wyszukiwania oraz przeglądać bazę danych w poszukiwaniu zaindeksowanych już stron i terminów. Aplikacja może zostać wykorzystana na przykład jako lokalna baza artykułów powiązanych z określonymi dziedzinami medycznymi.

### Założona funkcjonalność po pierwszym etapie:
- Przyjmowanie adresu URL - użytkownik wprowadza adres strony/artykułu który chce zaindeksować
- Przeglądanie strony w poszukiwaniu słów kluczowych - aplikacja przegląda podaną przez użytkownika stronę w poszukiwaniu słów kluczowych zawartych w bazie
- Indeksowanie adresów URL - aplikacja indeksuje stronę za pomocą wszystkich odnalezionych na niej słów kluczowych
- Przeglądanie bazy stron - użytkownik ma możliwość przeglądania całej bazy zaindeksowanych stron wraz ze słowami kluczowymi.

### Zakładana funkcjonalność wersji końcowej:
- Sortowanie i wyszukiwanie wyników - użytkownik może przeszukiwać bazę danych pod kątem konkretnych słów kluczowych oraz sortować wyniki według wskazanych kryteriów
- Wprowadzanie nowych terminów - użytkownik może wprowadzić do bazy słów kluczowych nowe terminy, które będą uwzględniane przy przeszukiwaniu kolejnych witryn

### Opis architektury:
Aplikacja Internetowa będzie, zgodnie ze standardem, podzielona na dwie główne części: back-end i front-end. Back-end to, patrząc całościowo, model aplikacji. Do niego należy zarządzanie bazą danych, w tym wyszukiwanie haseł i zwracanie wyników, oraz główna część aplikacji, czyli przeglądanie stron internetowych w poszukiwaniu słów kluczowych oraz indeksowanie wprowadzanych adresów.
Front-end pełni rolę zarówno widoku jak i kontrolera. Wyświetla użytkownikowi dane otrzymane z części połączonej z bazą danych, ale też pośredniczy w komunikacji między człowiekiem a serwerem aplikacji.
Główną częścią back-endu, poza bazą danych, będą skrypty pisane w Ruby on Rails odpowiadające za połączenie z bazą danych, zarządzanie nią, wyszukiwanie w niej treści oraz ich dodawanie, usuwanie i modyfikacje oraz przekazywanie wyników w formie API.
Front-end to JavaScript wraz z frameworkami jQuery i Angular.js które będą pełnić zarówno opcję pośrednika między Railsowym zapleczem a widokiem, którego podstawę będzie tworzyłą strona WWW wykonana za pomocą technologii HTML5 i CSS3.
### Podział zadań w zespole:

#### Agnieszka Szulc:
- Projekt bazy danych
- Skrypty obsługujące bazę danych (dodawanie i usuwanie wpisów, wyszukiwanie w bazie danych)
- Szata graficzna aplikacji

#### Maciej Kaczor
- Skrypty przeszukujące i indeksujące
- Front-end aplikacji

### Środowisko realizacji:

#### Główne języki programowania:
- Ruby
- JavaScript
#### Wykorzystywane frameworki i biblioteki:
- Ruby on Rails
- Angular.js
- JQuery
- Solr
#### Wykorzystywane standardy:
- HTML5 i CSS3
- Wzorzec MVC/MVW

Ruby on Rails to zdobywający coraz większą popularność framework do tworzenia aplikacji webowych. W połączeniu z Solr - wydajnym silnikiem wyszukującym, stanowi dobry wybór dla aplikacji opartej na modelu MVC/MVW. Angular.js to framework wspomagający tworzenie dynamicznych stron www, a jQuery to niemal standardowa już biblioteka JavaScript ułatwiająca manipulacje modelem DOM. Wszystkie te technologie wspierają tworzenie w modelu MVC.

### Przewidywane trudności:
- lematyzacja słów kluczowych, tak samo obecnych w bazie od początku, jak i dodawanych przez użytkownika
- możliwe problemy wydajnościowe przy dużej bazie słów kluczowych
- połączenie serwerowej części aplikacji z jej wizualizacją w spójny i przejrzysty sposób

