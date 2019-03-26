module PagesHelper

  def return_alerts(refuel_info)
    if refuel_info.errors.present?
      return "alert-danger", refuel_info.errors.full_messages.join("\n")
    end

    return "alert-success", "Information Saved"
  end

end
