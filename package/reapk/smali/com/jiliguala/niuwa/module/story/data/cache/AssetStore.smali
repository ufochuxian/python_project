.class public interface abstract Lcom/jiliguala/niuwa/module/story/data/cache/AssetStore;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract contains(Lcom/jiliguala/niuwa/module/story/data/internal/Asset;)Z
.end method

.method public abstract getBitmap(Lcom/jiliguala/niuwa/module/story/data/internal/Asset;I)Landroid/graphics/Bitmap;
.end method

.method public abstract getBytes(Lcom/jiliguala/niuwa/module/story/data/internal/Asset;)[B
    .annotation build Lorg/b/a/e;
    .end annotation
.end method

.method public abstract getMediaPlayer(Lcom/jiliguala/niuwa/module/story/data/internal/Asset;)Landroid/media/MediaPlayer;
    .annotation build Lorg/b/a/e;
    .end annotation
.end method

.method public abstract getStatistics()Lcom/jiliguala/niuwa/module/story/data/cache/CacheStatistics;
.end method

.method public abstract purge()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract putBitmap(Lcom/jiliguala/niuwa/module/story/data/internal/Asset;Landroid/graphics/Bitmap;)V
.end method

.method public abstract putBytes(Lcom/jiliguala/niuwa/module/story/data/internal/Asset;[B)V
.end method

.method public abstract remove(Lcom/jiliguala/niuwa/module/story/data/internal/Asset;)V
.end method
