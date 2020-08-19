class School

  def initialize(start_time, hours_in_school_day)
    @start_time = start_time
    @hours_in_school_day = hours_in_school_day
    @student_names = []
  end

  def start_time
    @start_time
  end

  def hours_in_school_day
    @hours_in_school_day
  end

  def student_names
    @student_names
  end

  def add_student_name(name)
    @student_names << name
  end

  def end_time
    finish = @start_time.to_i + @hours_in_school_day
    time = "#{finish}:00"
    time
  end

  def is_full_time
    if @hours_in_school_day <= 4
      false
    else
      true
    end
  end

  def standard_student_names
    @student_names.map.each do |name|
      name.capitalize
    end
  end

  def convert_end_time_to_clock_time
    finish = @start_time.to_i + @hours_in_school_day
    if finish > 12
      new_time = finish - 12
      new_time.to_s
      converted_time = "#{new_time}:00"
    else
      "#{finish}:00"
    end
  end


end
