module ApplicationHelper
  def words_form_action(word)
    if word.new_record?
      @action = "/words"
    else
      @action = "/words/#{word.id}"
    end
    @action
  end

  def words_form_method(word)
    # define the form method name here
    if word.new_record?
      @method = "post"
    else
      @method = "put"
    end
    @method
  end

  def words_form_class(word)
    # define the class name here
    if word.new_record?
      @class = "new-word"
    else
      @class = "edit-word"
    end
    @class
  end

  def words_form_id(word)
    if word.new_record?
      @form_id = "new-person"
    else
      @form_id = "word-#{word.id}"
    end
    @form_id
  end
end
