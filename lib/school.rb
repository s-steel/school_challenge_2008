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


end
