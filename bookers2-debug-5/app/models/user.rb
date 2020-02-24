class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable,:validatable

  has_many :books
  # いいね
  has_many :favorites, dependent: :destroy
  # コメント
  has_many :book_comments, dependent: :destroy
  # フォロー
  has_many :active_relationships,class_name: "Relationship", foreign_key: "follower_id", dependent: :destroy
  has_many :passive_relationships, class_name: "Relationship", foreign_key: "following_id", dependent: :destroy
  has_many :followings, through: :active_relationships, source: :following
  has_many :followers, through: :passive_relationships, source: :follower
  def following?(other_user)
    active_relationships.find_by(following_id: other_user.id)
  end
  def follow!(other_user)
    active_relationships.create!(following_id: other_user.id)
  end
  def unfollw!(other_user)
    active_relationships.find_by(followign_id: other_user.id).destroy
  end

  attachment :profile_image, destroy: false

  #バリデーションは該当するモデルに設定する。エラーにする条件を設定できる。
  validates :name, length: {maximum: 20, minimum: 2}
  validates :introduction, length: { maximum: 50 }
end
