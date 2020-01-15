class Apps::Manager < Matestack::Ui::App
  def response
    components {
      main do
        page_content
      end
    }
  end
end
