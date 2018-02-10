.class public abstract Lcom/jiliguala/niuwa/module/story/data/cache/DeferredAsset$BitmapOOMError;
.super Ljava/lang/RuntimeException;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/module/story/data/cache/DeferredAsset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "BitmapOOMError"
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
    .line 97
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/story/data/cache/DeferredAsset$BitmapOOMError;->this$0:Lcom/jiliguala/niuwa/module/story/data/cache/DeferredAsset;

    .line 98
    invoke-direct {p0, p2, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 99
    return-void
.end method
