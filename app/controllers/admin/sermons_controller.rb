class Admin::SermonsController < Admin::BaseController
  def index
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def results
  end

  def qr
    @sermon = Sermon.find(params[:id])
    url = rate_by_token(@sermon.token)
    qrcode = RQRCode::QRCode.new(url)
    png = qrcode.as_png(size: 300)
    send_data png.to_s, type: "image/png", disposition: "inline"
  end

  require "csv"
  def export_csv
    sermon = Sermon.find(params[:id])
    rows = [ [ "Question", "Avg", "Count" ] ]
    sermon.responses.group("question_id").average(:value).each do |qid, avg|
      rows << [ Question.find(qid).content, avg, sermon.responces.where(question_id: qid).count ]
    end
    csv = CSV.generate { |csv| rows.each { |r| csv << r } }
    send_data csv, filename: "sermon-#{sermon.id}-results.csv"
  end
end
