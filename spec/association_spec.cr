require "./spec_helper"

describe "Associations" do

  it "connects all of them correctly" do
    actor = ActorBox.create &.name("Billy")
    video = VideoBox.create &.title("The Movie")
    release = ReleaseBox.create &.video_id(video.id)
    performance = PerformanceBox.create &.actor_id(actor.id).video_id(video.id)

    actor.releases!.map(&.title).should contain "The Movie"
  end

  it "connects the follows" do
    me = UserBox.create &.name("Me")
    friend = UserBox.create &.name("Friend")
    follow = FollowBox.create &.following_id(me.id).follower_id(friend.id)

    friend.followings!.map(&.name).should contain "Me"
    me.followers!.map(&.name).should contain "Friend"
  end
end