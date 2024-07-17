local ls = require 'luasnip'

local snip = ls.snippet;
local text = ls.text_node;
local insert = ls.insert_node;

ls.add_snippets(nil, {
  all = {
    snip(
      {
        trig = 'struct-new'
      },
      {
        text('pub struct T'),
        insert(1),
        text({
          ' {', 
          '    ',
          '}',
          '',
          'impl T {',
          '    pub fn new() -> Self {',
          '        Self {',
          '            ',
          '        }',
          '    }',
          '}'
        }),
        insert(0),
      }
    )
  }
})
