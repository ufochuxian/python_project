.class public interface abstract Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager$StoryAudioPlaybackListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "StoryAudioPlaybackListener"
.end annotation


# virtual methods
.method public abstract onStoryAudioPlaybackCancelled(Lcom/jiliguala/niuwa/module/story/data/internal/PlayablePage;)V
.end method

.method public abstract onStoryAudioPlaybackComplete(Lcom/jiliguala/niuwa/module/story/data/internal/PlayablePage;)V
.end method

.method public abstract onStoryAudioPlaybackStarted(Lcom/jiliguala/niuwa/module/story/data/internal/PlayablePage;)V
.end method
