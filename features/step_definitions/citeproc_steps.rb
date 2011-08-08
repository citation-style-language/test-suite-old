
Given /^(?:the )?following style:?$/ do |style|
  @options[:style] = style
end

When /^I process the following items:$/ do |items|
  processor = CiteProc::Processor.new(@options)
  MultiJson.decode(items, :symbolize_keys => true).each do |item|
    processor.items[item[:id].to_sym] = item
  end

  processor.engine.update_items(items.map { |i| i[:id].to_sym })
  @result = processor.bibliography
  # @result = processor.engine.process(items.map { |i| i[:id] })
end

Then /^the result should be:$/ do |expected|
  @result.should == expected
end