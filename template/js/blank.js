////////////
// todo/fix:
//   add hotkey shortcuts  for
//   - headlines, fulltext, snippets


function showHeadlines()
{
    // console.log( 'showHeadlines' );
    $( '.item' ).each( function() {
        closeItem( $(this) );
    });
}

function showSnippets() {
    $( '.item' ).each( function() {
        openItem( $(this) );
        showItemSnippet( $(this) );
    });
    
    // todo: set opacity 1.0 and 0.25 for all others!!!
    //  or set active
}


function onCloseItem() {
  // console.log( 'onCloseItem' );
  var $item = $(this).closest( '.item' );
  closeItem( $item );
}

function onOpenItem() {
  // console.log( 'onOpenItem' );
  var $item = $(this).closest( '.item' );
  openItem( $item );
}


function showItemSnippet( $item ) // alias - hideItemFullText
{
  $item.find( '.item-snippet' ).show();
}

function hideItemSnippet( $item )  // alias - showItemFullText
{
  $item.find( '.item-snippet' ).hide();
}


function closeItem( $item ) {
  $item.find( '.item-body' ).hide();

  $item.find( '.item-close' ).hide();
  $item.find( '.item-open' ).show();
}

function openItem( $item ) {
  $item.find( '.item-body' ).show();

  $item.find( '.item-close' ).show();
  $item.find( '.item-open' ).hide();
}



$(document).ready( function() {
  $( '#show-headlines' ).click( showHeadlines );
  $( '#show-snippets' ).click( showSnippets );

  $( '.item-close,.item-collapse' ).click( onCloseItem );
  $( '.item-open,.item-expand' ).click( onOpenItem );
});

