class ArticlesController < ApplicationController
  before_action :set_article, only: [:show, :edit, :update, :destroy]

  # GET /articles
  # GET /articles.json
  def index
    @articles = Article.order('random()').limit(6).all
  end

  def recent
    @articles = Article.order('articles.created_at desc').limit(6).all

    render :index
  end

  # GET /articles/1
  # GET /articles/1.json
  def show
  end

  # GET /articles/new
  def new
    @article = Article.new
  end

  # GET /articles/1/edit
  def edit
  end

  # POST /articles
  # POST /articles.json
  def create
    @article = Article.new(article_params)

    generator = Faker::TabulaIpsum.new
    generator.wordlist = ['percent', 'statistics', 'Monday', 'day', 'surprise', 'surreptitious', 'article', 'quote', 'says', 'reneges', 'reply', 'admission', 'end']
    generator.wordlist.concat article_params[:headline].split(' ')
    generator.wordlist.concat article_params[:lead].split(' ')
    @article.text = "<p>" + (0...3).map {generator.paragraph + ' ' + generator.paragraph}.join("</p><p>") + "</p>"
    @article.picture = Picture.order('random()').first

    respond_to do |format|
      if @article.save
        format.json { render :show, status: :created, location: article_url(@article, format: 'json') }
      else
        format.json { render json: @article.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /articles/1
  # PATCH/PUT /articles/1.json
  def update
    respond_to do |format|
      if @article.update(article_params)
        format.html { redirect_to @article, notice: 'Article was successfully updated.' }
        format.json { render :show, status: :ok, location: @article }
      else
        format.html { render :edit }
        format.json { render json: @article.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /articles/1
  # DELETE /articles/1.json
  def destroy
    @article.destroy
    respond_to do |format|
      format.html { redirect_to articles_url, notice: 'Article was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_article
      @article = Article.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def article_params
      params.require(:article).permit(:headline, :text, :author, :lead)
    end
end
