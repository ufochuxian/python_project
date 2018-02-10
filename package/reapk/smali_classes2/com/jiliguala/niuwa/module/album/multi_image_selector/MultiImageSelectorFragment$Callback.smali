.class public interface abstract Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment$Callback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract onCameraShot(Ljava/io/File;)V
.end method

.method public abstract onImageSelected(Ljava/lang/String;)V
.end method

.method public abstract onImageUnselected(Ljava/lang/String;)V
.end method

.method public abstract onSingleImageSelected(Ljava/lang/String;)V
.end method
