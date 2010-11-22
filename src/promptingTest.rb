class RubyPromptingTestInstance
  def initialize(args)
    @coreletDir = args['corelet_dir'];
  end

  def SimplePrompt(trans, args) 
    path = File.join(@coreletDir, "dialogs", "simple_dialog", "index.html");
    trans.prompt(path, args) { |resp| trans.complete(resp) }
  end

  def ComplexReturnPrompt(trans, args) 
    path = File.join(@coreletDir, "dialogs", "complex_return", "index.html");
    trans.prompt(path, args) { |resp| trans.complete(resp) }
  end

  def EmbeddedLinksPrompt(trans, args) 
    path = File.join(@coreletDir, "dialogs", "embedded_links", "index.html");
    trans.prompt(path, args) { |resp| trans.complete(resp) }
  end
end


rubyCoreletDefinition = {
  'class' => "RubyPromptingTestInstance",
  'name' => "PromptingTest",
  'major_version' => 0,
  'minor_version' => 1,  
  'micro_version' => 3,
  'documentation' => 'A corelet to prompt the user',
  'functions' =>
  [
   {
     'name' => 'SimplePrompt',
     'documentation' => "Display a simple yes/no prompt to the user.",
     'arguments' =>
     [
      {
        'name' => 'content',
        'type' => 'string',
        'documentation' => 'Text to display with the prompt',
        'required' => true
      }
     ]
   },
   {
     'name' => 'ComplexReturnPrompt',
     'documentation' => "Display a prompt with a complex return value.",
     'arguments' => [ ]
   },
   {
     'name' => 'EmbeddedLinksPrompt',
     'documentation' => "Display a prompt with embedded links.",
     'arguments' => [ ]
   }
  ]
}
