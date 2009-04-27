
class TestClass
   attr_accessor :x
   attr_accessor :y
   def initialize(x_, y_)
   @x = x_
   @y = y_
   end

end
class FieldNode
  attr_accessor :parent
  attr_accessor :all_children
  attr_accessor :current_children
  attr_accessor :name
  attr_accessor :key
 
  attr_accessor :id

  
  def initialize(parent_, name_, key_)
    @parent = parent_
    @all_children = []
    @current_children = []
    @name = name_
    @key =  key_    
    @id = @@next_id
    @@next_id = @@next_id + 1;
  end
  def self.Reset()
    @@next_id = 0;
  end
end
# To change this template, choose Tools | Templates
# and open the template in the editor.
class SearchField
  include PeopleHelper
  attr_accessor :header
  attr_accessor :id
  attr_accessor :full_name
  attr_accessor :qualifier
  attr_accessor :search_token
  attr_accessor :eval
  attr_accessor :data_type
  attr_accessor :current_filter_string
  attr_accessor :class_override
  attr_accessor :tag
  attr_accessor :include_index
  attr_accessor :table_name
  attr_accessor :attribute_name
  attr_accessor :field_node
  def initialize(field_string, qualifer_string,  eval_string, search_token, include_index_val, data_type_symbol, tag_symbol, id_val, table_name_str, attribute_name_, field_node_)
    @header =field_string
    @qualifier =  qualifer_string
    @full_name = "#{qualifer_string}/#{field_string}"
    @tag = tag_symbol
    @eval = eval_string
    @search_token = search_token
    @include_index = include_index_val
    @data_type = data_type_symbol
    @current_filter_string = "%"
    @class_override = "" #this is so that the select column stands out. - I'm not sure this is necessary.
    @id = id_val
    @table_name = table_name_str
    @attribute_name = attribute_name_
    @field_node = field_node_
   # TestSQLString()
  end
  def TestSQLString()
    @data_type = :integer
    @current_filter_string = ",, ,- 35 ABC aBVdE51 , 3 . 4.. -65 , 7-.. 8 ,9 3 ...9"
    str = GetSQLString();
    @data_type = :integer
    @current_filter_string = "21, 3, -43"
    str = GetSQLString();
    @data_type = :integer
    @current_filter_string = "-24..4"
    str = GetSQLString();
    @data_type = :integer
    @current_filter_string = "%"
    str = GetSQLString();
    @current_filter_string = ""
    str = GetSQLString();

    @data_type = :time
    @current_filter_string = ",4:20 , ,3:90 ABC 85 , 3:40 . 4:20.. 6 2 4, 7.. 8:40 ,9 82:90 3 : 52 ...9"
    str = GetSQLString();
    @data_type = :time
    @current_filter_string = "4:20 , 5, 3:30"
    str = GetSQLString();
    @data_type = :time
    @current_filter_string = "4:20..19:30"
    str = GetSQLString();

    @data_type = :timestamp
    @current_filter_string = ",4-12-20 , ,1973-11 ABC 85 , 3 -02- 240 . 09-8-20.. 16-7 - 3 2-3 4-5, 1997-8.. 98-01-7 40-7-7 ,9-8-1 82-90-60 3 : 52 ...9"
    str = GetSQLString();
    @data_type = :timestamp
    @current_filter_string = "4-12-20 , 2005, 3-2"
    str = GetSQLString();
    @data_type = :timestamp
    @current_filter_string = " 4-12-20.. 2005-11-19"
    str = GetSQLString();

    @data_type = :boolean
    @current_filter_string = 0;
    str = GetSQLString();
    @date_type = :boolean
    @current_filter_string = 1;
    str = GetSQLString();

    @data_type = :string
    @current_filter_string = "%a-6% danx"
    str = GetSQLString();

  end
  def GetSQLString
    case @data_type
    when :integer
      ret_val = ParseIntegerStr()      
    when :time
      ret_val = ParseTimeStr()

    when :timestamp
      ret_val = ParseTimeStampStr()
    when :boolean
      ret_val = ParseBooleanStr()
    when :string, :text
      ret_val = ParseTextStr()      
    else
      ret_val = ""
    end
    return  ret_val
  end
  
  def ParseIntegerStr()
    ret_val = ""
    the_orig_str = @current_filter_string

    trimmed_str = @current_filter_string.gsub(/([A-Z]|[a-z])/,' ')
    trimmed_str = trimmed_str.gsub(/-\s+/,'-')
    trimmed_str =trimmed_str.gsub(/(?:^\s+)|(?:\s+$)/,'')
   
    trimmed_str = trimmed_str.gsub(/\d\s+(\d|-)/){|s| s=s.gsub(/\s+/,',')  }
    trimmed_str = trimmed_str.gsub(/\s+/,'')
    
    
    
    trimmed_str = trimmed_str.gsub(/\.{2,}/,'..')
    trimmed_str = trimmed_str.gsub(/\,+/,',')
    trimmed_str = trimmed_str.gsub(/-+/,'-')
    trimmed_str =trimmed_str.gsub(/(?:^,+)|(?:,+$)|(?:^\.+)|(?:\.+$)/,'')
    trimmed_str =trimmed_str.gsub(/\d\.-*\d/){|s| s = s.gsub(/\./, ',')}
     scanner = StringScanner.new(trimmed_str );
   matched_or_str = [];
  # scan_match =  scanner.scan(/\.^-*[0-9]+,/)
  # while scan_match !=nil do
   #  matched_or_str << scan_match;
  #   scan_match = scanner.scan(/\.^-*[0-9]+,/)
  # end

   # matched_or_str = trimmed_str.scan(/\.^-*[0-9]+,/);
  #  matched_or_str = trimmed_str.scan(/[^\.]-*[0-9]+,/);
  #  matched_or_str << trimmed_str.match(/,-*[0-9]+/);
    
    matched_ranges =  trimmed_str.scan(/-*[0-9]+\.{2}-*[0-9]+/);
    for range in matched_ranges
      reg_exp = Regexp.new(range);
      trimmed_str = trimmed_str.gsub(reg_exp, '')
    end
 
     matched_or_str = trimmed_str.scan(/-*[0-9]+/);
    
  
    num_matched_ors = matched_or_str.length
    if matched_or_str.length >0
      ret_val = "("

      for or_str in matched_or_str[0, num_matched_ors-1]
        or_str = or_str.gsub(/,/,'')
        ret_val = ret_val + "#{@search_token} = #{or_str} OR "
      end
      final_or = matched_or_str[num_matched_ors-1]
      final_or = final_or.gsub(/,/,'')
      ret_val = ret_val + "#{@search_token} = #{final_or})"
    end
    num_matched_ranges = matched_ranges.length
    if num_matched_ranges >0
      if num_matched_ors > 0
        ret_val = ret_val + " OR "
      end

      for matched_range in matched_ranges[0,num_matched_ranges -1]
        int_a = matched_range.match(/^-*\d+/);
        int_b = matched_range.match(/-*\d+$/);
        ret_val = ret_val + "( #{@search_token} BETWEEN #{int_a} AND #{int_b}) OR "
      end
      final_range = matched_ranges[num_matched_ranges -1];
      int_a = final_range.match(/^-*\d+/);
      int_b = final_range.match(/-*\d+$/);
      ret_val = ret_val + "( #{@search_token} BETWEEN #{int_a} AND #{int_b})"
    end
    return ret_val;
  end

  def ParseTextStr()
    ret_val = "#{@search_token} SIMILAR TO \'#{@current_filter_string}\'"
    return ret_val
  end

  def ParseBooleanStr()
    case @current_filter_string
    when 1
       ret_val = "#{@search_token} IS TRUE"
    when 0
       ret_val = "#{@search_token} IS FALSE"
    else
      ret_val = ""
    end

    return ret_val
  end

  def ParseTimeStr()
    orig_str =@current_filter_string
    trimmed_str = @current_filter_string.gsub(/([A-Z]|[a-z])/,' ')
    trimmed_str =trimmed_str.gsub(/(?:^\s*)|(?:\s*$)/,'')
    trimmed_str = trimmed_str.gsub(/\d\s+\d/){|s| s=s.gsub(/\s+/,',')  }
    trimmed_str = trimmed_str.gsub(/\d\s+\d/){|s| s=s.gsub(/\s+/,',')  }
     trimmed_str = trimmed_str.gsub(/\s+/,'')
    #trimmed_str = trimmed_str.gsub(/(\s+:\s*)|(\s*:\s+)/,':')
    trimmed_str = trimmed_str.gsub(/\.{2,}/,'..')
    trimmed_str = trimmed_str.gsub(/\,+/,',')
    trimmed_str = trimmed_str.gsub(/:+/,':')
    trimmed_str =trimmed_str.gsub(/(?:^,*)|(?:,*$)|(?:^:*)|(?::*$)/,'')
    matched_ranges = []
   # matched_ranges = trimmed_str.scan(/(?:(?:[0-1][0-9])|(2[0-3]))|(?:(?:(?:[0-1][0-9])|(?:2[0-3])):[0-5][0-9]).{2}(?:(?:[0-1][0-9])|(2[0-3]))|(?:(?:(?:[0-1][0-9])|(?:2[0-3])):[0-5][0-9])/);

   # matched_range = trimmed_str.scan(/(?:(?:[0-9]+)|(?:[0-9]+:[0-9]+))\.{2}(?:(?:[0-9]+)|(?:[0-9]+:[0-9]+))/);
    matched_ranges = trimmed_str.scan(/(?:(?:(?:\d+:\d+)|(?:\d+))\.{2}(?:(?:\d+:\d+)|(?:\d+)))/);
    for matched_range in matched_ranges
       reg_exp = Regexp.new(matched_range);
       trimmed_str = trimmed_str.gsub(reg_exp, '')
    end
    # while matched_range do
    #   x = matched_range
    #   matched_ranges << matched_range
    #   reg_exp = Regexp.new(matched_range);
    #   trimmed_str = trimmed_str.gsub(reg_exp, '')
      # matched_range = trimmed_str.match(/(?:(?:\d+:\d+)|(?:\d+))\.{2}(?:(?:\d+:\d+)|(?:\d+))/);
    # end

    matched_or_strs  = trimmed_str.scan(/(?:\d+:\d+)|(?:\d+)/);

  #  matched_or_str = trimmed_str.match(/(?:\d+:\d+)|(?:\d+)/);
     #matched_or_strs_scan = trimmed_str.scan(/(?:\d+:\d+)|(?:\d+)/);
    #matched_or_strs = []
    #for matched_scan in matched_or_strs_scan
    #  if matched_scan[0]
    #     matched_or_strs << matched_scan[0]
    #  else
    #    matched_or_strs << matched_scan[1]
    #  end

   # end

    
   
    ret_val  = ""
    num_matched_ors = matched_or_strs.length
    if matched_or_strs.length >0
      ret_val = "("

      for or_str in matched_or_strs[0, num_matched_ors-1]
        or_str = AddMinutes(or_str)
        ret_val = ret_val + "#{@search_token} = #{or_str} OR "
      end
      final_or = matched_or_strs[num_matched_ors-1]
      final_or =  AddMinutes(final_or)
      ret_val = ret_val + "#{@search_token} = #{final_or})"
    end
    num_matched_ranges = matched_ranges.length
    if num_matched_ranges >0
      if num_matched_ors > 0
        ret_val = ret_val + " OR "
      end
      for matched_range in matched_ranges[0,num_matched_ranges -1]
        time_a = matched_range.match(/^(?:(?:\d+:\d+)|(?:\d+))/);
       if  time_a[0]
          time_a = time_a[0]
       else
         time_a = ""
       end
       #   time_a = time_a[1]
      # # end
        time_b = matched_range.match(/(?:(?:\d+:\d+)|(?:\d+))$/);
      if  time_b[0]
          time_b = time_b[0]
      else
        time_b = ""
        end
     #     time_b = time_b[1]
     #   end
        time_a = AddMinutes(time_a)

        time_b = AddMinutes(time_b)
        ret_val = ret_val + "( #{@search_token} BETWEEN #{time_a} AND #{time_b}) OR "
      end
      final_range = matched_ranges[num_matched_ranges -1];
      time_a = final_range.match(/(?:^(?:(?:\d+:\d+)|(?:\d+)))/);
        if  time_a[0]
         time_a = time_a[0]
       else
         time_a = ""
        end
        #  time_a = time_a[1]
       # end
      time_b =final_range.match(/(?:(?:(?:\d+:\d+)|(?:\d+))$)/);
        if  time_b[0]
        time_b = time_b[0]
        else
      time_b =""
        end
     time_a = AddMinutes(time_a)
      
      time_b = AddMinutes(time_b)
      ret_val = ret_val + "( #{@search_token} BETWEEN #{time_a} AND #{time_b})"
    end
    return ret_val;
  end


  def ParseTimeStampStr()
    the_current_str  = @current_filter_string
    trimmed_str = @current_filter_string.gsub(/([A-Z]|[a-z])/,' ')
    trimmed_str =trimmed_str.gsub(/(?:^\s*)|(?:\s*$)/,'')
    trimmed_str = trimmed_str.gsub(/\d\s+\d/){|s| s=s.gsub(/\s+/,',')  }
    trimmed_str = trimmed_str.gsub(/\s/,'')
   # trimmed_str = trimmed_str.gsub(/\s*-\s*/,'-')

    #trimmed_str = trimmed_str.gsub(/(?:\s*\.)|(?:\.\s*)/,'.')
    trimmed_str = trimmed_str.gsub(/\.{2,}/,'..')
    trimmed_str = trimmed_str.gsub(/\,+/,',')
    trimmed_str = trimmed_str.gsub(/-+/,'-')
    trimmed_str =trimmed_str.gsub(/(?:^,*)|(?:,*$)|(?:^\.*)|(?:\.*$)/,'')
   # matched_ranges1 = trimmed_str.match(/(?:(?:\d+-\d+-\d+)|(?:\d+-\d+)|(\d+))\.{2}(?:(?:\d+-\d+-\d+)|(?:\d+-\d+)|(?:\d+))/ )
   matched_ranges = trimmed_str.scan(/(?:(?:(?:\d+-\d+-\d+)|(?:\d+-\d+)|(?:\d+))\.{2}(?:(?:\d+-\d+-\d+)|(?:\d+-\d+)|(?:\d+)))/ )
   # matched_range = trimmed_str.match(/(?:(?:\d+-\d+-\d+)|(?:\d+-\d+)|(?:\d+))\.{2}(?:(?:\d+-\d+-\d+)|(?:\d+-\d+)|(?:\d+))/ )
   # matched_ranges = []
    for matched_range in matched_ranges
      
          
      reg_exp = Regexp.new(matched_range);
      trimmed_str = trimmed_str.gsub(reg_exp, '')
    end

    matched_or_str = trimmed_str.scan(/(?:(?:\d+-\d+-\d+)|(?:\d+-\d+)|(?:\d+))/);
  #  matched_or_str << trimmed_str.match(/,(?:(?:\d{2})|(?:\d{4}))|(?:(?:(?:\d{2})|(?:\d{4}))-(?:(?:0{0,1}[1-9])|(?:1[1-2])))|(?:(?:(?:\d{2})|(?:\d{4}))-(?:(?:0{0,1}[1-9])|(?:1[1-2]))-(?:(?:0{0,1}[1-9])|(?:[1-3][0-9])))/);
 #   matched_ranges << trimmed_str.scan(/(?:(?:\d{2})|(?:\d{4}))|(?:(?:(?:\d{2})|(?:\d{4}))-(?:(?:0{0,1}[1-9])|(?:1[1-2])))|(?:(?:(?:\d{2})|(?:\d{4}))-(?:(?:0{0,1}[1-9])|(?:1[1-2]))-(?:(?:0{0,1}[1-9])|(?:[1-3][0-9]))).{2}(?:(?:\d{2})|(?:\d{4}))|(?:(?:(?:\d{2})|(?:\d{4}))-(?:(?:0{0,1}[1-9])|(?:1[1-2])))|(?:(?:(?:\d{2})|(?:\d{4}))-(?:(?:0{0,1}[1-9])|(?:1[1-2]))-(?:(?:0{0,1}[1-9])|(?:[1-3][0-9])))/);
    ret_val  = ""
    num_matched_ors = matched_or_str.length
    if matched_or_str.length >0
      ret_val = "("

      for or_str in matched_or_str[0, num_matched_ors-1]
        date_str = CompleteDate(or_str)
        ret_val = ret_val + "#{@search_token} = #{date_str} OR "
      end
      date_str = CompleteDate(matched_or_str[num_matched_ors-1])
      ret_val = ret_val + "#{@search_token} = #{date_str})"
    end
    num_matched_ranges = matched_ranges.length
    if num_matched_ranges >0
      if num_matched_ors > 0
        ret_val = ret_val + " OR "
      end
      for matched_range in matched_ranges[0,num_matched_ranges -1]
        date_a = matched_range.match(/^(?:(?:\d+-\d+-\d+)|(?:\d+-\d+)|(?:\d+))/);
        if date_a
          date_a = date_a[0]
        else
          date_a = ""
        end
        date_b = matched_range.match(/(?:(?:\d+-\d+-\d+)|(?:\d+-\d+)|(?:\d+))$/);
        if date_b
          date_b = date_b[0]
        else
          date_b = ""
        end
        date_a = CompleteDate(date_a)
        date_b= CompleteDate(date_b)
        
        ret_val = ret_val + "( #{@search_token} BETWEEN #{date_a} AND #{date_b}) OR "
      end
      final_range = matched_ranges[num_matched_ranges -1];
      date_a = final_range.match(/^(?:(?:\d+-\d+-\d+)|(?:\d+-\d+)|(?:\d+))/);
              if date_a
          date_a = date_a[0]
        else
          date_a = ""
        end
      date_b = final_range.match(/(?:(?:\d+-\d+-\d+)|(?:\d+-\d+)|(?:\d+))$/);
           if date_b
          date_b = date_b[0]
        else
          date_b = ""
        end
      date_a = CompleteDate(date_a)
      date_b= CompleteDate(date_b)

      ret_val = ret_val + "( #{@search_token} BETWEEN #{date_a} AND #{date_b})"
    end
   
    return ret_val;
  end
    def AddMinutes(time_str)
    hours = time_str.match(/(?:^(?:\d+))/)

    if hours
      hours = hours[0]
    else
      hours = "0"
    end
   # hours = hours[0]
    if time_str =~ /:/
      mins = time_str.match(/(?:\d+$)/)
      #mins = mins[0]
      if mins
      mins = mins[0]
        else
      mins = "00"
    end
    else
      mins = "00"
    end

    if hours.to_i > 23
      hours = "00"
    end
    if mins.to_i >59
      mins = "00"
    end

    ret_val = "#{hours}:#{mins}"

    return ret_val
  end
  def CompleteDate(date_str)

    scan_array = date_str.scan(/(?:\d+)/)
    if scan_array
      scan_length = scan_array.length
    else
      scan_length = 0
    end
    year = nil

    if scan_length>0
       year = scan_array[0]
    end
    if year == nil      
      year = "2009"
    end

 

    if year.length <4
      year_val = year.to_i
      year_val = year_val - ((year_val -1) /50).floor * 100
      year_val = year_val +2000
      year = year_val.to_s
    end

    if scan_length >1
      month = scan_array[1]
    else
      month = "01"
    end
    if month.to_i > 12
      month = "12"
    end
    if month.length == 1
      month = "0"+month;
    end
    if scan_length >2
      day = scan_array[2]
      month_days_val = Time.days_in_month(month.to_i, year_val)
      day_val = day.to_i
      if day_val > month_days_val
        dav_val =  month_days_val
        day = dav_val.to_s
      end
    else
      day = "01"
    end

    if day.length ==1
      day = "0"+day;
    end

    ret_val = "#{year}-#{month}-#{day}"
  end
  def ParseIntegerStr2()
    ret_val = ""
    the_orig_str = @current_filter_string

    trimmed_str = @current_filter_string.gsub(/([A-Z]|[a-z])/,' ')
    trimmed_str = trimmed_str.gsub(/-\s+/,'-')
    trimmed_str =trimmed_str.gsub(/(?:^\s+)|(?:\s+$)/,'')

    trimmed_str = trimmed_str.gsub(/\d\s+(\d|-)/){|s| s=s.gsub(/\s+/,',')  }
    trimmed_str = trimmed_str.gsub(/\s+/,'')



    trimmed_str = trimmed_str.gsub(/\.{2,}/,'..')
    trimmed_str = trimmed_str.gsub(/\,+/,',')
    trimmed_str = trimmed_str.gsub(/-+/,'-')
    trimmed_str =trimmed_str.gsub(/(?:^,+)|(?:,+$)|(?:^\.+)|(?:\.+$)/,'')
    trimmed_str =trimmed_str.gsub(/\d\.-*\d/){|s| s = s.gsub(/\./, ',')}
     scanner = StringScanner.new(trimmed_str );
   matched_or_str = [];
  # scan_match =  scanner.scan(/\.^-*[0-9]+,/)
  # while scan_match !=nil do
   #  matched_or_str << scan_match;
  #   scan_match = scanner.scan(/\.^-*[0-9]+,/)
  # end

   # matched_or_str = trimmed_str.scan(/\.^-*[0-9]+,/);
  #  matched_or_str = trimmed_str.scan(/[^\.]-*[0-9]+,/);
  #  matched_or_str << trimmed_str.match(/,-*[0-9]+/);

    matched_ranges =  trimmed_str.scan(/-*[0-9]+\.{2}-*[0-9]+/);
    for range in matched_ranges
      reg_exp = Regexp.new(range);
      trimmed_str = trimmed_str.gsub(reg_exp, '')
    end

     matched_or_str = trimmed_str.scan(/-*[0-9]+/);


    num_matched_ors = matched_or_str.length
    if matched_or_str.length >0
      ret_val = "("

      for or_str in matched_or_str[0, num_matched_ors-1]
        or_str = or_str.gsub(/,/,'')
        ret_val = ret_val + "a#{@field_node.parent.id}.#{@attribute_name} = #{or_str} OR "
      end
      final_or = matched_or_str[num_matched_ors-1]
      final_or = final_or.gsub(/,/,'')
      ret_val = ret_val + "a#{@field_node.parent.id}.#{@attribute_name} = #{final_or})"
    end
    num_matched_ranges = matched_ranges.length
    if num_matched_ranges >0
      if num_matched_ors > 0
        ret_val = ret_val + " OR "
      end

      for matched_range in matched_ranges[0,num_matched_ranges -1]
        int_a = matched_range.match(/^-*\d+/);
        int_b = matched_range.match(/-*\d+$/);
        ret_val = ret_val + "( a#{@field_node.parent.id}.#{@attribute_name} BETWEEN #{int_a} AND #{int_b}) OR "
      end
      final_range = matched_ranges[num_matched_ranges -1];
      int_a = final_range.match(/^-*\d+/);
      int_b = final_range.match(/-*\d+$/);
      ret_val = ret_val + "( a#{@field_node.parent.id}.#{@attribute_name} BETWEEN #{int_a} AND #{int_b})"
    end
    return ret_val;
  end

  def ParseTextStr2()
    if @current_filter_string.length == 0
      ret_val = ""
    else
      ret_val = "a#{@field_node.parent.id}.#{@attribute_name} SIMILAR TO \'#{@current_filter_string}\'"
    end
    
    return ret_val
  end

  def ParseBooleanStr2()
    case @current_filter_string
    when 1, "T", "t", "true", "TRUE", "True"
       ret_val = "#{@search_token} IS TRUE"
    when 0, "F", "f", "false", "FALSE", "False"
       ret_val = "#{@search_token} IS FALSE"
    else
      ret_val = ""
    end
    return ret_val
  end

  def ParseTimeStr2()
    orig_str =@current_filter_string
    trimmed_str = @current_filter_string.gsub(/([A-Z]|[a-z])/,' ')
    trimmed_str =trimmed_str.gsub(/(?:^\s*)|(?:\s*$)/,'')
    trimmed_str = trimmed_str.gsub(/\d\s+\d/){|s| s=s.gsub(/\s+/,',')  }
    trimmed_str = trimmed_str.gsub(/\d\s+\d/){|s| s=s.gsub(/\s+/,',')  }
     trimmed_str = trimmed_str.gsub(/\s+/,'')
    #trimmed_str = trimmed_str.gsub(/(\s+:\s*)|(\s*:\s+)/,':')
    trimmed_str = trimmed_str.gsub(/\.{2,}/,'..')
    trimmed_str = trimmed_str.gsub(/\,+/,',')
    trimmed_str = trimmed_str.gsub(/:+/,':')
    trimmed_str =trimmed_str.gsub(/(?:^,*)|(?:,*$)|(?:^:*)|(?::*$)/,'')
    matched_ranges = []
   # matched_ranges = trimmed_str.scan(/(?:(?:[0-1][0-9])|(2[0-3]))|(?:(?:(?:[0-1][0-9])|(?:2[0-3])):[0-5][0-9]).{2}(?:(?:[0-1][0-9])|(2[0-3]))|(?:(?:(?:[0-1][0-9])|(?:2[0-3])):[0-5][0-9])/);

   # matched_range = trimmed_str.scan(/(?:(?:[0-9]+)|(?:[0-9]+:[0-9]+))\.{2}(?:(?:[0-9]+)|(?:[0-9]+:[0-9]+))/);
    matched_ranges = trimmed_str.scan(/(?:(?:(?:\d+:\d+)|(?:\d+))\.{2}(?:(?:\d+:\d+)|(?:\d+)))/);
    for matched_range in matched_ranges
       reg_exp = Regexp.new(matched_range);
       trimmed_str = trimmed_str.gsub(reg_exp, '')
    end
    # while matched_range do
    #   x = matched_range
    #   matched_ranges << matched_range
    #   reg_exp = Regexp.new(matched_range);
    #   trimmed_str = trimmed_str.gsub(reg_exp, '')
      # matched_range = trimmed_str.match(/(?:(?:\d+:\d+)|(?:\d+))\.{2}(?:(?:\d+:\d+)|(?:\d+))/);
    # end

    matched_or_strs  = trimmed_str.scan(/(?:\d+:\d+)|(?:\d+)/);

  #  matched_or_str = trimmed_str.match(/(?:\d+:\d+)|(?:\d+)/);
     #matched_or_strs_scan = trimmed_str.scan(/(?:\d+:\d+)|(?:\d+)/);
    #matched_or_strs = []
    #for matched_scan in matched_or_strs_scan
    #  if matched_scan[0]
    #     matched_or_strs << matched_scan[0]
    #  else
    #    matched_or_strs << matched_scan[1]
    #  end

   # end



    ret_val  = ""
    num_matched_ors = matched_or_strs.length
    if matched_or_strs.length >0
      ret_val = "("

      for or_str in matched_or_strs[0, num_matched_ors-1]
        or_str = AddMinutes(or_str)
        ret_val = ret_val + "a#{@field_node.parent.id}.#{@attribute_name} = #{or_str} OR "
      end
      final_or = matched_or_strs[num_matched_ors-1]
      final_or =  AddMinutes(final_or)
      ret_val = ret_val + "a#{@field_node.parent.id}.#{@attribute_name} = #{final_or})"
    end
    num_matched_ranges = matched_ranges.length
    if num_matched_ranges >0
      if num_matched_ors > 0
        ret_val = ret_val + " OR "
      end
      for matched_range in matched_ranges[0,num_matched_ranges -1]
        time_a = matched_range.match(/^(?:(?:\d+:\d+)|(?:\d+))/);
       if  time_a[0]
          time_a = time_a[0]
       else
         time_a = ""
       end
       #   time_a = time_a[1]
      # # end
        time_b = matched_range.match(/(?:(?:\d+:\d+)|(?:\d+))$/);
      if  time_b[0]
          time_b = time_b[0]
      else
        time_b = ""
        end
     #     time_b = time_b[1]
     #   end
        time_a = AddMinutes(time_a)

        time_b = AddMinutes(time_b)
        ret_val = ret_val + "( a#{@field_node.parent.id}.#{@attribute_name} BETWEEN #{time_a} AND #{time_b}) OR "
      end
      final_range = matched_ranges[num_matched_ranges -1];
      time_a = final_range.match(/(?:^(?:(?:\d+:\d+)|(?:\d+)))/);
        if  time_a[0]
         time_a = time_a[0]
       else
         time_a = ""
        end
        #  time_a = time_a[1]
       # end
      time_b =final_range.match(/(?:(?:(?:\d+:\d+)|(?:\d+))$)/);
        if  time_b[0]
        time_b = time_b[0]
        else
      time_b =""
        end
     time_a = AddMinutes(time_a)

      time_b = AddMinutes(time_b)
      ret_val = ret_val + "( a#{@field_node.parent.id}.#{@attribute_name} BETWEEN #{time_a} AND #{time_b})"
    end
    return ret_val;
  end


  def ParseTimeStampStr2()
    the_current_str  = @current_filter_string
    trimmed_str = @current_filter_string.gsub(/([A-Z]|[a-z])/,' ')
    trimmed_str =trimmed_str.gsub(/(?:^\s*)|(?:\s*$)/,'')
    trimmed_str = trimmed_str.gsub(/\d\s+\d/){|s| s=s.gsub(/\s+/,',')  }
    trimmed_str = trimmed_str.gsub(/\s/,'')
   # trimmed_str = trimmed_str.gsub(/\s*-\s*/,'-')

    #trimmed_str = trimmed_str.gsub(/(?:\s*\.)|(?:\.\s*)/,'.')
    trimmed_str = trimmed_str.gsub(/\.{2,}/,'..')
    trimmed_str = trimmed_str.gsub(/\,+/,',')
    trimmed_str = trimmed_str.gsub(/-+/,'-')
    trimmed_str =trimmed_str.gsub(/(?:^,*)|(?:,*$)|(?:^\.*)|(?:\.*$)/,'')
   # matched_ranges1 = trimmed_str.match(/(?:(?:\d+-\d+-\d+)|(?:\d+-\d+)|(\d+))\.{2}(?:(?:\d+-\d+-\d+)|(?:\d+-\d+)|(?:\d+))/ )
   matched_ranges = trimmed_str.scan(/(?:(?:(?:\d+-\d+-\d+)|(?:\d+-\d+)|(?:\d+))\.{2}(?:(?:\d+-\d+-\d+)|(?:\d+-\d+)|(?:\d+)))/ )
   # matched_range = trimmed_str.match(/(?:(?:\d+-\d+-\d+)|(?:\d+-\d+)|(?:\d+))\.{2}(?:(?:\d+-\d+-\d+)|(?:\d+-\d+)|(?:\d+))/ )
   # matched_ranges = []
    for matched_range in matched_ranges


      reg_exp = Regexp.new(matched_range);
      trimmed_str = trimmed_str.gsub(reg_exp, '')
    end

    matched_or_str = trimmed_str.scan(/(?:(?:\d+-\d+-\d+)|(?:\d+-\d+)|(?:\d+))/);
  #  matched_or_str << trimmed_str.match(/,(?:(?:\d{2})|(?:\d{4}))|(?:(?:(?:\d{2})|(?:\d{4}))-(?:(?:0{0,1}[1-9])|(?:1[1-2])))|(?:(?:(?:\d{2})|(?:\d{4}))-(?:(?:0{0,1}[1-9])|(?:1[1-2]))-(?:(?:0{0,1}[1-9])|(?:[1-3][0-9])))/);
 #   matched_ranges << trimmed_str.scan(/(?:(?:\d{2})|(?:\d{4}))|(?:(?:(?:\d{2})|(?:\d{4}))-(?:(?:0{0,1}[1-9])|(?:1[1-2])))|(?:(?:(?:\d{2})|(?:\d{4}))-(?:(?:0{0,1}[1-9])|(?:1[1-2]))-(?:(?:0{0,1}[1-9])|(?:[1-3][0-9]))).{2}(?:(?:\d{2})|(?:\d{4}))|(?:(?:(?:\d{2})|(?:\d{4}))-(?:(?:0{0,1}[1-9])|(?:1[1-2])))|(?:(?:(?:\d{2})|(?:\d{4}))-(?:(?:0{0,1}[1-9])|(?:1[1-2]))-(?:(?:0{0,1}[1-9])|(?:[1-3][0-9])))/);
    ret_val  = ""
    num_matched_ors = matched_or_str.length
    if matched_or_str.length >0
      ret_val = "("

      for or_str in matched_or_str[0, num_matched_ors-1]
        date_str = CompleteDate(or_str)
        ret_val = ret_val + "a#{@field_node.parent.id}.#{@attribute_name} = #{date_str} OR "
      end
      date_str = CompleteDate(matched_or_str[num_matched_ors-1])
      ret_val = ret_val + "a#{@field_node.parent.id}.#{@attribute_name} = #{date_str})"
    end
    num_matched_ranges = matched_ranges.length
    if num_matched_ranges >0
      if num_matched_ors > 0
        ret_val = ret_val + " OR "
      end
      for matched_range in matched_ranges[0,num_matched_ranges -1]
        date_a = matched_range.match(/^(?:(?:\d+-\d+-\d+)|(?:\d+-\d+)|(?:\d+))/);
        if date_a
          date_a = date_a[0]
        else
          date_a = ""
        end
        date_b = matched_range.match(/(?:(?:\d+-\d+-\d+)|(?:\d+-\d+)|(?:\d+))$/);
        if date_b
          date_b = date_b[0]
        else
          date_b = ""
        end
        date_a = CompleteDate(date_a)
        date_b= CompleteDate(date_b)

        ret_val = ret_val + "( a#{@field_node.parent.id}.#{@attribute_name} BETWEEN #{date_a} AND #{date_b}) OR "
      end
      final_range = matched_ranges[num_matched_ranges -1];
      date_a = final_range.match(/^(?:(?:\d+-\d+-\d+)|(?:\d+-\d+)|(?:\d+))/);
              if date_a
          date_a = date_a[0]
        else
          date_a = ""
        end
      date_b = final_range.match(/(?:(?:\d+-\d+-\d+)|(?:\d+-\d+)|(?:\d+))$/);
           if date_b
          date_b = date_b[0]
        else
          date_b = ""
        end
      date_a = CompleteDate(date_a)
      date_b= CompleteDate(date_b)

      ret_val = ret_val + "( a#{@field_node.parent.id}.#{@attribute_name} BETWEEN #{date_a} AND #{date_b})"
    end

    return ret_val;
  end

  def GetSQLString2
    case @data_type
    when :integer
      ret_val = ParseIntegerStr2()
    when :time
      ret_val = ParseTimeStr2()

    when :timestamp
      ret_val = ParseTimeStampStr2()
    when :boolean
      ret_val = ParseBooleanStr2()
    when :string, :text
      ret_val = ParseTextStr2()
    else
      ret_val = ""
    end
    return  ret_val
  end
    
end

class SearchController
  attr_reader :table_name
  attr_accessor :current_filter_indices # these refer to indices in @available_fields on which searches are curretnly done
  attr_reader :current_field_indices # these are the columns of the table that are currently displayed
  attr_reader :possible_field_indices # these are the available fields that are not currently displayed int the table
  attr_reader :available_fields #these are all the availabe fields extracted from the table and its :belongs_to associations
  attr_reader :possible_field_names #
  attr_reader :possible_filter_names
  attr_accessor :possible_filter_indices
  attr_reader :current_filter_names
  attr_reader :current_filters
  attr_reader :current_fields

  def initialize(table_name) #eg GroupMember
    t1 = TestClass.new(1,2)
    t2 = t1
    t2.x = 3
    t2.y =4;

    @order_updated = false;
    @table_name = table_name
    @current_filter_indices = []
    @current_filter_names = []
    @possible_filter_names =[]
    @limit_offset = 0;
    @limit_length = 250;

   # @fields = [SearchField.new("First Name", "Person", "row.person.first_name", "people.first_name", 0, 0),
    #  SearchField.new("Second Name", "Person", "row.person.second_name", "people.second_name",0, 0)];
    #@table = GroupMember.find(:all, :conditions => "people.second_name like '%Verr%'" , :include => :person);

    #@table_index = 1;
    

   # @@search_include = [:person, :attendee];
   # group_member2 = GroupMember.find(:all, :conditions => "people.second_name like '%Verr%'" , :include => @@search_include[0] );

    @available_fields = [];
    @max_level = 4;
    @level =0;
    process_reflections = true
    qualifier_str = ""
    qualifiers_str = ""
    
    current_table = @table_name;
   # @tables_name = @table_name.pluralize.downcase;
    @tables_name = QualifiersStr(@table_name)
    @search_include_strings = [""];
    @data_type_strings = [];
    @new_index_val = 0;
    

    qualifier = eval("HeaderStr(#{current_table}.name)")
    include_str = ""
    FieldNode.Reset();
    @field_tree = FieldNode.new(nil, current_table, "");
    ProcessTable(qualifier, qualifier_str, qualifiers_str, current_table, include_str, @field_tree ) #sets @available_fields

    number_available_fields = @available_fields.length
    default_number_of_fields = 5

    if number_available_fields <=default_number_of_fields
      @current_field_indices =  (0 .. (number_available_fields -1)).to_a;

      @possible_field_indices = []
    else
      @current_field_indices = (0..(default_number_of_fields-1)).to_a
      @possible_field_indices = (default_number_of_fields..(number_available_fields-1)).to_a
    end
    @possible_field_names  = [];
    for index in  @possible_field_indices
      @possible_field_names << @available_fields[index].full_name
    end


    @search_order = Array.new(@current_field_indices);
    @search_direction = []
    for index in @search_order
      @search_direction << :asc ;
    end

    @possible_filter_indices = (0..(number_available_fields-1)).to_a
    @possible_filter_names = []
    for field in @available_fields
      @possible_filter_names << field.full_name
    end
   

    @current_fields = []
    @current_filters = []
    for index in @current_field_indices
      @current_fields << @available_fields[index];
    end
    for index in @current_filter_indices
      @current_filters << @available_fields[index];
    end


    #group_member2 = GroupMember.find(:all, :conditions => "people.second_name like '%Verr%'" , :include => :person);

  end
  #     session[:search_table] = "People"
  #  session[:search_table] = "Attendee" #join of lecture_id and person_id
  #   seesion[:search_table] = "GroupMembers" # join of group_id and perons_id
  #   seesion[:search_table] = "Lecture" #join of course_id and person_id
  #   session[:search_table] = "TutorialSchedule" #join of course_id and person_id
  #   session[:search_table] = "Tutorial" #join of tutorial_id and person_id
  #   session[:search_table] = "WillingTeacher" #join course_id and person_id


  #this fuction finds all the possible fields names for a table and puts them in @available_fields.
  #It traces through the associations, and it uses recursion to do this.
  #to prevent call stack overflows, @max_level puts a limit on the number of recursive calls.

  def construct_current_field_tree
    
    @processed_nodes = [];
    @processed_child_nodes = [];
    @alias_id = 0;
    if(@current_filter_indices.index(0) == nil && @current_field_indices.index(0) == nil)
      field = @available_fields[0]; #id must be retrieved
      field_node = field.field_node;
      process_node(field_node)
    end
    for index in @current_filter_indices
      field = @available_fields[index];
      field_node = field.field_node;
      process_node(field_node)
    end
    for index in @current_field_indices
      field = @available_fields[index];
      field_node = field.field_node;
      process_node(field_node)
    end


  end
  def process_node(field_node)
    if @processed_child_nodes.index(field_node.id) == nil
      current_node = field_node
      @processed_child_nodes << current_node.id;
      parent_node = current_node.parent;
      while(parent_node!=nil)
        if(@processed_nodes.index(parent_node.id) == nil)
          @processed_nodes << parent_node.id
          parent_node.current_children = []
        end
        parent_node.current_children << current_node
        @processed_child_nodes << current_node.id
        current_node = parent_node
        parent_node = parent_node.parent
        if @processed_child_nodes.index(current_node.id) != nil
          break;
        end
      end
    end


    #if field_node.parent !=nil
    #  if(@processed_nodes.index(field_node.parent.id) == nil)
    #    @processed_nodes << field_node.parent.id
    #    field_node.parent.current_children = []
    #  end
    #  if(@processed_leaves.index(field_node.id) == nil) # so that a field isn't added more than once
    #    field_node.parent.current_children << field_node
    #    @processed_leaves << field_node.id
    #    process_node(field_node.parent)
    #  end

    #end
  end
  def get_sql_string
     construct_current_field_tree
     @sql_str = "SELECT"
     get_select_string(@field_tree)
     @sql_str[@sql_str.length - 1] = ' '
     @sql_str << "FROM #{@tables_name} a#{@field_tree.id} "
     @join_str = ""
     get_join_string(@field_tree)
     @sql_str << @join_str
     @where_str = "";
     get_where_string;
     @sql_str <<  @where_str
     @order_str = "";
     get_order_string;
     @sql_str << @order_str;
    # @sql_str << " LIMIT #{@limit_length} OFFSET #{@limit_offset} "
  end

  def get_select_string(field_node)    
    for child_node in field_node.current_children
      if child_node.current_children.length == 0
        @sql_str << " a#{field_node.id}.#{child_node.name}"
        if field_node.parent != nil
          @sql_str << " AS a#{field_node.id}_#{child_node.name}"
        end
        @sql_str << ","
      else
        get_select_string(child_node)
      end
    end
  end

  def get_join_string(field_node)
    if field_node.parent == nil
      for child_node0 in field_node.current_children
        get_join_string(child_node0)
      end
    else
      nested_joins = [];
      for child_node1 in field_node.current_children
        if child_node1.current_children.length > 0
          nested_joins << child_node1;         
        end       
      end
      if nested_joins.length >0
        @join_str << "JOIN ( #{field_node.name} a#{field_node.id} ";
        for child_node2 in nested_joins
          get_join_string(child_node2)
        end
        @join_str << ") ON a#{field_node.parent.id}.#{field_node.key} = a#{field_node.id}.id ";
        
      else
        if field_node.current_children.length > 0
          @join_str << "JOIN #{field_node.name} a#{field_node.id} ON  a#{field_node.parent.id}.#{field_node.key} = a#{field_node.id}.id "
        end
      end     
    end    
  end

  def get_where_string
   num_filters = @current_filter_indices.length;
   if num_filters >0
     @where_str = " WHERE ";
    for index in @current_filter_indices[0,  (num_filters -1)]
      filter = @available_fields[index];
      filter_str = filter.GetSQLString2;
      if filter_str.length >0
        @where_str = @where_str + "#{filter_str} AND "
      end

    end
    final_index = @current_filter_indices[num_filters -1];
    filter = @available_fields[final_index];

    filter_str  =  filter.GetSQLString2
    if filter_str.length >0
      @where_str = @where_str + "#{filter_str}"
    else
      @where_str = @where_str.gsub(/AND\s*$/){|s| ''};
    end
   end
   @where_str = "" if @where_str == " WHERE "
  end

  def get_order_string
    @order_str = " ORDER BY "

    for i in  (0..(@search_order.length - 1))
      field = @available_fields[@search_order[i]]
      node_id = field.field_node.parent.id;
      field_name = field.attribute_name
      @order_str << " a#{ node_id}.#{field_name}  #{@search_direction[i].to_s },"
    end
    @order_str[(@order_str.length) -1] = ' ';

  end
  def get_eval_string2
    get_sql_string
    ret_str = "#{@table_name}.find_by_sql(\"#{@sql_str}\")"
    return ret_str;
  end
  
  def get_eval_string
   # Person.find(:all,:conditions => session[:searchstr], :order => Person::SortOrder[session[:sortOption]] )
   # session[:searchstr] = "second_name SIMILAR TO \'" + session[:searchstr2nd] + "\' AND first_name SIMILAR TO \'"
  #  + session[:searchstr1st] + "\' AND entry_year = \'" + session[:searchstrYear] + "\'"
   # GroupMember.find(:first, :conditions => "people.second_name like '%Verr%'" , :include => :person);

    condition_str = "";

    num_filters = @current_filter_indices.length;
   if num_filters >0
    for index in @current_filter_indices[0,  (num_filters -1)]
      filter = @available_fields[index];
      filter_str = filter.GetSQLString;
      if filter_str.length >0
        condition_str = condition_str + "#{filter.GetSQLString} AND "
      end
      
    end

    final_index = @current_filter_indices[num_filters -1];
    filter = @available_fields[final_index];

    filter_str  =  filter.GetSQLString
    if filter_str.length >0
      condition_str = condition_str + "#{filter.GetSQLString}"
    else
      condition_str = condition_str.gsub(/AND\s*$/){|s| ''};
    end
   end
     order_str = "\'"
    #for  i in  (0..(@search_order.length - 1))
        i = 0;
        filter = @available_fields[@search_order[i]]
        order_str = "#{order_str} #{filter.search_token} #{@search_direction[i].to_s },"
   # end
    order_length = order_str.length;
    order_str[order_length - 1] = "\'"
    
    current_includes = []
    for index in @current_filter_indices
      filter = @available_fields[index];
      current_index = filter.include_index
      if  current_index != 0 && current_includes.index(current_index) == nil
          current_includes << current_index        
      end
    end
    for index in @current_field_indices
      filter = @available_fields[index];
      current_index = filter.include_index
      if  current_index != 0 && current_includes.index(current_index) == nil
          current_includes << current_index
      end
    end  
    if current_includes.length >0
      if current_includes.length == 1
        index = current_includes[0]
        include_str = @search_include_strings[index]
      else
        include_str = "["
        for include_index in current_includes
          include_str = "#{include_str} #{@search_include_strings[include_index]},"
        end
        include_str_length = include_str.length
        include_str[include_str_length-1] = "]"
      end

    else
      include_str = ""
    end

    ret_str = "#{@table_name}.find(:all"
    if condition_str.length >0
      ret_str = ret_str + ",:conditions => \"#{condition_str}\""
    end
    if order_str.length >0
      ret_str = ret_str + ", :order => #{order_str}"
    end
    if include_str.length >0
      ret_str = ret_str + ",  :include => #{include_str}"
    end
    ret_str = ret_str + ")"

  #  ret_str = "#{@table_name}.find(:all,:conditions => \"#{condition_str}\", :order => #{order_str},  :include => #{include_str})"

  #  else



        #  ret_str = "#{@table_name}.find(:all)"

      
 #   end

    return ret_str;


  end


  def updateFilters(current_filter_indices_)
    num_available_fields = @available_fields.length;
    @possible_filter_indices = [];
    for i in (0..(num_available_fields-1))
      curr_i = @current_filter_indices.index(i)
      if(curr_i ==nil)
        if(current_filter_indices_.index(i) != nil)
          @current_filter_indices << i;
         
        else
          @possible_filter_indices << i;
        end
      else
        if(current_filter_indices_.index(i) == nil)
          @current_filter_indices.delete_at(curr_i);
          
          @possible_filter_indices << i;
        end
      end
      
    end


  end
  def binary_search(array_, val_) #searches for insertion point for val_ in ordered array_
    ret_val = 0;
    if array_.length == 0
      return ret_val;
    end
    factor = 2;
    jump  = (array_.length/factor).floor;
    pos = (array_.length/factor).floor
    while(jump>0)
      if array_[pos] <  val_
        pos = pos + jump
      else
        pos = pos - jump
      end
      factor= factor*2;
      jump  = (array_.length/factor).floor;
    end
    if array_[pos] < val
      ret_val = pos + 1;
    else
      ret_val = pos
    end
    return ret_val;
  end


 def updateFields(current_field_indices_)
    num_available_fields = @available_fields.length;
    @possible_field_indices = [];
    for i in (0..(num_available_fields-1))
      curr_i = @current_field_indices.index(i)
      if(curr_i ==nil)
        if(current_field_indices_.index(i) != nil)
          #insert_pos = binary_search(@current_field_indices, i)
          @current_field_indices << i;
          @search_order << i;
          @search_direction << :asc;
        else
          @possible_field_indices << i;
        end
      else
        if(current_field_indices_.index(i) == nil)
          @current_field_indices.delete_at(curr_i);
          ord_i = @search_order.index(i)
          if(ord_i !=nil)
            @search_order.delete_at(ord_i);
            @search_direction.delete_at(ord_i);
          end
          @possible_field_indices << i;
        end
      end
    end
    @current_field_indices =  @current_field_indices.sort
  end


  def UpdateOrder(order_index)
    if(order_index == @search_order[0])
      if @search_direction[0] == :asc
        @search_direction[0] = :desc
      else
        @search_direction[0] = :asc
      end
    else
      old_pos = @search_order.index(order_index)
      if(old_pos !=nil)
        search_dir = @search_direction[old_pos];
        @search_order.delete_at(old_pos);
        @search_direction.delete_at(old_pos);
        @search_order.insert(0,order_index);
        @search_direction.insert(0,search_dir);
        @order_updated = true;
      end
    end

  end

  def AddFilter(index)

  end

  def RemoveFilter(index)

  end



  def Search #uses filters to update Table
    
  end



  def ProcessTable(qualifier, qualifier_str, qualifiers_str, current_table, include_str, parent_tree)

    @level = @level + 1;
    if @level > @max_level
      return
    end
    include_index = @search_include_strings.index(include_str);
    if include_index == nil
      include_index = @search_include_strings.length;
      @search_include_strings << include_str;
    end
    ExtractFields(qualifier, qualifier_str, qualifiers_str, current_table, include_index, parent_tree);
    string_to_evaluate = "#{current_table}.reflect_on_all_associations(:belongs_to)"
    reflections = eval(string_to_evaluate);
    for reflection in reflections
      reflection_table_name = reflection.class_name
      #reflection_table_name = reflection.name
      local_qualifier = HeaderStr(reflection.name.to_s)
      reflection_qualifier = "#{qualifier}/#{local_qualifier}"

      local_qualifier_str = HeaderStr(reflection.name.to_s);
      reflection_qualifier_str = "#{qualifier_str}#{local_qualifier_str}."

      local_qualifiers_str = local_qualifier_str.pluralize
      reflection_qualifiers_str = "#{qualifiers_str}#{local_qualifiers_str}."

      local_include_str = IncludeStr(local_qualifier_str)
      if include_str == ""
        reflection_include_str = local_include_str;
      else
        reflection_include_str = "#{include_str} => #{local_include_str}"
      end
      foreign_key = reflection.options[:foreign_key];
      tables_name = QualifiersStr(reflection_table_name)
      sub_tree = FieldNode.new(parent_tree,tables_name , foreign_key);
      parent_tree.all_children << sub_tree;

      ProcessTable(reflection_qualifier, reflection_qualifier_str, reflection_qualifiers_str, reflection_table_name, reflection_include_str, sub_tree)
       
    end
    @level = @level - 1
  end
  #This is a helper function for ProcessTable. It does a local field extraction for the current_table
  def ExtractFields(qualifier, qualifier_str, qualifiers_str, current_table, include_index, parent_tree)
    #attribute_eval_str = "#{current_table}.column_names"
    attribute_eval_str = "#{current_table}.columns"
    attributes = eval(attribute_eval_str)
    for attribute in attributes
      attribute_name= attribute.name()
      attribute_type  = attribute.type
      #attribute_index = @data_type_strings.index(attribute_type)
      #  if  attribute_index == nil
      #    attribute_index = @data_type_strings.length
      #     @data_type_strings << attribute_type;
      #  end
      if parent_tree.parent == nil
        eval_str = "row.#{attribute_name}"
      else
        eval_str = "row.a#{parent_tree.id}_#{attribute_name}"
      end
      #eval_str = "row.#{qualifier_str}#{attribute_name}"
      token_str = "#{qualifiers_str}#{attribute_name}"
      #temp_header_str = eval("#{current_table}.attribute_name('#{attribute_name}')");
      header_str = HeaderStr(attribute_name);
      #  x =  HeaderStr("   one_two_three  ")
      #  y =  HeaderStr("  MyNameIsRobertVerrill_ItIsSoId_id iD  and it is true   ")
      tag_symbol =  QualifierStr("#{qualifier}_#{header_str}")

      field_node = FieldNode.new(parent_tree, attribute_name, "");
      parent_tree.all_children << field_node;
     
      @available_fields << SearchField.new(header_str, qualifier, eval_str, token_str, include_index, attribute_type, tag_symbol, @new_index_val,  current_table, attribute_name, field_node)
      @new_index_val = @new_index_val+1
    end
   
  end
    def HeaderStr(in_str)

    ret_str = in_str.strip;
    ret_str = ret_str.gsub(/_/){|s| ' '};
    ret_str = ret_str.gsub(/[a-z][A-Z]\S{1}/){|s| s.insert(1," ")}
    ret_str = ret_str.gsub(/[a-z][A-Z]\S{1}/){|s| s.insert(1," ")}
    ret_str = ret_str.gsub(/(?:\s|^)[a-z]/){|s| s.upcase}
    ret_str = ret_str.gsub(/(?:\s|^)(?:i|I)(?:d|D)(?:\s|$)/){|s| s = s.upcase}
    ret_str = ret_str.gsub(/Id(?:\s|$)/){|s|  s = s.upcase }
    return  ret_str

  end
  def QualifierStr(in_str)
    ret_str = in_str.strip;
    ret_str = ret_str.gsub(/[a-z][A-Z]\S{1}/){|s| s.insert(1," ")}
    ret_str = ret_str.gsub(/[a-z][A-Z]\S{1}/){|s| s.insert(1," ")}
    ret_str = ret_str.gsub(/\s/){|s| '_'};
    ret_str = ret_str.gsub(/\//){|s| '__'};
    ret_str = ret_str.downcase;
    return ret_str;
  end
  def QualifiersStr(in_str)
    ret_str = in_str.strip;
    ret_str = ret_str.gsub(/[a-z][A-Z]\S{1}/){|s| s.insert(1," ")}
    ret_str = ret_str.gsub(/[a-z][A-Z]\S{1}/){|s| s.insert(1," ")}
    ret_str = ret_str.gsub(/\S+$/){|s| s = s.pluralize}
    ret_str = ret_str.gsub(/\s/){|s| '_'};
    ret_str = ret_str.gsub(/\//){|s| '__'};
    ret_str = ret_str.downcase;
    return ret_str;
  end
  def IncludeStr(in_str)
    ret_str = QualifierStr(in_str);
    ret_str = ":#{ret_str}"
    return ret_str

  end
end





