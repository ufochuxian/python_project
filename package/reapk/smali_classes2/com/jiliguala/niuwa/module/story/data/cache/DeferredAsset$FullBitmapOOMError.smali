.class public Lcom/jiliguala/niuwa/module/story/data/cache/DeferredAsset$FullBitmapOOMError;
.super Lcom/jiliguala/niuwa/module/story/data/cache/DeferredAsset$BitmapOOMError;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/module/story/data/cache/DeferredAsset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FullBitmapOOMError"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jiliguala/niuwa/module/story/data/cache/DeferredAsset;


# direct methods
.method public constructor <init>(Lcom/jiliguala/niuwa/module/story/data/cache/DeferredAsset;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/story/data/cache/DeferredAsset;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "inner"    # Ljava/lang/Throwable;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/story/data/cache/DeferredAsset$FullBitmapOOMError;->this$0:Lcom/jiliguala/niuwa/module/story/data/cache/DeferredAsset;

    .line 104
    invoke-direct {p0, p1, p2, p3}, Lcom/jiliguala/niuwa/module/story/data/cache/DeferredAsset$BitmapOOMError;-><init>(Lcom/jiliguala/niuwa/module/story/data/cache/DeferredAsset;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 105
    return-void
.end method