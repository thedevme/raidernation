# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130630181712) do

  create_table "active_admin_comments", :force => true do |t|
    t.string   "resource_id",   :null => false
    t.string   "resource_type", :null => false
    t.integer  "author_id"
    t.string   "author_type"
    t.text     "body"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.string   "namespace"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], :name => "index_active_admin_comments_on_author_type_and_author_id"
  add_index "active_admin_comments", ["namespace"], :name => "index_active_admin_comments_on_namespace"
  add_index "active_admin_comments", ["resource_type", "resource_id"], :name => "index_admin_notes_on_resource_type_and_resource_id"

  create_table "admin_users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "admin_users", ["email"], :name => "index_admin_users_on_email", :unique => true
  add_index "admin_users", ["reset_password_token"], :name => "index_admin_users_on_reset_password_token", :unique => true

  create_table "college_players", :force => true do |t|
    t.string   "full_name"
    t.string   "position"
    t.string   "college"
    t.string   "height"
    t.string   "arm_length"
    t.string   "weight"
    t.string   "hands"
    t.string   "comparison"
    t.string   "strengths"
    t.string   "weakness"
    t.string   "forty_dash"
    t.string   "vert_jump"
    t.string   "broad_jump"
    t.string   "three_yd_cone"
    t.string   "twenty_yd_shuttle"
    t.string   "sixty_yd_shuttle"
    t.string   "draft_round"
    t.string   "bench"
    t.string   "draft_pick"
    t.string   "overview"
    t.string   "espn_overall_rating"
    t.string   "cbs_overall_rating"
    t.string   "espn_position_rating"
    t.string   "cbs_position_rating"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "overall_draft_position"
    t.datetime "created_at",             :null => false
    t.datetime "updated_at",             :null => false
    t.string   "player_type"
    t.string   "player_image"
  end

  create_table "games", :force => true do |t|
    t.string   "opponent"
    t.date     "game_date"
    t.string   "game_time"
    t.string   "status"
    t.string   "location"
    t.string   "result"
    t.string   "tv"
    t.integer  "home_score"
    t.integer  "away_score"
    t.string   "raider_link"
    t.string   "ballers_link"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "news_items", :force => true do |t|
    t.string   "title"
    t.text     "desc"
    t.text     "short_desc"
    t.string   "pub_date"
    t.string   "link"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.boolean  "ignore"
    t.string   "author"
    t.string   "content"
    t.string   "image"
    t.string   "short_url"
  end

  add_index "news_items", ["link"], :name => "index_news_items_on_link", :unique => true

  create_table "player_stats", :force => true do |t|
    t.integer  "player_id"
    t.integer  "year"
    t.integer  "passing_att"
    t.integer  "passing_comp"
    t.float    "passing_comp_pct"
    t.float    "yds_per_att"
    t.string   "passing_yd"
    t.integer  "passing_td"
    t.float    "passing_td_pct"
    t.integer  "passing_int"
    t.float    "passing_int_pct"
    t.integer  "passing_lg"
    t.integer  "sacked"
    t.integer  "sacked_yd_lost"
    t.float    "passing_rtg"
    t.integer  "rushing_att"
    t.string   "rushing_yd"
    t.integer  "rushing_lg"
    t.float    "rushing_avg"
    t.integer  "rushing_td"
    t.integer  "rec"
    t.string   "rec_yd"
    t.float    "rec_yd_avg"
    t.integer  "rec_lg"
    t.integer  "rec_td"
    t.integer  "fg_made_range1"
    t.integer  "fg_att_range1"
    t.integer  "fg_made_range2"
    t.integer  "fg_att_range2"
    t.integer  "fg_made_range3"
    t.integer  "fg_att_range3"
    t.integer  "fg_made_range4"
    t.integer  "fg_att_range4"
    t.integer  "fg_made_range5"
    t.integer  "fg_att_range5"
    t.float    "fg_pct"
    t.string   "fg_totals"
    t.integer  "punt_att"
    t.integer  "punt_blk"
    t.integer  "punt_tbk"
    t.integer  "punt_in20"
    t.float    "punt_avg"
    t.integer  "punt_long"
    t.integer  "punt_returns"
    t.integer  "punt_return_fc"
    t.integer  "punt_return_td"
    t.integer  "punt_return_lg"
    t.float    "punt_return_avg"
    t.integer  "kick_return_lg"
    t.integer  "kick_return_td"
    t.string   "kick_return_yd"
    t.float    "kick_return_avg"
    t.integer  "kick_returns"
    t.float    "sacks"
    t.integer  "total_tackles"
    t.integer  "solo_tackles"
    t.integer  "assists"
    t.integer  "int"
    t.string   "int_yd"
    t.float    "int_yd_avg"
    t.integer  "int_td"
    t.integer  "int_lg"
    t.integer  "fumbles"
    t.integer  "tackles"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
    t.string   "roster_id"
  end

  create_table "players", :force => true do |t|
    t.string   "name"
    t.string   "nickname"
    t.integer  "no"
    t.string   "pos"
    t.string   "height"
    t.integer  "weight"
    t.integer  "age"
    t.string   "exp"
    t.string   "college"
    t.integer  "pos_depth"
    t.string   "last_name"
    t.string   "first_name"
    t.string   "image"
    t.string   "image_thumb"
    t.string   "birthday"
    t.text     "news"
    t.datetime "last_update"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "podcasts", :force => true do |t|
    t.string   "title"
    t.string   "author"
    t.string   "content_url"
    t.string   "duration"
    t.string   "description"
    t.datetime "publish_datetime"
    t.string   "time_since"
    t.string   "pod_id"
    t.string   "pod_short_id"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "positions", :force => true do |t|
    t.string   "player_position"
    t.integer  "roster_id"
    t.integer  "depth_position"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.string   "short_id"
  end

  add_index "positions", ["roster_id", "created_at"], :name => "index_positions_on_roster_id_and_created_at"

  create_table "rosters", :force => true do |t|
    t.string   "full_name"
    t.string   "first_name"
    t.string   "last_name"
    t.integer  "jersey"
    t.string   "roster_position"
    t.string   "height"
    t.integer  "weight"
    t.integer  "age"
    t.string   "experience"
    t.string   "college"
    t.string   "player_image"
    t.string   "player_full_image"
    t.text     "latest_news"
    t.string   "roster_id"
    t.string   "short_id"
    t.datetime "last_update"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "schedules", :force => true do |t|
    t.string   "game_tv"
    t.string   "game_score"
    t.string   "game_key"
    t.string   "status"
    t.integer  "week"
    t.string   "date"
    t.datetime "date_time"
    t.datetime "date_time_est"
    t.string   "day_of_week"
    t.string   "month_of_year"
    t.string   "time"
    t.string   "type"
    t.string   "nfl_type"
    t.boolean  "is_current_or_next_game"
    t.string   "title"
    t.string   "home_team_name"
    t.string   "home_team_short_name"
    t.string   "home_team_abbr"
    t.string   "home_team_id"
    t.string   "home_team_small_helmet"
    t.string   "home_team_large_helmet"
    t.string   "visitor_team_name"
    t.string   "visitor_team_short_name"
    t.string   "visitor_team_abbr"
    t.string   "visitor_team_id"
    t.string   "visitor_team_small_helmet"
    t.string   "visitor_team_large_helmet"
    t.string   "opponent_team_name"
    t.string   "opponent_team_short_name"
    t.string   "game_played_at"
    t.string   "outcome"
    t.integer  "visitor_team_point_total"
    t.integer  "visitor_team_point_q1"
    t.integer  "visitor_team_point_q2"
    t.integer  "visitor_team_point_q3"
    t.integer  "visitor_team_point_q4"
    t.integer  "visitor_team_point_ot"
    t.integer  "home_team_point_total"
    t.integer  "home_team_point_q1"
    t.integer  "home_team_point_q2"
    t.integer  "home_team_point_q3"
    t.integer  "home_team_point_q4"
    t.integer  "home_team_point_ot"
    t.string   "score"
    t.string   "phase"
    t.string   "clock"
    t.string   "is_tie"
    t.string   "winner_team_id"
    t.string   "pre_game_link"
    t.string   "post_game_link"
    t.boolean  "is_bye"
    t.string   "game_type"
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
    t.string   "short_title"
    t.string   "stadium"
  end

  create_table "standings", :force => true do |t|
    t.string   "team_id"
    t.string   "abbr"
    t.string   "display_name"
    t.string   "conference"
    t.string   "division"
    t.integer  "conference_rank"
    t.integer  "division_rank"
    t.integer  "wins"
    t.integer  "losses"
    t.integer  "ties"
    t.float    "pct"
    t.string   "home_record"
    t.string   "road_record"
    t.string   "division_record"
    t.string   "conference_record"
    t.integer  "points_for"
    t.integer  "points_allowed"
    t.integer  "difference"
    t.string   "current_streak"
    t.boolean  "clinched_playoffs"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
    t.integer  "display_order"
  end

  create_table "team_stats", :force => true do |t|
    t.float    "ppg_avg"
    t.integer  "ppg_rank"
    t.float    "ypg_avg"
    t.integer  "ypg_rank"
    t.float    "passing_ypg_avg"
    t.integer  "passing_ypg_rank"
    t.float    "rushing_ypg_avg"
    t.integer  "rushing_ypg_rank"
    t.float    "pts_apg_avg"
    t.integer  "pts_apg_rank"
    t.float    "yds_apg_avg"
    t.integer  "yds_apg_rank"
    t.float    "pass_yds_apg_avg"
    t.integer  "pass_yds_apg_rank"
    t.float    "rush_yds_apg_avg"
    t.integer  "rush_yds_apg_rank"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "teams", :force => true do |t|
    t.string   "division"
    t.string   "name"
    t.string   "wins"
    t.string   "losses"
    t.string   "ties"
    t.float    "win_pct"
    t.string   "home_record"
    t.string   "road_record"
    t.string   "division_record"
    t.string   "conf_record"
    t.integer  "points_for"
    t.integer  "points_allowed"
    t.string   "point_diff"
    t.string   "current_streak"
    t.integer  "division_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

end
